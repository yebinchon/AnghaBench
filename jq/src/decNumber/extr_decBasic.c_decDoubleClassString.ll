; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decDoubleClassString.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decDoubleClassString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEC_CLASS_POS_NORMAL = common dso_local global i32 0, align 4
@DEC_ClassString_PN = common dso_local global i8* null, align 8
@DEC_CLASS_NEG_NORMAL = common dso_local global i32 0, align 4
@DEC_ClassString_NN = common dso_local global i8* null, align 8
@DEC_CLASS_POS_ZERO = common dso_local global i32 0, align 4
@DEC_ClassString_PZ = common dso_local global i8* null, align 8
@DEC_CLASS_NEG_ZERO = common dso_local global i32 0, align 4
@DEC_ClassString_NZ = common dso_local global i8* null, align 8
@DEC_CLASS_POS_SUBNORMAL = common dso_local global i32 0, align 4
@DEC_ClassString_PS = common dso_local global i8* null, align 8
@DEC_CLASS_NEG_SUBNORMAL = common dso_local global i32 0, align 4
@DEC_ClassString_NS = common dso_local global i8* null, align 8
@DEC_CLASS_POS_INF = common dso_local global i32 0, align 4
@DEC_ClassString_PI = common dso_local global i8* null, align 8
@DEC_CLASS_NEG_INF = common dso_local global i32 0, align 4
@DEC_ClassString_NI = common dso_local global i8* null, align 8
@DEC_CLASS_QNAN = common dso_local global i32 0, align 4
@DEC_ClassString_QN = common dso_local global i8* null, align 8
@DEC_CLASS_SNAN = common dso_local global i32 0, align 4
@DEC_ClassString_SN = common dso_local global i8* null, align 8
@DEC_ClassString_UN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @decFloatClassString(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @decFloatClass(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DEC_CLASS_POS_NORMAL, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** @DEC_ClassString_PN, align 8
  store i8* %11, i8** %2, align 8
  br label %68

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DEC_CLASS_NEG_NORMAL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i8*, i8** @DEC_ClassString_NN, align 8
  store i8* %17, i8** %2, align 8
  br label %68

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DEC_CLASS_POS_ZERO, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8*, i8** @DEC_ClassString_PZ, align 8
  store i8* %23, i8** %2, align 8
  br label %68

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DEC_CLASS_NEG_ZERO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** @DEC_ClassString_NZ, align 8
  store i8* %29, i8** %2, align 8
  br label %68

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DEC_CLASS_POS_SUBNORMAL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** @DEC_ClassString_PS, align 8
  store i8* %35, i8** %2, align 8
  br label %68

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DEC_CLASS_NEG_SUBNORMAL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** @DEC_ClassString_NS, align 8
  store i8* %41, i8** %2, align 8
  br label %68

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DEC_CLASS_POS_INF, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** @DEC_ClassString_PI, align 8
  store i8* %47, i8** %2, align 8
  br label %68

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DEC_CLASS_NEG_INF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i8*, i8** @DEC_ClassString_NI, align 8
  store i8* %53, i8** %2, align 8
  br label %68

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @DEC_CLASS_QNAN, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** @DEC_ClassString_QN, align 8
  store i8* %59, i8** %2, align 8
  br label %68

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @DEC_CLASS_SNAN, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8*, i8** @DEC_ClassString_SN, align 8
  store i8* %65, i8** %2, align 8
  br label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** @DEC_ClassString_UN, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %66, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i32 @decFloatClass(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
