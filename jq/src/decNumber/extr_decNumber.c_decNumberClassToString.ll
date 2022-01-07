; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberClassToString.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberClassToString.c"
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
define dso_local i8* @decNumberClassToString(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @DEC_CLASS_POS_NORMAL, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** @DEC_ClassString_PN, align 8
  store i8* %8, i8** %2, align 8
  br label %65

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DEC_CLASS_NEG_NORMAL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i8*, i8** @DEC_ClassString_NN, align 8
  store i8* %14, i8** %2, align 8
  br label %65

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DEC_CLASS_POS_ZERO, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8*, i8** @DEC_ClassString_PZ, align 8
  store i8* %20, i8** %2, align 8
  br label %65

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @DEC_CLASS_NEG_ZERO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** @DEC_ClassString_NZ, align 8
  store i8* %26, i8** %2, align 8
  br label %65

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DEC_CLASS_POS_SUBNORMAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** @DEC_ClassString_PS, align 8
  store i8* %32, i8** %2, align 8
  br label %65

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DEC_CLASS_NEG_SUBNORMAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** @DEC_ClassString_NS, align 8
  store i8* %38, i8** %2, align 8
  br label %65

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @DEC_CLASS_POS_INF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8*, i8** @DEC_ClassString_PI, align 8
  store i8* %44, i8** %2, align 8
  br label %65

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @DEC_CLASS_NEG_INF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i8*, i8** @DEC_ClassString_NI, align 8
  store i8* %50, i8** %2, align 8
  br label %65

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @DEC_CLASS_QNAN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i8*, i8** @DEC_ClassString_QN, align 8
  store i8* %56, i8** %2, align 8
  br label %65

57:                                               ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @DEC_CLASS_SNAN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8*, i8** @DEC_ClassString_SN, align 8
  store i8* %62, i8** %2, align 8
  br label %65

63:                                               ; preds = %57
  %64 = load i8*, i8** @DEC_ClassString_UN, align 8
  store i8* %64, i8** %2, align 8
  br label %65

65:                                               ; preds = %63, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
