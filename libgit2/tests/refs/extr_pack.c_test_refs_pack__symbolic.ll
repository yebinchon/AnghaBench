; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_pack.c_test_refs_pack__symbolic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_pack.c_test_refs_pack__symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"refs/heads/symbolic-%03d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"refs/heads/direct-%03d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_pack__symbolic() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_reference_name_to_id(i32* %2, i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %30, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @p_snprintf(i8* %12, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %17 = call i32 @git_reference_symbolic_create(i32** %3, i32 %15, i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_reference_free(i32* %19)
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @p_snprintf(i8* %21, i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %26 = call i32 @git_reference_create(i32** %3, i32 %24, i8* %25, i32* %2, i32 0, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %8

33:                                               ; preds = %8
  %34 = call i32 (...) @packall()
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #1

declare dso_local i32 @p_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @git_reference_symbolic_create(i32**, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @packall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
