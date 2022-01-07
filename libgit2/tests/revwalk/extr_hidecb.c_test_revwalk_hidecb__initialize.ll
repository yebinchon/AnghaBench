; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_hidecb.c_test_revwalk_hidecb__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_hidecb.c_test_revwalk_hidecb__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@_head_id = common dso_local global i32 0, align 4
@commit_head = common dso_local global i32 0, align 4
@commit_count = common dso_local global i32 0, align 4
@commit_ids = common dso_local global i32* null, align 8
@commit_strs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_hidecb__initialize() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @git_repository_open(i32* @_repo, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @commit_head, align 4
  %6 = call i32 @git_oid_fromstr(i32* @_head_id, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %24, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @commit_count, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i32*, i32** @commit_ids, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32*, i32** @commit_strs, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_oid_fromstr(i32* %16, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %8

27:                                               ; preds = %8
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
