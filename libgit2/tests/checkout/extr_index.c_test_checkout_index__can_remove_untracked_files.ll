; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__can_remove_untracked_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__can_remove_untracked_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"./testrepo/dir/subdir/subsubdir\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"./testrepo/dir/one\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"one\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"./testrepo/dir/subdir/two\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"two\0A\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@GIT_CHECKOUT_REMOVE_UNTRACKED = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"./testrepo/dir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__can_remove_untracked_files() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %4 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 493, i32 %3)
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 @git_path_isdir(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_assert_equal_i(i32 1, i32 %7)
  %9 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %10 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @GIT_CHECKOUT_REMOVE_UNTRACKED, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_checkout_index(i32 %15, i32* null, %struct.TYPE_4__* %1)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @git_path_isdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @cl_assert_equal_i(i32 0, i32 %18)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
