; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_EUNBORNBRANCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_head(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @assert(i32** %8)
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @GIT_HEAD_FILE, align 4
  %12 = call i32 @git_reference_lookup(i32** %6, i32* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @git_reference_type(i32* %17)
  %19 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = load i32**, i32*** %4, align 8
  store i32* %22, i32** %23, align 8
  store i32 0, i32* %3, align 4
  br label %41

24:                                               ; preds = %16
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @git_reference_symbolic_target(i32* %27)
  %29 = call i32 @git_reference_lookup_resolved(i32** %25, i32* %26, i32 %28, i32 -1)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @git_reference_free(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @GIT_ENOTFOUND, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @GIT_EUNBORNBRANCH, align 4
  br label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %21, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i32) #1

declare dso_local i64 @git_reference_type(i32*) #1

declare dso_local i32 @git_reference_lookup_resolved(i32**, i32*, i32, i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
