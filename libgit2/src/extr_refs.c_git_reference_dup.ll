; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_dup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference_dup(%struct.TYPE_9__** %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_9__* @git_reference__alloc_symbolic(i32 %13, i32 %17)
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %19, align 8
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = call %struct.TYPE_9__* @git_reference__alloc(i32 %23, i32* %26, i32* %28)
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %30, align 8
  br label %31

31:                                               ; preds = %20, %10
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @GIT_REFCOUNT_INC(i32 %44)
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @git_reference__alloc_symbolic(i32, i32) #1

declare dso_local %struct.TYPE_9__* @git_reference__alloc(i32, i32*, i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
