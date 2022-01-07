; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_reflog.c_git_reflog_free.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_reflog.c_git_reflog_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }

@git_refdb__free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_reflog_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = icmp eq %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %47

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @git_refdb__free, align 4
  %18 = call i32 @GIT_REFCOUNT_DEC(i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %8
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %3, align 8
  %31 = call i32* @git_vector_get(%struct.TYPE_7__* %29, i64 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_reflog_entry__free(i32* %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = call i32 @git_vector_free(%struct.TYPE_7__* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @git__free(%struct.TYPE_6__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = call i32 @git__free(%struct.TYPE_6__* %45)
  br label %47

47:                                               ; preds = %37, %7
  ret void
}

declare dso_local i32 @GIT_REFCOUNT_DEC(i64, i32) #1

declare dso_local i32* @git_vector_get(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @git_reflog_entry__free(i32*) #1

declare dso_local i32 @git_vector_free(%struct.TYPE_7__*) #1

declare dso_local i32 @git__free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
