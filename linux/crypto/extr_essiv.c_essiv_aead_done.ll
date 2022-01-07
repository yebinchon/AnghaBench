; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_aead_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_aead_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32 }
%struct.essiv_aead_request_ctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @essiv_aead_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @essiv_aead_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.essiv_aead_request_ctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %7, i32 0, i32 0
  %9 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  store %struct.aead_request* %9, %struct.aead_request** %5, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %11 = call %struct.essiv_aead_request_ctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.essiv_aead_request_ctx* %11, %struct.essiv_aead_request_ctx** %6, align 8
  %12 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kfree(i64 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @aead_request_complete(%struct.aead_request* %22, i32 %23)
  ret void
}

declare dso_local %struct.essiv_aead_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
