; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_regexp.c_test_core_regexp__regex_matches_digits_with_locale.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_regexp.c_test_core_regexp__regex_matches_digits_with_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_COLLATE = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@regex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[[:digit:]]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_regexp__regex_matches_digits_with_locale() #0 {
  %1 = alloca i8, align 1
  %2 = alloca [2 x i8], align 1
  %3 = load i32, i32* @LC_COLLATE, align 4
  %4 = call i32 @try_set_locale(i32 %3)
  %5 = load i32, i32* @LC_CTYPE, align 4
  %6 = call i32 @try_set_locale(i32 %5)
  %7 = call i32 @git_regexp_compile(i32* @regex, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 1
  store i8 0, i8* %9, align 1
  store i8 48, i8* %1, align 1
  br label %10

10:                                               ; preds = %20, %0
  %11 = load i8, i8* %1, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sle i32 %12, 57
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i8, i8* %1, align 1
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %18 = call i32 @git_regexp_match(i32* @regex, i8* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i8, i8* %1, align 1
  %22 = add i8 %21, 1
  store i8 %22, i8* %1, align 1
  br label %10

23:                                               ; preds = %10
  ret void
}

declare dso_local i32 @try_set_locale(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_regexp_compile(i32*, i8*, i32) #1

declare dso_local i32 @git_regexp_match(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
