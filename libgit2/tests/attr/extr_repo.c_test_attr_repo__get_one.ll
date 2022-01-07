; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__get_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__get_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_expected = type { i32, i32, i32, i32 }

@get_one_test_cases = common dso_local global %struct.attr_expected* null, align 8
@g_repo = common dso_local global i32 0, align 4
@GIT_ATTR_FILE__FROM_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c".git/info/attributes\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c".gitattributes\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sub/.gitattributes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_repo__get_one() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.attr_expected*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.attr_expected*, %struct.attr_expected** @get_one_test_cases, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.attr_expected* %6)
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = load %struct.attr_expected*, %struct.attr_expected** @get_one_test_cases, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %11, i64 %13
  store %struct.attr_expected* %14, %struct.attr_expected** %2, align 8
  %15 = load i32, i32* @g_repo, align 4
  %16 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %17 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %20 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_attr_get(i8** %3, i32 %15, i32 0, i32 %18, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %25 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %28 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %31 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @attr_check_expected(i32 %26, i32 %29, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %10
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %4

38:                                               ; preds = %4
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %41 = call i32 @git_attr_cache__is_cached(i32 %39, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %45 = call i32 @git_attr_cache__is_cached(i32 %43, i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @cl_assert(i32 %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %49 = call i32 @git_attr_cache__is_cached(i32 %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @cl_assert(i32 %49)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.attr_expected*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_attr_get(i8**, i32, i32, i32, i32) #1

declare dso_local i32 @attr_check_expected(i32, i32, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_attr_cache__is_cached(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
