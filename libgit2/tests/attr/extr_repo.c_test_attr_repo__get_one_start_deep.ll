; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__get_one_start_deep.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__get_one_start_deep.c"
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
define dso_local void @test_attr_repo__get_one_start_deep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.attr_expected*, align 8
  %3 = alloca i8*, align 8
  %4 = load %struct.attr_expected*, %struct.attr_expected** @get_one_test_cases, align 8
  %5 = call i64 @ARRAY_SIZE(%struct.attr_expected* %4)
  %6 = trunc i64 %5 to i32
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %36, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load %struct.attr_expected*, %struct.attr_expected** @get_one_test_cases, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %12, i64 %14
  store %struct.attr_expected* %15, %struct.attr_expected** %2, align 8
  %16 = load i32, i32* @g_repo, align 4
  %17 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %18 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %21 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @git_attr_get(i8** %3, i32 %16, i32 0, i32 %19, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %26 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %29 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.attr_expected*, %struct.attr_expected** %2, align 8
  %32 = getelementptr inbounds %struct.attr_expected, %struct.attr_expected* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @attr_check_expected(i32 %27, i32 %30, i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %11
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %1, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load i32, i32* @g_repo, align 4
  %41 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %42 = call i32 @git_attr_cache__is_cached(i32 %40, i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %46 = call i32 @git_attr_cache__is_cached(i32 %44, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32, i32* @g_repo, align 4
  %49 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %50 = call i32 @git_attr_cache__is_cached(i32 %48, i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @cl_assert(i32 %50)
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
