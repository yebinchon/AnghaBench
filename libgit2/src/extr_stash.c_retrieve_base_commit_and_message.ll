; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_retrieve_base_commit_and_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_retrieve_base_commit_and_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(no branch): \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*)* @retrieve_base_commit_and_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_base_commit_and_message(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @retrieve_head(i32** %8, i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %4, align 4
  br label %55

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @git_reference_name(i32* %16)
  %18 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @git_buf_puts(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  br label %31

23:                                               ; preds = %15
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @git_reference_name(i32* %25)
  %27 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %28 = call i64 @strlen(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @git_buf_printf(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %51

35:                                               ; preds = %31
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @git_reference_target(i32* %38)
  %40 = call i32 @git_commit_lookup(i32** %36, i32* %37, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %51

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @append_commit_description(i32* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %49, %42, %34
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @git_reference_free(i32* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @retrieve_head(i32**, i32*) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i64 @git_reference_name(i32*) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @append_commit_description(i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
