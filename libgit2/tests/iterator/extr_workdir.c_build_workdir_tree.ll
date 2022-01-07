; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_build_workdir_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_build_workdir_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%s/dir%02d\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/dir%02d/file\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s/DIR%02d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/sub%02d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s/sUB%02d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s/Sub%02d\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s/SUB%02d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"/file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @build_workdir_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_workdir_tree(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca [80 x i8], align 16
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %103, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %106

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @p_snprintf(i8* %21, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %26 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %27 = call i32 @git_futils_mkdir(i8* %25, i32 509, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @p_snprintf(i8* %29, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %35 = call i32 @cl_git_mkfile(i8* %33, i8* %34)
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %37 = call i32 @strlen(i8* %36)
  %38 = sub nsw i32 %37, 5
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  br label %50

41:                                               ; preds = %16
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @p_snprintf(i8* %42, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %44)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %47 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %48 = call i32 @git_futils_mkdir(i8* %46, i32 509, i32 %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  br label %50

50:                                               ; preds = %41, %20
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %99, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = srem i32 %56, 4
  switch i32 %57, label %78 [
    i32 0, label %58
    i32 1, label %63
    i32 2, label %68
    i32 3, label %73
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @p_snprintf(i8* %59, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %61)
  br label %78

63:                                               ; preds = %55
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @p_snprintf(i8* %64, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %65, i32 %66)
  br label %78

68:                                               ; preds = %55
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @p_snprintf(i8* %69, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %70, i32 %71)
  br label %78

73:                                               ; preds = %55
  %74 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @p_snprintf(i8* %74, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %55, %73, %68, %63, %58
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %80 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %81 = call i32 @git_futils_mkdir(i8* %79, i32 509, i32 %80)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = srem i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %88 = call i32 @strlen(i8* %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 %90
  %92 = call i32 @memcpy(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %95 = call i32 @cl_git_mkfile(i8* %93, i8* %94)
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 %96
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %86, %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %51

102:                                              ; preds = %51
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %12

106:                                              ; preds = %12
  ret void
}

declare dso_local i32 @p_snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
