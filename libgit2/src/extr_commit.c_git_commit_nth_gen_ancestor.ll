; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_nth_gen_ancestor.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_nth_gen_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_commit_nth_gen_ancestor(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @git_commit_dup(i32** %8, i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %49

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32**, i32*** %5, align 8
  store i32* %28, i32** %29, align 8
  store i32 0, i32* %4, align 4
  br label %49

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @git_commit_parent(i32** %9, i32* %36, i32 0)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @git_commit_free(i32* %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32*, i32** %9, align 8
  store i32* %45, i32** %8, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load i32*, i32** %9, align 8
  %48 = load i32**, i32*** %5, align 8
  store i32* %47, i32** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %42, %27, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_commit_dup(i32**, i32*) #1

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
