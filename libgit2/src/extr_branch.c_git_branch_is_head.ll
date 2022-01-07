; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_is_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_is_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EUNBORNBRANCH = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_is_head(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @git_reference_is_branch(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @git_reference_owner(i32* %14)
  %16 = call i32 @git_repository_head(i32** %4, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @GIT_EUNBORNBRANCH, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GIT_ENOTFOUND, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %13
  store i32 0, i32* %2, align 4
  br label %40

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %40

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_reference_name(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_reference_name(i32* %32)
  %34 = call i64 @strcmp(i32 %31, i32 %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_reference_free(i32* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %29, %28, %24, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @git_reference_is_branch(i32*) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_owner(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
