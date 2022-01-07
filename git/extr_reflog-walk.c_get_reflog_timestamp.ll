; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_timestamp.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reflog_walk_info = type { %struct.commit_reflog* }
%struct.commit_reflog = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.reflog_info* }
%struct.reflog_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_reflog_timestamp(%struct.reflog_walk_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reflog_walk_info*, align 8
  %4 = alloca %struct.commit_reflog*, align 8
  %5 = alloca %struct.reflog_info*, align 8
  store %struct.reflog_walk_info* %0, %struct.reflog_walk_info** %3, align 8
  %6 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %3, align 8
  %7 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %6, i32 0, i32 0
  %8 = load %struct.commit_reflog*, %struct.commit_reflog** %7, align 8
  store %struct.commit_reflog* %8, %struct.commit_reflog** %4, align 8
  %9 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %10 = icmp ne %struct.commit_reflog* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %14 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.reflog_info*, %struct.reflog_info** %16, align 8
  %18 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %19 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %17, i64 %22
  store %struct.reflog_info* %23, %struct.reflog_info** %5, align 8
  %24 = load %struct.reflog_info*, %struct.reflog_info** %5, align 8
  %25 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
