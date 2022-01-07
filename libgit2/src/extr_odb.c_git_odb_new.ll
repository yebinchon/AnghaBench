; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@backend_sort_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_new(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  %5 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 8)
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = call i64 @git_cache_init(i32* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @git__free(%struct.TYPE_7__* %13)
  store i32 -1, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* @backend_sort_cmp, align 4
  %19 = call i64 @git_vector_init(i32* %17, i32 4, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @git_cache_dispose(i32* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = call i32 @git__free(%struct.TYPE_7__* %25)
  store i32 -1, i32* %2, align 4
  br label %32

27:                                               ; preds = %15
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_7__* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %21, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i64 @git_cache_init(i32*) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32) #1

declare dso_local i32 @git_cache_dispose(i32*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
