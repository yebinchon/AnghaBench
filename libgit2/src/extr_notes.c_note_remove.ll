; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_note_remove.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_note_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remove_note_in_tree_eexists_cb = common dso_local global i32 0, align 4
@remove_note_in_tree_enotfound_cb = common dso_local global i32 0, align 4
@GIT_NOTES_DEFAULT_MSG_RM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i8*, i32*, i8*, i32**)* @note_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_remove(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i32* %5, i8* %6, i32** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32** %7, i32*** %16, align 8
  store i32* null, i32** %18, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = load i32, i32* @remove_note_in_tree_eexists_cb, align 4
  %24 = load i32, i32* @remove_note_in_tree_enotfound_cb, align 4
  %25 = call i32 @manipulate_note_in_tree_r(i32** %18, i32* %20, i32* %21, i32* null, i8* %22, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  br label %52

28:                                               ; preds = %8
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @GIT_NOTES_DEFAULT_MSG_RM, align 4
  %34 = load i32*, i32** %18, align 8
  %35 = load i32**, i32*** %16, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 1
  %40 = load i32**, i32*** %16, align 8
  %41 = call i32 @git_commit_create(i32* %19, i32* %29, i8* %30, i32* %31, i32* %32, i32* null, i32 %33, i32* %34, i32 %39, i32** %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %52

45:                                               ; preds = %28
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @git_oid_cpy(i32* %49, i32* %19)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %44, %27
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @git_tree_free(i32* %53)
  %55 = load i32, i32* %17, align 4
  ret i32 %55
}

declare dso_local i32 @manipulate_note_in_tree_r(i32**, i32*, i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @git_commit_create(i32*, i32*, i8*, i32*, i32*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
