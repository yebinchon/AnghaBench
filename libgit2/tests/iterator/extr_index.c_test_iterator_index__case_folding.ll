; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__case_folding.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__case_folding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c".gitted/CoNfIg\00", align 1
@expected_index_cs = common dso_local global i32 0, align 4
@expected_index_ci = common dso_local global i32 0, align 4
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__case_folding() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %2, align 4
  %4 = call i32 @cl_fixture(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @git_path_exists(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  %11 = load i32, i32* @expected_index_cs, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @expected_index_ci, align 4
  br label %19

17:                                               ; preds = %0
  %18 = load i32, i32* @expected_index_cs, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @index_iterator_test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32 0, i32 %12, i32 %20, i32* null)
  %22 = call i32 (...) @cl_git_sandbox_cleanup()
  %23 = load i32, i32* @GIT_ITERATOR_IGNORE_CASE, align 4
  %24 = load i32, i32* @expected_index_ci, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = load i32, i32* @expected_index_ci, align 4
  %27 = call i32 @index_iterator_test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32 %23, i32 %25, i32 %26, i32* null)
  %28 = call i32 (...) @cl_git_sandbox_cleanup()
  %29 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %30 = load i32, i32* @expected_index_cs, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load i32, i32* @expected_index_cs, align 4
  %33 = call i32 @index_iterator_test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32 %29, i32 %31, i32 %32, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @index_iterator_test(i8*, i32*, i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @cl_git_sandbox_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
