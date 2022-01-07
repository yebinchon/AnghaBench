; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_tail_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_tail_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64 }
%struct.chachapoly_req_ctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @poly_tail_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly_tail_continue(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.chachapoly_req_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %5 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %6 = call %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request* %5)
  store %struct.chachapoly_req_ctx* %6, %struct.chachapoly_req_ctx** %4, align 8
  %7 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %16 = call i32 @poly_copy_tag(%struct.aead_request* %15)
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %19 = call i32 @chacha_decrypt(%struct.aead_request* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @poly_copy_tag(%struct.aead_request*) #1

declare dso_local i32 @chacha_decrypt(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
