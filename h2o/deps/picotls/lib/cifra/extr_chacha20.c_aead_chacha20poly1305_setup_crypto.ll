; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_aead_chacha20poly1305_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_aead_chacha20poly1305_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha20poly1305_context_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32 }

@chacha20poly1305_dispose_crypto = common dso_local global i32 0, align 4
@chacha20poly1305_init = common dso_local global i32* null, align 8
@chacha20poly1305_encrypt_update = common dso_local global i32* null, align 8
@chacha20poly1305_encrypt_final = common dso_local global i32* null, align 8
@chacha20poly1305_decrypt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @aead_chacha20poly1305_setup_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_chacha20poly1305_setup_crypto(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.chacha20poly1305_context_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.chacha20poly1305_context_t*
  store %struct.chacha20poly1305_context_t* %9, %struct.chacha20poly1305_context_t** %7, align 8
  %10 = load i32, i32* @chacha20poly1305_dispose_crypto, align 4
  %11 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %12 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load i32*, i32** @chacha20poly1305_init, align 8
  %18 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %19 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32* %17, i32** %20, align 8
  %21 = load i32*, i32** @chacha20poly1305_encrypt_update, align 8
  %22 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %23 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32* %21, i32** %24, align 8
  %25 = load i32*, i32** @chacha20poly1305_encrypt_final, align 8
  %26 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %27 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %30 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %46

32:                                               ; preds = %3
  %33 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %34 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %37 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %40 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load i32*, i32** @chacha20poly1305_decrypt, align 8
  %43 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %44 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  br label %46

46:                                               ; preds = %32, %16
  %47 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %7, align 8
  %48 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @memcpy(i32 %49, i8* %50, i32 4)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
