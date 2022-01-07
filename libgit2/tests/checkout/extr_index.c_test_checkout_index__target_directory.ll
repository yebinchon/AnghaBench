; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__target_directory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__target_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"alternative\00", align 1
@GIT_CHECKOUT_NOTIFY_ALL = common dso_local global i32 0, align 4
@checkout_count_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"testrepo/README\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"I'm in the way!\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"testrepo/new.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"my new file\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./alternative/README\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"./alternative/branch_file.txt\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"hi\0Abye!\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"./alternative/new.txt\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__target_directory() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 32, i1 false)
  %4 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 12)
  %5 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %6 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = call i32 @git_path_isdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32, i32* @GIT_CHECKOUT_NOTIFY_ALL, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @checkout_count_callback, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %19, align 8
  %20 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_checkout_index(i32 %22, i32* null, %struct.TYPE_6__* %1)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cl_assert_equal_i(i32 0, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_assert_equal_i(i32 0, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cl_assert_equal_i(i32 4, i32 %32)
  %34 = call i32 @check_file_contents(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %35 = call i32 @check_file_contents(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %36 = call i32 @check_file_contents(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %38 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @check_file_contents(i8*, i8*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
