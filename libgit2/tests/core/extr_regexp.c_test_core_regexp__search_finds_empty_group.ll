; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_regexp.c_test_core_regexp__search_finds_empty_group.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_regexp.c_test_core_regexp__search_finds_empty_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@regex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(a*)(b*)c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ac\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_regexp__search_finds_empty_group() #0 {
  %1 = alloca [3 x %struct.TYPE_3__], align 16
  %2 = call i32 @git_regexp_compile(i32* @regex, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %5 = call i32 @git_regexp_search(i32* @regex, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 3, %struct.TYPE_3__* %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cl_assert_equal_i(i32 %9, i32 0)
  %11 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 16
  %14 = call i32 @cl_assert_equal_i(i32 %13, i32 2)
  %15 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_assert_equal_i(i32 %17, i32 0)
  %19 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cl_assert_equal_i(i32 %21, i32 1)
  %23 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cl_assert_equal_i(i32 %25, i32 1)
  %27 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = call i32 @cl_assert_equal_i(i32 %29, i32 1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_regexp_compile(i32*, i8*, i32) #1

declare dso_local i32 @git_regexp_search(i32*, i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
