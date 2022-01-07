; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_tree_write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_tree_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, i8*, i32)* @tree_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_write(i32** %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %14, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @git_treebuilder_new(i32** %14, i32* %17, i32* %18)
  store i32 %19, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %50

22:                                               ; preds = %6
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32*, i32** %14, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @git_treebuilder_insert(i32** %15, i32* %26, i8* %27, i32* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %50

33:                                               ; preds = %25
  br label %41

34:                                               ; preds = %22
  %35 = load i32*, i32** %14, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @git_treebuilder_remove(i32* %35, i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %50

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @git_treebuilder_write(i32* %16, i32* %42)
  store i32 %43, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %50

46:                                               ; preds = %41
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @git_tree_lookup(i32** %47, i32* %48, i32* %16)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %46, %45, %39, %32, %21
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @git_treebuilder_free(i32* %51)
  %53 = load i32, i32* %13, align 4
  ret i32 %53
}

declare dso_local i32 @git_treebuilder_new(i32**, i32*, i32*) #1

declare dso_local i32 @git_treebuilder_insert(i32**, i32*, i8*, i32*, i32) #1

declare dso_local i32 @git_treebuilder_remove(i32*, i8*) #1

declare dso_local i32 @git_treebuilder_write(i32*, i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
