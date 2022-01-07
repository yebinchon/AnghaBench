; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_context_preallocated_size.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_context_preallocated_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECP256K1_FLAGS_TYPE_MASK = common dso_local global i32 0, align 4
@SECP256K1_FLAGS_TYPE_CONTEXT = common dso_local global i32 0, align 4
@default_illegal_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Invalid flags\00", align 1
@SECP256K1_FLAGS_BIT_CONTEXT_SIGN = common dso_local global i32 0, align 4
@SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE = common dso_local global i64 0, align 8
@SECP256K1_FLAGS_BIT_CONTEXT_VERIFY = common dso_local global i32 0, align 4
@SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @secp256k1_context_preallocated_size(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i64 @ROUND_TO_ALIGN(i32 4)
  store i64 %5, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SECP256K1_FLAGS_TYPE_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @SECP256K1_FLAGS_TYPE_CONTEXT, align 4
  %10 = icmp ne i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @EXPECT(i32 %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @secp256k1_callback_call(i32* @default_illegal_callback, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SECP256K1_FLAGS_BIT_CONTEXT_SIGN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* @SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SECP256K1_FLAGS_BIT_CONTEXT_VERIFY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* @SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i64 @ROUND_TO_ALIGN(i32) #1

declare dso_local i64 @EXPECT(i32, i32) #1

declare dso_local i32 @secp256k1_callback_call(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
