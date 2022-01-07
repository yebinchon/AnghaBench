; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_head.c_test_checkout_head__do_remove_tracked_subdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_head.c_test_checkout_head__do_remove_tracked_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"testrepo/subdir\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"testrepo/subdir/tracked\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"testrepo/subdir/tracked-file\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tracked\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"testrepo/subdir/untracked-file\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"untracked\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"testrepo/subdir/tracked/tracked1\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"testrepo/subdir/tracked/tracked2\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"subdir/tracked-file\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"subdir/tracked/tracked1\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"subdir/tracked/tracked2\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_head__do_remove_tracked_subdir() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 493)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @p_mkdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_repository_index(i32** %2, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_index_add_bypath(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_index_add_bypath(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_index_add_bypath(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_index_write(i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_index_free(i32* %27)
  %29 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @g_repo, align 4
  %32 = call i32 @git_checkout_head(i32 %31, %struct.TYPE_4__* %1)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_path_isdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i32 @git_path_isfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = call i32 @git_path_isfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @cl_assert(i32 %44)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @git_path_isfile(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
