; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lrw.c_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lrw.c_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.rctx = type { %struct.skcipher_request }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.rctx*, align 8
  %4 = alloca %struct.skcipher_request*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %5 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %6 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %5)
  store %struct.rctx* %6, %struct.rctx** %3, align 8
  %7 = load %struct.rctx*, %struct.rctx** %3, align 8
  %8 = getelementptr inbounds %struct.rctx, %struct.rctx* %7, i32 0, i32 0
  store %struct.skcipher_request* %8, %struct.skcipher_request** %4, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = call i32 @init_crypt(%struct.skcipher_request* %9)
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %12 = call i64 @xor_tweak_pre(%struct.skcipher_request* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %17 = call i64 @crypto_skcipher_decrypt(%struct.skcipher_request* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %24

20:                                               ; preds = %15
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %22 = call i32 @xor_tweak_post(%struct.skcipher_request* %21)
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i64 [ %17, %19 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i64 [ %12, %14 ], [ %25, %24 ]
  %28 = trunc i64 %27 to i32
  ret i32 %28
}

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @init_crypt(%struct.skcipher_request*) #1

declare dso_local i64 @xor_tweak_pre(%struct.skcipher_request*) #1

declare dso_local i64 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @xor_tweak_post(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
