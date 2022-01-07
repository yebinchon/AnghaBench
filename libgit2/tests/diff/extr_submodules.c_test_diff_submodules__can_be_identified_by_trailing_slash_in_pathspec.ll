; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.one_path_without_slash = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"sm_changed_head/\00", align 1
@__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.one_path_with_slash = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"sm_changed_index\00", align 1
@__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.many_paths_without_slashes = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"sm_changed_index/\00", align 1
@__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.many_paths_with_slashes = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)], align 16
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = alloca [1 x i8*], align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca [2 x i8*], align 16
  %5 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast ([1 x i8*]* @__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.one_path_without_slash to i8*), i64 8, i1 false)
  %6 = bitcast [1 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast ([1 x i8*]* @__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.one_path_with_slash to i8*), i64 8, i1 false)
  %7 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.many_paths_without_slashes to i8*), i64 16, i1 false)
  %8 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec.many_paths_with_slashes to i8*), i64 16, i1 false)
  %9 = call i32 (...) @setup_fixture_submod2()
  store i32 %9, i32* @g_repo, align 4
  %10 = load i32, i32* @g_repo, align 4
  %11 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i8** %12)
  %14 = call i32 @ensure_submodules_found(i32 %10, i8** %11, i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2, i64 0, i64 0
  %17 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i8** %17)
  %19 = call i32 @ensure_submodules_found(i32 %15, i8** %16, i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8** %22)
  %24 = call i32 @ensure_submodules_found(i32 %20, i8** %21, i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %28 = call i32 @ARRAY_SIZE(i8** %27)
  %29 = call i32 @ensure_submodules_found(i32 %25, i8** %26, i32 %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @ensure_submodules_found(i32, i8**, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
