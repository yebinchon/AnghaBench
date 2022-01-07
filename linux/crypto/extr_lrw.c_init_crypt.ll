; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lrw.c_init_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lrw.c_init_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.priv = type { i32, i32 }
%struct.rctx = type { i32, %struct.skcipher_request }

@crypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skcipher_request*)* @init_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.rctx*, align 8
  %5 = alloca %struct.skcipher_request*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %6 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %7 = call i32 @crypto_skcipher_reqtfm(%struct.skcipher_request* %6)
  %8 = call %struct.priv* @crypto_skcipher_ctx(i32 %7)
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %9)
  store %struct.rctx* %10, %struct.rctx** %4, align 8
  %11 = load %struct.rctx*, %struct.rctx** %4, align 8
  %12 = getelementptr inbounds %struct.rctx, %struct.rctx* %11, i32 0, i32 1
  store %struct.skcipher_request* %12, %struct.skcipher_request** %5, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %13, i32 %16)
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @crypt_done, align 4
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %25 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %18, i32 %22, i32 %23, %struct.skcipher_request* %24)
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %28 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %31 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %34 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %37 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.rctx*, %struct.rctx** %4, align 8
  %41 = getelementptr inbounds %struct.rctx, %struct.rctx* %40, i32 0, i32 0
  %42 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %43 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32* %41, i32 %44, i32 4)
  %46 = load %struct.rctx*, %struct.rctx** %4, align 8
  %47 = getelementptr inbounds %struct.rctx, %struct.rctx* %46, i32 0, i32 0
  %48 = load %struct.priv*, %struct.priv** %3, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gf128mul_64k_bbe(i32* %47, i32 %50)
  ret void
}

declare dso_local %struct.priv* @crypto_skcipher_ctx(i32) #1

declare dso_local i32 @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @gf128mul_64k_bbe(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
