; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__ignores.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__ignores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@entry_count0 = common dso_local global i64 0, align 8
@entry_paths0 = common dso_local global i8** null, align 8
@entry_statuses0 = common dso_local global i64* null, align 8
@GIT_STATUS_IGNORED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"nonexistent_file\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ignored_nonexistent_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__ignores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %3, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %31, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i64, i64* @entry_count0, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = load i32*, i32** %3, align 8
  %12 = load i8**, i8*** @entry_paths0, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @git_status_should_ignore(i32* %2, i32* %11, i8* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i64*, i64** @entry_statuses0, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GIT_STATUS_IGNORED, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = icmp eq i32 %19, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  br label %31

31:                                               ; preds = %10
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_status_should_ignore(i32* %2, i32* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @git_status_should_ignore(i32* %2, i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @cl_assert(i32 %46)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_should_ignore(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
