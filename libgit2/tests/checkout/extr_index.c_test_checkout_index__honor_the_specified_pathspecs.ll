; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__honor_the_specified_pathspecs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__honor_the_specified_pathspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8**, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"*.txt\00", align 1
@__const.test_checkout_index__honor_the_specified_pathspecs.entries = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"./testrepo/README\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"./testrepo/branch_file.txt\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"./testrepo/new.txt\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"hi\0Abye!\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"my new file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__honor_the_specified_pathspecs() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca [1 x i8*], align 8
  %3 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  %4 = bitcast [1 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast ([1 x i8*]* @__const.test_checkout_index__honor_the_specified_pathspecs.entries to i8*), i64 8, i1 false)
  %5 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2, i64 0, i64 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8** %5, i8*** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = call i32 @git_path_isfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_assert_equal_i(i32 0, i32 %10)
  %12 = call i32 @git_path_isfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_assert_equal_i(i32 0, i32 %12)
  %14 = call i32 @git_path_isfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_assert_equal_i(i32 0, i32 %14)
  %16 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %17 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_checkout_index(i32 %20, i32* null, %struct.TYPE_6__* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_path_isfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_assert_equal_i(i32 0, i32 %23)
  %25 = call i32 @check_file_contents(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @check_file_contents(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @check_file_contents(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
