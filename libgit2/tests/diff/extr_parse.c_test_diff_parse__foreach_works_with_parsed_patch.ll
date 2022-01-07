; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__foreach_works_with_parsed_patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__foreach_works_with_parsed_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_diff_parse__foreach_works_with_parsed_patch.patch = private unnamed_addr constant [103 x i8] c"diff --git a/obj1 b/obj2\0Aindex 1234567..7654321 10644\0A--- a/obj1\0A+++ b/obj2\0A@@ -1 +1 @@\0A-abcde\0A+12345\0A\00", align 16
@file_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_parse__foreach_works_with_parsed_patch() #0 {
  %1 = alloca [103 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast [103 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([103 x i8], [103 x i8]* @__const.test_diff_parse__foreach_works_with_parsed_patch.patch, i32 0, i32 0), i64 103, i1 false)
  store i32 0, i32* %2, align 4
  %5 = getelementptr inbounds [103 x i8], [103 x i8]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [103 x i8], [103 x i8]* %1, i64 0, i64 0
  %7 = call i32 @strlen(i8* %6)
  %8 = call i32 @git_diff_from_buffer(i32** %3, i8* %5, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @file_cb, align 4
  %12 = call i32 @git_diff_foreach(i32* %10, i32 %11, i32* null, i32* null, i32* null, i32* %2)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @cl_assert_equal_i(i32 %14, i32 1)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_diff_free(i32* %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
