; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__multiple_push_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__multiple_push_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"5b5b025afb0b4c913b4c338a42934a3863bf3644\00", align 1
@_walk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"refs/heads/packed-test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__multiple_push_2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @revwalk_basic_setup_walk(i32* null)
  %4 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @_walk, align 4
  %7 = call i32 @git_revwalk_push(i32 %6, i32* %2)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_walk, align 4
  %10 = call i32 @git_revwalk_hide_ref(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @_walk, align 4
  %13 = call i32 @git_revwalk_push_head(i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  br label %15

15:                                               ; preds = %19, %0
  %16 = load i32, i32* @_walk, align 4
  %17 = call i64 @git_revwalk_next(i32* %2, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %15

22:                                               ; preds = %15
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @cl_assert_equal_i(i32 %23, i32 4)
  ret void
}

declare dso_local i32 @revwalk_basic_setup_walk(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_revwalk_push(i32, i32*) #1

declare dso_local i32 @git_revwalk_hide_ref(i32, i8*) #1

declare dso_local i32 @git_revwalk_push_head(i32) #1

declare dso_local i64 @git_revwalk_next(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
