; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decDoubleClass.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decDoubleClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEC_CLASS_QNAN = common dso_local global i32 0, align 4
@DEC_CLASS_SNAN = common dso_local global i32 0, align 4
@DEC_CLASS_NEG_INF = common dso_local global i32 0, align 4
@DEC_CLASS_POS_INF = common dso_local global i32 0, align 4
@DEC_CLASS_NEG_ZERO = common dso_local global i32 0, align 4
@DEC_CLASS_POS_ZERO = common dso_local global i32 0, align 4
@DECEMIN = common dso_local global i64 0, align 8
@DEC_CLASS_NEG_NORMAL = common dso_local global i32 0, align 4
@DEC_CLASS_POS_NORMAL = common dso_local global i32 0, align 4
@DEC_CLASS_NEG_SUBNORMAL = common dso_local global i32 0, align 4
@DEC_CLASS_POS_SUBNORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decFloatClass(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @DFISSPECIAL(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @DFISQNAN(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @DEC_CLASS_QNAN, align 4
  store i32 %13, i32* %2, align 4
  br label %66

14:                                               ; preds = %8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @DFISSNAN(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @DEC_CLASS_SNAN, align 4
  store i32 %19, i32* %2, align 4
  br label %66

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @DFISSIGNED(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @DEC_CLASS_NEG_INF, align 4
  store i32 %25, i32* %2, align 4
  br label %66

26:                                               ; preds = %20
  %27 = load i32, i32* @DEC_CLASS_POS_INF, align 4
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @DFISZERO(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @DFISSIGNED(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @DEC_CLASS_NEG_ZERO, align 4
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %32
  %39 = load i32, i32* @DEC_CLASS_POS_ZERO, align 4
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %28
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @GETEXPUN(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @decFloatDigits(i32* %43)
  %45 = add nsw i64 %42, %44
  %46 = sub nsw i64 %45, 1
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @DECEMIN, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @DFISSIGNED(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @DEC_CLASS_NEG_NORMAL, align 4
  store i32 %55, i32* %2, align 4
  br label %66

56:                                               ; preds = %50
  %57 = load i32, i32* @DEC_CLASS_POS_NORMAL, align 4
  store i32 %57, i32* %2, align 4
  br label %66

58:                                               ; preds = %40
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @DFISSIGNED(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @DEC_CLASS_NEG_SUBNORMAL, align 4
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @DEC_CLASS_POS_SUBNORMAL, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %62, %56, %54, %38, %36, %26, %24, %18, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @DFISSPECIAL(i32*) #1

declare dso_local i64 @DFISQNAN(i32*) #1

declare dso_local i64 @DFISSNAN(i32*) #1

declare dso_local i64 @DFISSIGNED(i32*) #1

declare dso_local i64 @DFISZERO(i32*) #1

declare dso_local i64 @GETEXPUN(i32*) #1

declare dso_local i64 @decFloatDigits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
