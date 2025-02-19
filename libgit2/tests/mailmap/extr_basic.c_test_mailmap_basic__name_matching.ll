; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_basic.c_test_mailmap_basic__name_matching.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_basic.c_test_mailmap_basic__name_matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mailmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Other Name\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"yetanotheremail@foo.com\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"email@foo.com\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Other Name That Doesn't Match\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mailmap_basic__name_matching() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @mailmap, align 4
  %4 = call i32 @git_mailmap_resolve(i8** %1, i8** %2, i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @cl_assert_equal_s(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @cl_assert_equal_s(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @mailmap, align 4
  %11 = call i32 @git_mailmap_resolve(i8** %1, i8** %2, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @cl_assert_equal_s(i8* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @cl_assert_equal_s(i8* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_mailmap_resolve(i8**, i8**, i32, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
