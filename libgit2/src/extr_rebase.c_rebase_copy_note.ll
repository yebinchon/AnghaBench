; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_copy_note.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_copy_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32*, i32*, i32*)* @rebase_copy_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_copy_note(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @git_note_read(i32** %11, i32 %17, i8* %18, i32* %19)
  store i32 %20, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @GIT_ENOTFOUND, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @git_error_clear()
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %26, %22
  br label %62

29:                                               ; preds = %5
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @git_signature_default(i32** %13, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @GIT_ENOTFOUND, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = call i32 @git_signature_now(i32** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %38
  br label %62

46:                                               ; preds = %42
  %47 = call i32 (...) @git_error_clear()
  br label %48

48:                                               ; preds = %46, %32
  %49 = load i32*, i32** %13, align 8
  store i32* %49, i32** %10, align 8
  br label %50

50:                                               ; preds = %48, %29
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @git_note_author(i32* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @git_note_message(i32* %59)
  %61 = call i32 @git_note_create(i32* %12, i32 %53, i8* %54, i32 %56, i32* %57, i32* %58, i32 %60, i32 0)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %50, %45, %28
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @git_note_free(i32* %63)
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @git_signature_free(i32* %65)
  %67 = load i32, i32* %14, align 4
  ret i32 %67
}

declare dso_local i32 @git_note_read(i32**, i32, i8*, i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_signature_default(i32**, i32) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_note_create(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @git_note_author(i32*) #1

declare dso_local i32 @git_note_message(i32*) #1

declare dso_local i32 @git_note_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
