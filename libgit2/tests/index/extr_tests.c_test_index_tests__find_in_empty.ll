; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__find_in_empty.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__find_in_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fake-index\00", align 1
@test_entries = common dso_local global %struct.TYPE_3__* null, align 8
@GIT_ENOTFOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__find_in_empty() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @git_index_open(i32** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %23, %0
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_entries, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = load i64, i64* @GIT_ENOTFOUND, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_entries, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @git_index_find(i32* null, i32* %12, i32 %18)
  %20 = icmp eq i64 %11, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %2, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %5

26:                                               ; preds = %5
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_index_free(i32* %27)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(i32**, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_index_find(i32*, i32*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
