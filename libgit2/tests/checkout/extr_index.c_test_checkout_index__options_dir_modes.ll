; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__options_dir_modes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__options_dir_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.stat = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"refs/heads/dir\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"./testrepo/a\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%07o\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"./testrepo/a/b.txt\00", align 1
@GIT_FILEMODE_BLOB_EXECUTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__options_dir_modes() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 8, i1 false)
  %7 = call i32 (...) @cl_is_chmod_supported()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %56

10:                                               ; preds = %0
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_reference_name_to_id(i32* %3, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_commit_lookup(i32** %4, i32 %14, i32* %3)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @reset_index_to_treeish(i32* %17)
  %19 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %20 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 449, i32* %23, align 4
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_checkout_index(i32 %24, i32* null, %struct.TYPE_4__* %1)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @p_umask(i32 18)
  store i32 %27, i32* %5, align 4
  %28 = call i32 @p_umask(i32 %27)
  %29 = call i32 @p_stat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %2)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IFMT, align 4
  %34 = or i32 %33, 4095
  %35 = and i32 %32, %34
  %36 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %37 = or i32 %36, 449
  %38 = load i32, i32* %5, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @cl_assert_equal_i_fmt(i32 %35, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @p_stat(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.stat* %2)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @S_IFMT, align 4
  %47 = or i32 %46, 4095
  %48 = and i32 %45, %47
  %49 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %50 = load i32, i32* %5, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @cl_assert_equal_i_fmt(i32 %48, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @git_commit_free(i32* %54)
  br label %56

56:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_is_chmod_supported(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @reset_index_to_treeish(i32*) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @p_umask(i32) #2

declare dso_local i32 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @cl_assert_equal_i_fmt(i32, i32, i8*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
