; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_conflict_iterator_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_conflict_iterator_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_conflict_iterator_new(%struct.TYPE_5__** %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %7 = icmp ne %struct.TYPE_5__** %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call %struct.TYPE_5__* @git__calloc(i32 1, i32 8)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %22, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
