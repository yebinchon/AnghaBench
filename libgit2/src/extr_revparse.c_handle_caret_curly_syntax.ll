; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_caret_curly_syntax.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_caret_curly_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_INVALID = common dso_local global i64 0, align 8
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*)* @handle_caret_curly_syntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_caret_curly_syntax(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @dereference_to_non_tag(i32** %14, i32* %15)
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 47
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @git_object_owner(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @git_object_id(i32* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32 @handle_grep_syntax(i32** %23, i32 %25, i32 %27, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %17
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @parse_obj_type(i8* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @GIT_OBJECT_INVALID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %31
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @git_object_peel(i32** %40, i32* %41, i64 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %37, %22, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @dereference_to_non_tag(i32**, i32*) #1

declare dso_local i32 @handle_grep_syntax(i32**, i32, i32, i8*) #1

declare dso_local i32 @git_object_owner(i32*) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i64 @parse_obj_type(i8*) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
