; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__list.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@fixture = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GIT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_refs__list() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fixture, i32 0, i32 1), align 4
  %8 = call i32 @git_reference_list(%struct.TYPE_5__* %1, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fixture, i32 0, i32 0), align 4
  %11 = call i32 @git_reference_list(%struct.TYPE_5__* %2, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i32, i32* @GIT_ERROR, align 4
  store i32 %19, i32* %5, align 4
  br label %62

20:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcmp(i32 %38, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %52

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %27

52:                                               ; preds = %47, %27
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @GIT_ERROR, align 4
  store i32 %56, i32* %5, align 4
  br label %62

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %21

61:                                               ; preds = %21
  br label %62

62:                                               ; preds = %61, %55, %18
  %63 = call i32 @git_strarray_free(%struct.TYPE_5__* %1)
  %64 = call i32 @git_strarray_free(%struct.TYPE_5__* %2)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @cl_git_pass(i32 %65)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_list(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
