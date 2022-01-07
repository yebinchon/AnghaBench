; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__fast_thread_rush.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__fast_thread_rush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREADCOUNT = common dso_local global i32 0, align 4
@REPEAT = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_cache__fast_thread_rush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @THREADCOUNT, align 4
  %6 = mul nsw i32 %5, 2
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %44, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @REPEAT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @git_repository_open(i32** @g_repo, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %38, %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @THREADCOUNT, align 4
  %21 = mul nsw i32 %20, 2
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %9, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %9, i64 %29
  %31 = call i32* @cache_quick(i32* %30)
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %9, i64 %33
  %35 = icmp eq i32* %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load i32*, i32** @g_repo, align 8
  %43 = call i32 @git_repository_free(i32* %42)
  store i32* null, i32** @g_repo, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32* @cache_quick(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
