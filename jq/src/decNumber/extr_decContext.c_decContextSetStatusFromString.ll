; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decContext.c_decContextSetStatusFromString.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decContext.c_decContextSetStatusFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEC_Condition_CS = common dso_local global i32 0, align 4
@DEC_Conversion_syntax = common dso_local global i32 0, align 4
@DEC_Condition_DZ = common dso_local global i32 0, align 4
@DEC_Division_by_zero = common dso_local global i32 0, align 4
@DEC_Condition_DI = common dso_local global i32 0, align 4
@DEC_Division_impossible = common dso_local global i32 0, align 4
@DEC_Condition_DU = common dso_local global i32 0, align 4
@DEC_Division_undefined = common dso_local global i32 0, align 4
@DEC_Condition_IE = common dso_local global i32 0, align 4
@DEC_Inexact = common dso_local global i32 0, align 4
@DEC_Condition_IS = common dso_local global i32 0, align 4
@DEC_Insufficient_storage = common dso_local global i32 0, align 4
@DEC_Condition_IC = common dso_local global i32 0, align 4
@DEC_Invalid_context = common dso_local global i32 0, align 4
@DEC_Condition_IO = common dso_local global i32 0, align 4
@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DEC_Condition_OV = common dso_local global i32 0, align 4
@DEC_Overflow = common dso_local global i32 0, align 4
@DEC_Condition_PA = common dso_local global i32 0, align 4
@DEC_Clamped = common dso_local global i32 0, align 4
@DEC_Condition_RO = common dso_local global i32 0, align 4
@DEC_Rounded = common dso_local global i32 0, align 4
@DEC_Condition_SU = common dso_local global i32 0, align 4
@DEC_Subnormal = common dso_local global i32 0, align 4
@DEC_Condition_UN = common dso_local global i32 0, align 4
@DEC_Underflow = common dso_local global i32 0, align 4
@DEC_Condition_ZE = common dso_local global i32 0, align 4
@DEC_Condition_LD = common dso_local global i32 0, align 4
@DEC_Lost_digits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decContextSetStatusFromString(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @DEC_Condition_CS, align 4
  %8 = call i64 @strcmp(i8* %6, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @DEC_Conversion_syntax, align 4
  %13 = call i32* @decContextSetStatus(i32* %11, i32 %12)
  store i32* %13, i32** %3, align 8
  br label %130

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @DEC_Condition_DZ, align 4
  %17 = call i64 @strcmp(i8* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @DEC_Division_by_zero, align 4
  %22 = call i32* @decContextSetStatus(i32* %20, i32 %21)
  store i32* %22, i32** %3, align 8
  br label %130

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @DEC_Condition_DI, align 4
  %26 = call i64 @strcmp(i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @DEC_Division_impossible, align 4
  %31 = call i32* @decContextSetStatus(i32* %29, i32 %30)
  store i32* %31, i32** %3, align 8
  br label %130

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @DEC_Condition_DU, align 4
  %35 = call i64 @strcmp(i8* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @DEC_Division_undefined, align 4
  %40 = call i32* @decContextSetStatus(i32* %38, i32 %39)
  store i32* %40, i32** %3, align 8
  br label %130

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @DEC_Condition_IE, align 4
  %44 = call i64 @strcmp(i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @DEC_Inexact, align 4
  %49 = call i32* @decContextSetStatus(i32* %47, i32 %48)
  store i32* %49, i32** %3, align 8
  br label %130

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @DEC_Condition_IS, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @DEC_Insufficient_storage, align 4
  %58 = call i32* @decContextSetStatus(i32* %56, i32 %57)
  store i32* %58, i32** %3, align 8
  br label %130

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @DEC_Condition_IC, align 4
  %62 = call i64 @strcmp(i8* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @DEC_Invalid_context, align 4
  %67 = call i32* @decContextSetStatus(i32* %65, i32 %66)
  store i32* %67, i32** %3, align 8
  br label %130

68:                                               ; preds = %59
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @DEC_Condition_IO, align 4
  %71 = call i64 @strcmp(i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @DEC_Invalid_operation, align 4
  %76 = call i32* @decContextSetStatus(i32* %74, i32 %75)
  store i32* %76, i32** %3, align 8
  br label %130

77:                                               ; preds = %68
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @DEC_Condition_OV, align 4
  %80 = call i64 @strcmp(i8* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @DEC_Overflow, align 4
  %85 = call i32* @decContextSetStatus(i32* %83, i32 %84)
  store i32* %85, i32** %3, align 8
  br label %130

86:                                               ; preds = %77
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* @DEC_Condition_PA, align 4
  %89 = call i64 @strcmp(i8* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* @DEC_Clamped, align 4
  %94 = call i32* @decContextSetStatus(i32* %92, i32 %93)
  store i32* %94, i32** %3, align 8
  br label %130

95:                                               ; preds = %86
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* @DEC_Condition_RO, align 4
  %98 = call i64 @strcmp(i8* %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @DEC_Rounded, align 4
  %103 = call i32* @decContextSetStatus(i32* %101, i32 %102)
  store i32* %103, i32** %3, align 8
  br label %130

104:                                              ; preds = %95
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* @DEC_Condition_SU, align 4
  %107 = call i64 @strcmp(i8* %105, i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @DEC_Subnormal, align 4
  %112 = call i32* @decContextSetStatus(i32* %110, i32 %111)
  store i32* %112, i32** %3, align 8
  br label %130

113:                                              ; preds = %104
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* @DEC_Condition_UN, align 4
  %116 = call i64 @strcmp(i8* %114, i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @DEC_Underflow, align 4
  %121 = call i32* @decContextSetStatus(i32* %119, i32 %120)
  store i32* %121, i32** %3, align 8
  br label %130

122:                                              ; preds = %113
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* @DEC_Condition_ZE, align 4
  %125 = call i64 @strcmp(i8* %123, i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32*, i32** %4, align 8
  store i32* %128, i32** %3, align 8
  br label %130

129:                                              ; preds = %122
  store i32* null, i32** %3, align 8
  br label %130

130:                                              ; preds = %129, %127, %118, %109, %100, %91, %82, %73, %64, %55, %46, %37, %28, %19, %10
  %131 = load i32*, i32** %3, align 8
  ret i32* %131
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @decContextSetStatus(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
