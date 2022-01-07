; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_save_req.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_save_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.ahash_request_priv*, %struct.TYPE_2__, i32 }
%struct.ahash_request_priv = type { i32, i64, %struct.ahash_request*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ahash_request*, i32 }
%struct.crypto_ahash = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @ahash_save_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_save_req(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahash_request_priv*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %6, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %13 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %15 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @ahash_align_buffer_size(i32 %16, i64 %17)
  %19 = add i64 32, %18
  %20 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call %struct.ahash_request_priv* @kmalloc(i64 %19, i32 %32)
  store %struct.ahash_request_priv* %33, %struct.ahash_request_priv** %9, align 8
  %34 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %35 = icmp ne %struct.ahash_request_priv* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %83

39:                                               ; preds = %31
  %40 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %41 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %44 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %46 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %50 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %52 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.ahash_request*, %struct.ahash_request** %53, align 8
  %55 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %56 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %55, i32 0, i32 2
  store %struct.ahash_request* %54, %struct.ahash_request** %56, align 8
  %57 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %62 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %64 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  %69 = call i32 @PTR_ALIGN(i32* %66, i64 %68)
  %70 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %71 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %74 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %77 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %78 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store %struct.ahash_request* %76, %struct.ahash_request** %79, align 8
  %80 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %81 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %82 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %81, i32 0, i32 0
  store %struct.ahash_request_priv* %80, %struct.ahash_request_priv** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %39, %36
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request_priv* @kmalloc(i64, i32) #1

declare dso_local i64 @ahash_align_buffer_size(i32, i64) #1

declare dso_local i32 @PTR_ALIGN(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
