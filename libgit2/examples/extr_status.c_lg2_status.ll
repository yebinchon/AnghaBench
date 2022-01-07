; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_status.c_lg2_status.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_status.c_lg2_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i8*, i64, i64, i32*, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GIT_STATUS_SHOW_INDEX_AND_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_SORT_CASE_SENSITIVELY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot report status on bare repository\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\1B[H\1B[2J\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Could not get status\00", align 1
@print_submod = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Cannot iterate submodules\00", align 1
@FORMAT_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_status(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.opts, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = bitcast %struct.opts* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 64, i1 false)
  %11 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 0
  %12 = load i32, i32* @GIT_STATUS_OPTIONS_INIT, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %11, align 8
  %15 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 1
  store i64 ptrtoint ([2 x i8]* @.str to i64), i64* %15, align 8
  %16 = load i32, i32* @GIT_STATUS_SHOW_INDEX_AND_WORKDIR, align 4
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %20 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GIT_STATUS_OPT_SORT_CASE_SENSITIVELY, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = call i32 @parse_opts(%struct.opts* %8, i32 %26, i8** %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @git_repository_is_bare(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @git_repository_path(i32* %33)
  %35 = call i32 @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %3
  br label %37

37:                                               ; preds = %85, %36
  %38 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 6
  %46 = call i32 @git_status_list_new(i32** %7, i32* %44, %struct.TYPE_2__* %45)
  %47 = call i32 @check_lg2(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %48 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @show_branch(i32* %52, i64 %54)
  br label %56

56:                                               ; preds = %51, %43
  %57 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @print_submod, align 4
  %63 = call i32 @git_submodule_foreach(i32* %61, i32 %62, i32* %9)
  %64 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @check_lg2(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %60, %56
  %68 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FORMAT_LONG, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @print_long(i32* %73)
  br label %79

75:                                               ; preds = %67
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @print_short(i32* %76, i32* %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @git_status_list_free(i32* %80)
  %82 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @sleep(i64 %87)
  br label %37

89:                                               ; preds = %79
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_opts(%struct.opts*, i32, i8**) #2

declare dso_local i64 @git_repository_is_bare(i32*) #2

declare dso_local i32 @fatal(i8*, i32) #2

declare dso_local i32 @git_repository_path(i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @check_lg2(i32, i8*, i32*) #2

declare dso_local i32 @git_status_list_new(i32**, i32*, %struct.TYPE_2__*) #2

declare dso_local i32 @show_branch(i32*, i64) #2

declare dso_local i32 @git_submodule_foreach(i32*, i32, i32*) #2

declare dso_local i32 @print_long(i32*) #2

declare dso_local i32 @print_short(i32*, i32*) #2

declare dso_local i32 @git_status_list_free(i32*) #2

declare dso_local i32 @sleep(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
