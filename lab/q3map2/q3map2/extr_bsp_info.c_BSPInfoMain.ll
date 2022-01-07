; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp_info.c_BSPInfoMain.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp_info.c_BSPInfoMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"No files to dump info for.\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@infoMode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"---------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".bsp\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"          total         %9d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"                        %9d KB\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"                        %9d MB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BSPInfoMain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load i32, i32* @qtrue, align 4
  store i32 %16, i32* @infoMode, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %68, %15
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcpy(i8* %23, i8* %28)
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %32 = call i32 @ExtractFileExtension(i8* %30, i8* %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %34 = call i32 @Q_stricmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %38 = call i32 @StripExtension(i8* %37)
  br label %39

39:                                               ; preds = %36, %21
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %41 = call i32 @DefaultExtension(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @Q_filelength(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @fclose(i32* %49)
  br label %52

51:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %54 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %56 = call i32 @LoadBSPFile(i8* %55)
  %57 = call i32 (...) @PrintBSPFileSizes()
  %58 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = sdiv i32 %61, 1024
  %63 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = sdiv i32 %64, 1048576
  %66 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %17

71:                                               ; preds = %17
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @Sys_Printf(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ExtractFileExtension(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @DefaultExtension(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Q_filelength(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @LoadBSPFile(i8*) #1

declare dso_local i32 @PrintBSPFileSizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
