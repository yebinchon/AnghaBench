; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_aead_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_aead_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.crypto4xx_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.crypto4xx_ctx*, i32)* @crypto4xx_aead_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_aead_fallback(%struct.aead_request* %0, %struct.crypto4xx_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.crypto4xx_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_request*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.crypto4xx_ctx* %1, %struct.crypto4xx_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %9 = call %struct.aead_request* @aead_request_ctx(%struct.aead_request* %8)
  store %struct.aead_request* %9, %struct.aead_request** %7, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %11 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @aead_request_set_tfm(%struct.aead_request* %10, i32 %14)
  %16 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @aead_request_set_callback(%struct.aead_request* %16, i32 %20, i32 %24, i32 %28)
  %30 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %31 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %32 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %38 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @aead_request_set_crypt(%struct.aead_request* %30, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %45 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @aead_request_set_ad(%struct.aead_request* %44, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %53 = call i32 @crypto_aead_decrypt(%struct.aead_request* %52)
  br label %57

54:                                               ; preds = %3
  %55 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %56 = call i32 @crypto_aead_encrypt(%struct.aead_request* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  ret i32 %58
}

declare dso_local %struct.aead_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
