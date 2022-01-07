; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__write_tree_invalid_unowned_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__write_tree_invalid_unowned_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"8312e0a89a9cbab77c732b6bc39b51a783e3a318\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"./invalid-id\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"invalid-id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__write_tree_invalid_unowned_index() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = call i32 @git_index_new(i32** %1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %9 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_index_add(i32* %14, %struct.TYPE_5__* %3)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_repository_init(i32** %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_index_write_tree_to(i32* %4, i32* %19, i32* %20)
  %22 = call i32 @cl_git_fail(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_index_free(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_repository_free(i32* %25)
  %27 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
