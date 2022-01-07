; ModuleID = '/home/carl/AnghaBench/htop/extr_Process.c_Process_outputRate.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Process.c_Process_outputRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRT_colors = common dso_local global i32* null, align 8
@LARGE_NUMBER = common dso_local global i64 0, align 8
@PROCESS_MEGABYTES = common dso_local global i64 0, align 8
@PROCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"    no perm \00", align 1
@PROCESS_SHADOW = common dso_local global i64 0, align 8
@ONE_K = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%7.2f B/s \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%7.2f K/s \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%7.2f M/s \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%7.2f G/s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Process_outputRate(i32* %0, i8* %1, i32 %2, double %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** @CRT_colors, align 8
  %20 = load i64, i64* @LARGE_NUMBER, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** @CRT_colors, align 8
  %24 = load i64, i64* @PROCESS_MEGABYTES, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** @CRT_colors, align 8
  %28 = load i64, i64* @PROCESS, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %5
  %34 = load i32*, i32** @CRT_colors, align 8
  %35 = load i64, i64* @PROCESS, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** @CRT_colors, align 8
  %39 = load i64, i64* @PROCESS, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %33, %5
  %43 = load double, double* %9, align 8
  %44 = fcmp oeq double %43, -1.000000e+00
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** @CRT_colors, align 8
  %51 = load i64, i64* @PROCESS_SHADOW, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @RichString_appendn(i32* %49, i32 %53, i8* %54, i32 %55)
  br label %130

57:                                               ; preds = %42
  %58 = load double, double* %9, align 8
  %59 = load double, double* @ONE_K, align 8
  %60 = fcmp olt double %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load double, double* %9, align 8
  %65 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @RichString_appendn(i32* %66, i32 %67, i8* %68, i32 %69)
  br label %129

71:                                               ; preds = %57
  %72 = load double, double* %9, align 8
  %73 = load double, double* @ONE_K, align 8
  %74 = load double, double* @ONE_K, align 8
  %75 = fmul double %73, %74
  %76 = fcmp olt double %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load double, double* %9, align 8
  %81 = load double, double* @ONE_K, align 8
  %82 = fdiv double %80, %81
  %83 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @RichString_appendn(i32* %84, i32 %85, i8* %86, i32 %87)
  br label %128

89:                                               ; preds = %71
  %90 = load double, double* %9, align 8
  %91 = load double, double* @ONE_K, align 8
  %92 = load double, double* @ONE_K, align 8
  %93 = fmul double %91, %92
  %94 = load double, double* @ONE_K, align 8
  %95 = fmul double %93, %94
  %96 = fcmp olt double %90, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load double, double* %9, align 8
  %101 = load double, double* @ONE_K, align 8
  %102 = fdiv double %100, %101
  %103 = load double, double* @ONE_K, align 8
  %104 = fdiv double %102, %103
  %105 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @RichString_appendn(i32* %106, i32 %107, i8* %108, i32 %109)
  br label %127

111:                                              ; preds = %89
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load double, double* %9, align 8
  %115 = load double, double* @ONE_K, align 8
  %116 = fdiv double %114, %115
  %117 = load double, double* @ONE_K, align 8
  %118 = fdiv double %116, %117
  %119 = load double, double* @ONE_K, align 8
  %120 = fdiv double %118, %119
  %121 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %112, i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), double %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @RichString_appendn(i32* %122, i32 %123, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %111, %97
  br label %128

128:                                              ; preds = %127, %77
  br label %129

129:                                              ; preds = %128, %61
  br label %130

130:                                              ; preds = %129, %45
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @RichString_appendn(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
