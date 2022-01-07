; ModuleID = '/home/carl/AnghaBench/htop/extr_Process.c_Process_colorNumber.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Process.c_Process_colorNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRT_colors = common dso_local global i32* null, align 8
@LARGE_NUMBER = common dso_local global i64 0, align 8
@PROCESS_MEGABYTES = common dso_local global i64 0, align 8
@PROCESS = common dso_local global i64 0, align 8
@PROCESS_SHADOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"    no perm \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%11llu \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Process_colorNumber(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [14 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** @CRT_colors, align 8
  %14 = load i64, i64* @LARGE_NUMBER, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** @CRT_colors, align 8
  %18 = load i64, i64* @PROCESS_MEGABYTES, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** @CRT_colors, align 8
  %22 = load i64, i64* @PROCESS, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** @CRT_colors, align 8
  %26 = load i64, i64* @PROCESS_SHADOW, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %3
  %32 = load i32*, i32** @CRT_colors, align 8
  %33 = load i64, i64* @PROCESS, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** @CRT_colors, align 8
  %37 = load i64, i64* @PROCESS, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** @CRT_colors, align 8
  %41 = load i64, i64* @PROCESS, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %31, %3
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %49 = call i32 @snprintf(i8* %48, i32 13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** @CRT_colors, align 8
  %52 = load i64, i64* @PROCESS_SHADOW, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @RichString_appendn(i32* %50, i32 %54, i8* %55, i32 %56)
  br label %104

58:                                               ; preds = %44
  %59 = load i64, i64* %5, align 8
  %60 = icmp ugt i64 %59, 10000000000
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %63 = load i64, i64* %5, align 8
  %64 = udiv i64 %63, 1000
  %65 = call i32 @xSnprintf(i8* %62, i32 13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %69 = call i32 @RichString_appendn(i32* %66, i32 %67, i8* %68, i32 5)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = call i32 @RichString_appendn(i32* %70, i32 %71, i8* %73, i32 3)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %78 = getelementptr inbounds i8, i8* %77, i64 8
  %79 = call i32 @RichString_appendn(i32* %75, i32 %76, i8* %78, i32 4)
  br label %103

80:                                               ; preds = %58
  %81 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @xSnprintf(i8* %81, i32 13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %87 = call i32 @RichString_appendn(i32* %84, i32 %85, i8* %86, i32 2)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = call i32 @RichString_appendn(i32* %88, i32 %89, i8* %91, i32 3)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %96 = getelementptr inbounds i8, i8* %95, i64 5
  %97 = call i32 @RichString_appendn(i32* %93, i32 %94, i8* %96, i32 3)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %11, align 4
  %100 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = call i32 @RichString_appendn(i32* %98, i32 %99, i8* %101, i32 4)
  br label %103

103:                                              ; preds = %80, %61
  br label %104

104:                                              ; preds = %103, %47
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @RichString_appendn(i32*, i32, i8*, i32) #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
