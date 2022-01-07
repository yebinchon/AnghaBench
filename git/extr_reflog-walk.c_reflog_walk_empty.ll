; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_reflog_walk_empty.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_reflog_walk_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reflog_walk_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reflog_walk_empty(%struct.reflog_walk_info* %0) #0 {
  %2 = alloca %struct.reflog_walk_info*, align 8
  store %struct.reflog_walk_info* %0, %struct.reflog_walk_info** %2, align 8
  %3 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %2, align 8
  %4 = icmp ne %struct.reflog_walk_info* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %2, align 8
  %7 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
