; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chachapoly_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chachapoly_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64 }
%struct.chachapoly_req_ctx = type { i32, i64 }

@POLY1305_DIGEST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @chachapoly_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.chachapoly_req_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %4 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %5 = call %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request* %4)
  store %struct.chachapoly_req_ctx* %5, %struct.chachapoly_req_ctx** %3, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %7 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @POLY1305_DIGEST_SIZE, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %14 = call i32 @aead_request_flags(%struct.aead_request* %13)
  %15 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %18 = call i32 @poly_genkey(%struct.aead_request* %17)
  ret i32 %18
}

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @poly_genkey(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
