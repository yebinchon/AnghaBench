; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_git_note_create.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_git_note_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_note_create(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4, i32* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store i8* null, i8** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @retrieve_note_commit(i32** %19, i8** %18, i32* %23, i8* %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @GIT_ENOTFOUND, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %55

33:                                               ; preds = %28, %8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @git_note_commit_create(i32* %22, i32* %21, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i8* %39, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %55

45:                                               ; preds = %33
  %46 = load i32*, i32** %10, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = call i32 @git_reference_create(i32** %20, i32* %46, i8* %47, i32* %22, i32 1, i32* null)
  store i32 %48, i32* %17, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @git_oid_cpy(i32* %52, i32* %21)
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %44, %32
  %56 = load i8*, i8** %18, align 8
  %57 = call i32 @git__free(i8* %56)
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @git_commit_free(i32* %58)
  %60 = load i32*, i32** %20, align 8
  %61 = call i32 @git_reference_free(i32* %60)
  %62 = load i32, i32* %17, align 4
  ret i32 %62
}

declare dso_local i32 @retrieve_note_commit(i32**, i8**, i32*, i8*) #1

declare dso_local i32 @git_note_commit_create(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
