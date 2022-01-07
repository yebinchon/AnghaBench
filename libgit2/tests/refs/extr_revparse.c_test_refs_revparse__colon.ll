; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__colon.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__colon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"point_to_blob:readme.txt\00", align 1
@g_obj = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c":2:README\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c":/not found in any commit\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"subtrees:ab/42.txt\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"subtrees:ab/4.txt/nope\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"subtrees:nope\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"test/master^1:branch_file.txt\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"test:readme.txt\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"0266163a49e280c4f5ed1e08facd36a2bd716bcf\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"tags/test:readme.txt\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"e90810b:readme.txt\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"tags/e90810b:readme.txt\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"a65f:branch_file.txt\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"3697d64be941a53d4ae8f6a271e4e3fa56b022cc\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"a65f^{tree}:branch_file.txt\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"944c:branch_file.txt\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"master:\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"944c0f6e4dfa41595e6eb3ceecdb14f50fe18162\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"subtrees:\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"ae90f12eea699729ed24555e40b9fd669da12a12\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"subtrees:ab\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"f1425cef211cc08caa31e7b545ffb232acb098c3\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"subtrees:ab/\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"subtrees:ab/4.txt\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"d6c93164c249c8000205dd4ec5cbca1b516d487f\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"subtrees:ab/de/fgh/1.txt\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"1f67fc4386b2d171e0d21be1c447e12660561f9b\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"master:README\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"a8233120f6ad708f843d861ce2b7228ec4e3dec6\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"master:new.txt\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"a71586c1dfe8a71c6cbf6c129f404c5642ff31bd\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c":/Merge\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"a4a7dce85cf63874e984719f4fdd239f5145052f\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c":/one\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"c47800c7266a2be04c571c04d5a6614691ea99bd\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c":/packed commit t\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"41bc8c69075bbdb46c5c6f0566cc8cc5b46e8bd9\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"test/master^2:branch_file.txt\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"45b983be36b73c0788dc9cbcb76cbb80fc7bb057\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"test/master@{1}:branch_file.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__colon() #0 {
  %1 = call i32 @assert_invalid_single_spec(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @assert_invalid_single_spec(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_revparse_single(i32* @g_obj, i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @cl_git_fail(i32 %4)
  %6 = call i32 @test_object(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %7 = call i32 @test_object(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %8 = call i32 @test_object(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %9 = call i32 @test_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %10 = call i32 @test_object(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %11 = call i32 @test_object(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %12 = call i32 @test_object(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %13 = call i32 @test_object(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 @test_object(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 @test_object(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %16 = call i32 @test_object(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %17 = call i32 @test_object(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %18 = call i32 @test_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  %19 = call i32 @test_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %20 = call i32 @test_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0))
  %21 = call i32 @test_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0))
  %22 = call i32 @test_object(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0))
  %23 = call i32 @test_object(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  %24 = call i32 @test_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0))
  %25 = call i32 @test_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  %26 = call i32 @test_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0))
  %27 = call i32 @test_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0))
  %28 = call i32 @test_object(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i64 0, i64 0))
  %29 = call i32 @test_object(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0))
  %30 = call i32 @test_object(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_invalid_single_spec(i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #1

declare dso_local i32 @test_object(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
