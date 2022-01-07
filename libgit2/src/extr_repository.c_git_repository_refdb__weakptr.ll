; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_refdb__weakptr.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_refdb__weakptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_refdb__weakptr(i32** %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32**, i32*** %3, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = call i32 @git_refdb_open(i32** %6, %struct.TYPE_5__* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = call i32 @GIT_REFCOUNT_OWN(i32* %26, %struct.TYPE_5__* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @git__compare_and_swap(i32** %30, i32* null, i32* %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @GIT_REFCOUNT_OWN(i32* %36, %struct.TYPE_5__* null)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @git_refdb_free(i32* %38)
  br label %40

40:                                               ; preds = %35, %25
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32**, i32*** %3, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_refdb_open(i32**, %struct.TYPE_5__*) #1

declare dso_local i32 @GIT_REFCOUNT_OWN(i32*, %struct.TYPE_5__*) #1

declare dso_local i32* @git__compare_and_swap(i32**, i32*, i32*) #1

declare dso_local i32 @git_refdb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
