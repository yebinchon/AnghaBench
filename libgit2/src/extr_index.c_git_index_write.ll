; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@GIT_INDEXWRITER_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_write(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load i32, i32* @GIT_INDEXWRITER_INIT, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = call i32 @truncate_racily_clean(%struct.TYPE_5__* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = call i32 @git_indexwriter_init(i32* %3, %struct.TYPE_5__* %8)
  store i32 %9, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = call i32 @git_indexwriter_commit(i32* %3)
  store i32 %12, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %11, %1
  %18 = call i32 @git_indexwriter_cleanup(i32* %3)
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @truncate_racily_clean(%struct.TYPE_5__*) #1

declare dso_local i32 @git_indexwriter_init(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @git_indexwriter_commit(i32*) #1

declare dso_local i32 @git_indexwriter_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
