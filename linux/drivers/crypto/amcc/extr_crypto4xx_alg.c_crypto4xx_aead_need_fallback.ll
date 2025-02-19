; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_aead_need_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_aead_need_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32* }
%struct.crypto_aead = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32, i32, i32)* @crypto4xx_aead_need_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_aead_need_fallback(%struct.aead_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_aead*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %12 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %11)
  store %struct.crypto_aead* %12, %struct.crypto_aead** %10, align 8
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %14 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %55

24:                                               ; preds = %19
  %25 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %32 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 1020
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  store i32 1, i32* %5, align 4
  br label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %48 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %55

54:                                               ; preds = %46, %39, %36
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53, %35, %23, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
