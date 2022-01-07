; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_annotated_commit.c_git_annotated_commit_from_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_annotated_commit.c_git_annotated_commit_from_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_annotated_commit_from_ref(%struct.TYPE_4__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %11 = icmp ne %struct.TYPE_4__** %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi i1 [ false, %12 ], [ false, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %25 = call i32 @git_reference_peel(i32** %8, i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @git_object_id(i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @git_reference_name(i32* %34)
  %36 = call i32 @annotated_commit_init_from_id(%struct.TYPE_4__** %30, i32* %31, i32 %33, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @git_reference_name(i32* %40)
  %42 = call i32 @git__strdup(i32 %41)
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GIT_ERROR_CHECK_ALLOC(i32 %49)
  br label %51

51:                                               ; preds = %39, %29
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @git_object_free(i32* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @annotated_commit_init_from_id(%struct.TYPE_4__**, i32*, i32, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git__strdup(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
