; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_macro.c_test_attr_macro__adding_macro_succeeds.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_macro.c_test_attr_macro__adding_macro_succeeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"key=value\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"empty_standard_repo/.gitattributes\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"file.txt macro\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_macro__adding_macro_succeeds() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_attr_add_macro(i32 %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_attr_get(i8** %1, i32 %7, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @cl_assert_equal_s(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_attr_add_macro(i32, i8*, i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_attr_get(i8**, i32, i32, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
