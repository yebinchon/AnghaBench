; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xts.c_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xts.c_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.rctx = type { %struct.skcipher_request }

@encrypt_done = common dso_local global i32 0, align 4
@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.rctx*, align 8
  %5 = alloca %struct.skcipher_request*, align 8
  %6 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %7 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %8 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %7)
  store %struct.rctx* %8, %struct.rctx** %4, align 8
  %9 = load %struct.rctx*, %struct.rctx** %4, align 8
  %10 = getelementptr inbounds %struct.rctx, %struct.rctx* %9, i32 0, i32 0
  store %struct.skcipher_request* %10, %struct.skcipher_request** %5, align 8
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %12 = load i32, i32* @encrypt_done, align 4
  %13 = call i64 @init_crypt(%struct.skcipher_request* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %18 = call i64 @xor_tweak_pre(%struct.skcipher_request* %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %32

21:                                               ; preds = %16
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %23 = call i64 @crypto_skcipher_encrypt(%struct.skcipher_request* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %30

26:                                               ; preds = %21
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %28 = call i32 @xor_tweak_post(%struct.skcipher_request* %27, i32 1)
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i64 [ %23, %25 ], [ %29, %26 ]
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i64 [ %18, %20 ], [ %31, %30 ]
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi i64 [ %13, %15 ], [ %33, %32 ]
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %41 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %44 = srem i32 %42, %43
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39, %34
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %53 = call i32 @cts_final(%struct.skcipher_request* %52, i64 (%struct.skcipher_request*)* @crypto_skcipher_encrypt)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %49
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i64 @init_crypt(%struct.skcipher_request*, i32) #1

declare dso_local i64 @xor_tweak_pre(%struct.skcipher_request*, i32) #1

declare dso_local i64 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @xor_tweak_post(%struct.skcipher_request*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cts_final(%struct.skcipher_request*, i64 (%struct.skcipher_request*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
