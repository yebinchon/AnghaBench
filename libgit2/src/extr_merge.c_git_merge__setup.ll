; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge__setup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge__setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge__setup(i32* %0, i32* %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32**, i32*** %7, align 8
  %17 = icmp ne i32** %16, null
  br label %18

18:                                               ; preds = %15, %12, %4
  %19 = phi i1 [ false, %12 ], [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @git_annotated_commit_id(i32* %23)
  %25 = call i32 @git_repository__set_orig_head(i32* %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %18
  %28 = load i32*, i32** %5, align 8
  %29 = load i32**, i32*** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @write_merge_head(i32* %28, i32** %29, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @write_merge_mode(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32**, i32*** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @write_merge_msg(i32* %38, i32** %39, i64 %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %37, %33, %27, %18
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_repository__set_orig_head(i32*, i32) #1

declare dso_local i32 @git_annotated_commit_id(i32*) #1

declare dso_local i32 @write_merge_head(i32*, i32**, i64) #1

declare dso_local i32 @write_merge_mode(i32*) #1

declare dso_local i32 @write_merge_msg(i32*, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
