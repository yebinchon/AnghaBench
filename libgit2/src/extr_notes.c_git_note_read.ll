; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_git_note_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_git_note_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_note_read(i32** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @retrieve_note_commit(i32** %11, i8** %10, i32* %12, i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %24

18:                                               ; preds = %4
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @git_note_commit_read(i32** %19, i32* %20, i32* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @git__free(i8* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @git_commit_free(i32* %27)
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local i32 @retrieve_note_commit(i32**, i8**, i32*, i8*) #1

declare dso_local i32 @git_note_commit_read(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
