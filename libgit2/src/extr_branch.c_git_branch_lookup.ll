; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_lookup(i32** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %10 = load i32**, i32*** %5, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %15, %12, %4
  %19 = phi i1 [ false, %12 ], [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %45 [
    i32 129, label %23
    i32 128, label %23
    i32 130, label %31
  ]

23:                                               ; preds = %18, %18
  %24 = load i32**, i32*** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 128
  %29 = zext i1 %28 to i32
  %30 = call i32 @retrieve_branch_reference(i32** %24, i32* %25, i8* %26, i32 %29)
  store i32 %30, i32* %9, align 4
  br label %47

31:                                               ; preds = %18
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @retrieve_branch_reference(i32** %32, i32* %33, i8* %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @GIT_ENOTFOUND, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @retrieve_branch_reference(i32** %40, i32* %41, i8* %42, i32 1)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %31
  br label %47

45:                                               ; preds = %18
  %46 = call i32 @assert(i32 0)
  br label %47

47:                                               ; preds = %45, %44, %23
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @retrieve_branch_reference(i32**, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
