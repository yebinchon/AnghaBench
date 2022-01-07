; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_check_global_searchpath.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_check_global_searchpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GIT_PATH_LIST_SEPARATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"$PATH\00", align 1
@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_OPT_GET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, %struct.TYPE_12__*)* @check_global_searchpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_global_searchpath(i8* %0, i32 %1, i8* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %10 = bitcast %struct.TYPE_12__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @git_buf_join(%struct.TYPE_12__* %14, i32 %15, i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  br label %34

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @git_buf_join(%struct.TYPE_12__* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  br label %33

28:                                               ; preds = %19
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @git_buf_sets(%struct.TYPE_12__* %29, i8* %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33, %13
  %35 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %36 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = call i32 @git_libgit2_opts(i32 %35, i32 %36, %struct.TYPE_12__* %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32, i32* @GIT_OPT_GET_SEARCH_PATH, align 4
  %43 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %44 = call i32 @git_libgit2_opts(i32 %42, i32 %43, %struct.TYPE_12__* %9)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @git__prefixcmp(%struct.TYPE_12__* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @cl_assert(i32 %54)
  br label %73

56:                                               ; preds = %34
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @git__suffixcmp(%struct.TYPE_12__* %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @cl_assert(i32 %65)
  br label %72

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @cl_assert_equal_s(%struct.TYPE_12__* %69, i8* %70)
  br label %72

72:                                               ; preds = %67, %59
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @git_sysdir_find_global_file(%struct.TYPE_12__* %74, i8* %75)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %79 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %80 = call i32 @git_libgit2_opts(i32 %78, i32 %79, %struct.TYPE_12__* null)
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = load i32, i32* @GIT_ENOTFOUND, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @git_sysdir_find_global_file(%struct.TYPE_12__* %83, i8* %84)
  %86 = call i32 @cl_assert_equal_i(i32 %82, i32 %85)
  %87 = call i32 @git_buf_dispose(%struct.TYPE_12__* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_join(%struct.TYPE_12__*, i32, i8*, i8*) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @git_libgit2_opts(i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git__prefixcmp(%struct.TYPE_12__*, i8*) #2

declare dso_local i64 @git__suffixcmp(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @git_sysdir_find_global_file(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
