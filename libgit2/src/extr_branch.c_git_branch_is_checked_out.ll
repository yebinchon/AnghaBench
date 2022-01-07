; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_is_checked_out.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_is_checked_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO = common dso_local global i32 0, align 4
@branch_equals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_is_checked_out(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @git_reference_is_branch(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @git_reference_owner(i32* %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @git_repository_is_bare(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @branch_equals, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @git_repository_foreach_head(i32* %23, i32 %24, i32 %25, i8* %27)
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @git_reference_is_branch(i32*) #1

declare dso_local i32* @git_reference_owner(i32*) #1

declare dso_local i64 @git_repository_is_bare(i32*) #1

declare dso_local i32 @git_repository_foreach_head(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
