; ModuleID = '/home/carl/AnghaBench/htop/extr_Process.c_Process_humanNumber.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Process.c_Process_humanNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRT_colors = common dso_local global i32* null, align 8
@LARGE_NUMBER = common dso_local global i64 0, align 8
@PROCESS_MEGABYTES = common dso_local global i64 0, align 8
@PROCESS = common dso_local global i64 0, align 8
@ONE_DECIMAL_M = common dso_local global i32 0, align 4
@ONE_DECIMAL_G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%4luT \00", align 1
@ONE_G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%4.1lfT \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%4luG \00", align 1
@ONE_M = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%4.1lfG \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%4luM \00", align 1
@ONE_K = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"%2lu\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%03lu \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%5lu \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Process_humanNumber(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [11 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** @CRT_colors, align 8
  %13 = load i64, i64* @LARGE_NUMBER, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** @CRT_colors, align 8
  %17 = load i64, i64* @PROCESS_MEGABYTES, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32*, i32** @CRT_colors, align 8
  %21 = load i64, i64* @PROCESS, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %3
  %27 = load i32*, i32** @CRT_colors, align 8
  %28 = load i64, i64* @PROCESS, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** @CRT_colors, align 8
  %32 = load i64, i64* @PROCESS, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %26, %3
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @ONE_DECIMAL_M, align 4
  %38 = mul nsw i32 10, %37
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %110

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @ONE_DECIMAL_G, align 4
  %44 = mul nsw i32 100, %43
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @ONE_G, align 8
  %51 = udiv i64 %49, %50
  %52 = call i32 @snprintf(i8* %48, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @RichString_appendn(i32* %53, i32 %54, i8* %55, i32 %56)
  br label %158

58:                                               ; preds = %41
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @ONE_DECIMAL_M, align 4
  %61 = mul nsw i32 1000, %60
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %66 = load i64, i64* %5, align 8
  %67 = uitofp i64 %66 to double
  %68 = load i64, i64* @ONE_G, align 8
  %69 = uitofp i64 %68 to double
  %70 = fdiv double %67, %69
  %71 = fptoui double %70 to i64
  %72 = call i32 @snprintf(i8* %65, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @RichString_appendn(i32* %73, i32 %74, i8* %75, i32 %76)
  br label %158

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %5, align 8
  %81 = load i32, i32* @ONE_DECIMAL_M, align 4
  %82 = mul nsw i32 100, %81
  %83 = sext i32 %82 to i64
  %84 = icmp uge i64 %80, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @ONE_M, align 8
  %89 = udiv i64 %87, %88
  %90 = call i32 @snprintf(i8* %86, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @RichString_appendn(i32* %91, i32 %92, i8* %93, i32 %94)
  br label %158

96:                                               ; preds = %79
  %97 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %98 = load i64, i64* %5, align 8
  %99 = uitofp i64 %98 to double
  %100 = load i64, i64* @ONE_M, align 8
  %101 = uitofp i64 %100 to double
  %102 = fdiv double %99, %101
  %103 = fptoui double %102 to i64
  %104 = call i32 @snprintf(i8* %97, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @RichString_appendn(i32* %105, i32 %106, i8* %107, i32 %108)
  br label %158

110:                                              ; preds = %35
  %111 = load i64, i64* %5, align 8
  %112 = icmp uge i64 %111, 100000
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @ONE_K, align 8
  %117 = udiv i64 %115, %116
  %118 = call i32 @snprintf(i8* %114, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %10, align 4
  %121 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @RichString_appendn(i32* %119, i32 %120, i8* %121, i32 %122)
  br label %158

124:                                              ; preds = %110
  %125 = load i64, i64* %5, align 8
  %126 = icmp uge i64 %125, 1000
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %129 = load i64, i64* %5, align 8
  %130 = udiv i64 %129, 1000
  %131 = call i32 @snprintf(i8* %128, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %10, align 4
  %134 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @RichString_appendn(i32* %132, i32 %133, i8* %134, i32 %135)
  %137 = load i64, i64* %5, align 8
  %138 = urem i64 %137, 1000
  store i64 %138, i64* %5, align 8
  %139 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @snprintf(i8* %139, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %11, align 4
  %144 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @RichString_appendn(i32* %142, i32 %143, i8* %144, i32 %145)
  br label %158

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @snprintf(i8* %150, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* %11, align 4
  %155 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @RichString_appendn(i32* %153, i32 %154, i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %149, %127, %113, %96, %85, %64, %47
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @RichString_appendn(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
