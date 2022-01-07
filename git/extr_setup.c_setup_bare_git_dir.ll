; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_setup_bare_git_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_setup_bare_git_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }
%struct.repository_format = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GIT_IMPLICIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@GIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@git_work_tree_cfg = common dso_local global i64 0, align 8
@setup_bare_git_dir.gitdir = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot come back to cwd\00", align 1
@inside_git_dir = common dso_local global i32 0, align 4
@inside_work_tree = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.strbuf*, i32, %struct.repository_format*, i32*)* @setup_bare_git_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setup_bare_git_dir(%struct.strbuf* %0, i32 %1, %struct.repository_format* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository_format*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.repository_format* %2, %struct.repository_format** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = call i64 @check_repository_format_gently(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.repository_format* %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %92

16:                                               ; preds = %4
  %17 = load i32, i32* @GIT_IMPLICIT_WORK_TREE_ENVIRONMENT, align 4
  %18 = call i32 @setenv(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %19 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %20 = call i64 @getenv(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @git_work_tree_cfg, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %38

32:                                               ; preds = %25
  %33 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @xmemdupz(i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %31
  %39 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %31 ], [ %37, %32 ]
  store i8* %39, i8** @setup_bare_git_dir.gitdir, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @chdir(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @die_errno(i32 %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i8*, i8** @setup_bare_git_dir.gitdir, align 8
  %50 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %51 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i8* @setup_explicit_git_dir(i8* %49, %struct.strbuf* %50, %struct.repository_format* %51, i32* %52)
  store i8* %53, i8** %5, align 8
  br label %92

54:                                               ; preds = %22
  store i32 1, i32* @inside_git_dir, align 4
  store i64 0, i64* @inside_work_tree, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %54
  %61 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @chdir(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @die_errno(i32 %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @offset_1st_component(i8* %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  br label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @strbuf_setlen(%struct.strbuf* %74, i32 %83)
  %85 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %86 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @set_git_dir(i8* %87)
  br label %91

89:                                               ; preds = %54
  %90 = call i32 @set_git_dir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %82
  store i8* null, i8** %5, align 8
  br label %92

92:                                               ; preds = %91, %48, %15
  %93 = load i8*, i8** %5, align 8
  ret i8* %93
}

declare dso_local i64 @check_repository_format_gently(i8*, %struct.repository_format*, i32*) #1

declare dso_local i32 @setenv(i32, i8*, i32) #1

declare dso_local i64 @getenv(i32) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @setup_explicit_git_dir(i8*, %struct.strbuf*, %struct.repository_format*, i32*) #1

declare dso_local i32 @offset_1st_component(i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @set_git_dir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
