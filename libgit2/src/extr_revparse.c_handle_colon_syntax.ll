; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_colon_syntax.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_colon_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*)* @handle_colon_syntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_colon_syntax(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %13 = call i32 @git_object_peel(i32** %8, i32* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GIT_ENOTFOUND, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = load i32**, i32*** %5, align 8
  store i32* %31, i32** %32, align 8
  store i32 0, i32* %4, align 4
  br label %51

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @git_tree_entry_bypath(i32** %10, i32* %34, i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %45

39:                                               ; preds = %33
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @git_object_owner(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @git_tree_entry_to_object(i32** %40, i32 %42, i32* %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %39, %38
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @git_tree_entry_free(i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @git_object_free(i32* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %30, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32*, i8*) #1

declare dso_local i32 @git_tree_entry_to_object(i32**, i32, i32*) #1

declare dso_local i32 @git_object_owner(i32*) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
