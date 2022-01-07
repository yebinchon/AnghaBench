; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_init_operations.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_init_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_SORT_REVERSE = common dso_local global i32 0, align 4
@GIT_REBASE_OPERATION_PICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32*, i32*)* @rebase_init_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_init_operations(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %19, %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @git_revwalk_new(i32** %11, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @git_annotated_commit_id(i32* %29)
  %31 = call i32 @git_revwalk_push(i32* %28, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @git_annotated_commit_id(i32* %35)
  %37 = call i32 @git_revwalk_hide(i32* %34, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27, %21
  br label %70

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %43 = call i32 @git_revwalk_sorting(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %63, %62, %40
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @git_revwalk_next(i32* %13, i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @git_commit_lookup(i32** %12, i32* %49, i32* %13)
  store i32 %50, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %70

53:                                               ; preds = %48
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @git_commit_parentcount(i32* %54)
  %56 = icmp sgt i32 %55, 1
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @git_commit_free(i32* %58)
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %44

63:                                               ; preds = %53
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = load i32, i32* @GIT_REBASE_OPERATION_PICK, align 4
  %66 = call i32* @rebase_operation_alloc(%struct.TYPE_4__* %64, i32 %65, i32* %13, i32* null)
  store i32* %66, i32** %15, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %67)
  br label %44

69:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %69, %52, %39
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @git_revwalk_free(i32* %71)
  %73 = load i32, i32* %16, align 4
  ret i32 %73
}

declare dso_local i32 @git_revwalk_new(i32**, i32) #1

declare dso_local i32 @git_revwalk_push(i32*, i32) #1

declare dso_local i32 @git_annotated_commit_id(i32*) #1

declare dso_local i32 @git_revwalk_hide(i32*, i32) #1

declare dso_local i32 @git_revwalk_sorting(i32*, i32) #1

declare dso_local i32 @git_revwalk_next(i32*, i32*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_commit_parentcount(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32* @rebase_operation_alloc(%struct.TYPE_4__*, i32, i32*, i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
