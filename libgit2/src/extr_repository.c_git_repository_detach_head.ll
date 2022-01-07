; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_detach_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_detach_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_detach_head(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @GIT_HEAD_FILE, align 4
  %15 = call i32 @git_reference_lookup(i32** %6, i32* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_repository_head(i32** %4, i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %47

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_reference_target(i32* %26)
  %28 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %29 = call i32 @git_object_lookup(i32** %7, i32* %25, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %47

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @git_object_id(i32* %34)
  %36 = call i32 @git_oid_tostr_s(i32 %35)
  %37 = call i32 @checkout_message(i32* %8, i32* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %47

40:                                               ; preds = %32
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @GIT_HEAD_FILE, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_reference_target(i32* %43)
  %45 = call i32 @git_buf_cstr(i32* %8)
  %46 = call i32 @git_reference_create(i32** %5, i32* %41, i32 %42, i32 %44, i32 1, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %39, %31, %23
  %48 = call i32 @git_buf_dispose(i32* %8)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @git_object_free(i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @git_reference_free(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @git_reference_free(i32* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @git_reference_free(i32* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_repository_head(i32**, i32*) #1

declare dso_local i32 @git_object_lookup(i32**, i32*, i32, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @checkout_message(i32*, i32*, i32) #1

declare dso_local i32 @git_oid_tostr_s(i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
