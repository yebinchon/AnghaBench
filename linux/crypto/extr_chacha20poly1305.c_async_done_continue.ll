; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_async_done_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_async_done_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.chachapoly_req_ctx = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32, i32 (%struct.aead_request*)*)* @async_done_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_done_continue(%struct.aead_request* %0, i32 %1, i32 (%struct.aead_request*)* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.aead_request*)*, align 8
  %7 = alloca %struct.chachapoly_req_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.aead_request*)* %2, i32 (%struct.aead_request*)** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %12 = call %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.chachapoly_req_ctx* %12, %struct.chachapoly_req_ctx** %7, align 8
  %13 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32 (%struct.aead_request*)*, i32 (%struct.aead_request*)** %6, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %21 = call i32 %19(%struct.aead_request* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %10, %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EINPROGRESS, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @aead_request_complete(%struct.aead_request* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %27, %22
  ret void
}

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
