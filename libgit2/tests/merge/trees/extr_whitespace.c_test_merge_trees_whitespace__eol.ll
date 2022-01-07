; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_whitespace.c_test_merge_trees_whitespace__eol.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_whitespace.c_test_merge_trees_whitespace__eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_MERGE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"ee3c2aac8e03224c323b58ecb1f9eef616745467\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@BRANCH_A_EOL = common dso_local global i32 0, align 4
@BRANCH_B_EOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_whitespace__eol() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca [1 x %struct.merge_index_entry], align 16
  %4 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_MERGE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = getelementptr inbounds [1 x %struct.merge_index_entry], [1 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 0
  store i32 33188, i32* %6, align 16
  %7 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 2
  store i8* null, i8** %8, align 16
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.1 to i32), i32* %9, align 8
  %10 = load i32, i32* @GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @repo, align 4
  %15 = load i32, i32* @BRANCH_A_EOL, align 4
  %16 = load i32, i32* @BRANCH_B_EOL, align 4
  %17 = call i32 @merge_trees_from_branches(i32** %1, i32 %14, i32 %15, i32 %16, %struct.TYPE_4__* %2)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = getelementptr inbounds [1 x %struct.merge_index_entry], [1 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %21 = call i32 @merge_test_index(i32* %19, %struct.merge_index_entry* %20, i32 1)
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_index_free(i32* %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_trees_from_branches(i32**, i32, i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
