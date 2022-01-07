; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_git_stash_foreach.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_git_stash_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REFS_STASH_FILE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_stash_foreach(i32* %0, i32 (i64, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32 (i64, i32, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 (i64, i32, i32, i8*)* %1, i32 (i64, i32, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @GIT_REFS_STASH_FILE, align 4
  %16 = call i32 @git_reference_lookup(i32** %8, i32* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GIT_ENOTFOUND, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @git_error_clear()
  store i32 0, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %61

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @GIT_REFS_STASH_FILE, align 4
  %29 = call i32 @git_reflog_read(i32** %9, i32* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %61

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @git_reflog_entrycount(i32* %33)
  store i64 %34, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %57, %32
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32* @git_reflog_entry_byindex(i32* %40, i64 %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32 (i64, i32, i32, i8*)*, i32 (i64, i32, i32, i8*)** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @git_reflog_entry_message(i32* %45)
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @git_reflog_entry_id_new(i32* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 %43(i64 %44, i32 %46, i32 %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @git_error_set_after_callback(i32 %54)
  br label %60

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %11, align 8
  br label %35

60:                                               ; preds = %53, %35
  br label %61

61:                                               ; preds = %60, %31, %25
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @git_reference_free(i32* %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @git_reflog_free(i32* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @git_reference_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_reflog_read(i32**, i32*, i32) #1

declare dso_local i64 @git_reflog_entrycount(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i64) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reflog_entry_id_new(i32*) #1

declare dso_local i32 @git_error_set_after_callback(i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
