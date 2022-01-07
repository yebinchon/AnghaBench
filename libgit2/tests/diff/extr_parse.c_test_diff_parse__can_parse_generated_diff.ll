; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__can_parse_generated_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__can_parse_generated_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"d70d245e\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"7a9e0b02\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"unsymlinked.git\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"806999\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"a8595c\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"d70d245ed97ed2aa596dd1af6536e4bfdb047b69\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"7a9e0b02e63179929fed24f0a3e0f19168114d10\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"7fccd7\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"605812a\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"370fe9ec22\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"f5b0af1fb4f5c\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"diff_format_email\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"873806f6f27e631eb0b23e4b56bea2bfac14a373\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"897d3af16ca9e420cd071b1c4541bd2b91d04c8c\00", align 1
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"31e47d8c1fa36d7f8d537b96158e3f024de0a9f2\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"2bc7f351d20b53f1c72c16c4b036e491c478c49a\00", align 1
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_EXACT_MATCH_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_parse__can_parse_generated_diff() #0 {
  %1 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %2 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %3 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  %4 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %5 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %6 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0)
  %7 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0)
  %8 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %9 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %10 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %9, i32 0)
  %11 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %12 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %11, i32 0)
  %13 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %14 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 0, i32 %13)
  %15 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %16 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 %15, i32 0)
  %17 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %18 = load i32, i32* @GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED, align 4
  %19 = load i32, i32* @GIT_DIFF_FIND_EXACT_MATCH_ONLY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @test_tree_to_tree_computed_to_parsed(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @test_tree_to_tree_computed_to_parsed(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
