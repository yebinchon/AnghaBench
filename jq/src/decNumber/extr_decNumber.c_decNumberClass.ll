; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberClass.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEC_CLASS_QNAN = common dso_local global i32 0, align 4
@DEC_CLASS_SNAN = common dso_local global i32 0, align 4
@DEC_CLASS_NEG_INF = common dso_local global i32 0, align 4
@DEC_CLASS_POS_INF = common dso_local global i32 0, align 4
@DEC_CLASS_NEG_NORMAL = common dso_local global i32 0, align 4
@DEC_CLASS_POS_NORMAL = common dso_local global i32 0, align 4
@DEC_CLASS_NEG_ZERO = common dso_local global i32 0, align 4
@DEC_CLASS_POS_ZERO = common dso_local global i32 0, align 4
@DEC_CLASS_NEG_SUBNORMAL = common dso_local global i32 0, align 4
@DEC_CLASS_POS_SUBNORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decNumberClass(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @decNumberIsSpecial(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @decNumberIsQNaN(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @DEC_CLASS_QNAN, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @decNumberIsSNaN(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @DEC_CLASS_SNAN, align 4
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %15
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @decNumberIsNegative(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @DEC_CLASS_NEG_INF, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %21
  %28 = load i32, i32* @DEC_CLASS_POS_INF, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @decNumberIsNormal(i32* %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @decNumberIsNegative(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @DEC_CLASS_NEG_NORMAL, align 4
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %34
  %41 = load i32, i32* @DEC_CLASS_POS_NORMAL, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %29
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @decNumberIsZero(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @decNumberIsNegative(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @DEC_CLASS_NEG_ZERO, align 4
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* @DEC_CLASS_POS_ZERO, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %42
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @decNumberIsNegative(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @DEC_CLASS_NEG_SUBNORMAL, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @DEC_CLASS_POS_SUBNORMAL, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %52, %50, %40, %38, %27, %25, %19, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @decNumberIsSpecial(i32*) #1

declare dso_local i64 @decNumberIsQNaN(i32*) #1

declare dso_local i64 @decNumberIsSNaN(i32*) #1

declare dso_local i64 @decNumberIsNegative(i32*) #1

declare dso_local i64 @decNumberIsNormal(i32*, i32*) #1

declare dso_local i64 @decNumberIsZero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
