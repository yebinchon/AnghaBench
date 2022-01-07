; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_git_note_remove.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_git_note_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_note_remove(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @retrieve_note_commit(i32** %13, i8** %12, i32* %16, i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %36

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @git_note_commit_remove(i32* %14, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @git_reference_create(i32** %15, i32* %33, i8* %34, i32* %14, i32 1, i32* null)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %31, %21
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @git__free(i8* %37)
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @git_reference_free(i32* %39)
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @git_commit_free(i32* %41)
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @retrieve_note_commit(i32**, i8**, i32*, i8*) #1

declare dso_local i32 @git_note_commit_remove(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
