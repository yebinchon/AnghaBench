; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_restart_friends_timers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_restart_friends_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.relative* }
%struct.relative = type { i32, %struct.relative*, i32 }

@RELATIVES = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restart_friends_timers() #0 {
  %1 = alloca %struct.relative*, align 8
  %2 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %2, %struct.relative** %1, align 8
  br label %3

3:                                                ; preds = %8, %0
  %4 = load %struct.relative*, %struct.relative** %1, align 8
  %5 = getelementptr inbounds %struct.relative, %struct.relative* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = load i32, i32* @precise_now, align 4
  %10 = load %struct.relative*, %struct.relative** %1, align 8
  %11 = getelementptr inbounds %struct.relative, %struct.relative* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.relative*, %struct.relative** %1, align 8
  %13 = getelementptr inbounds %struct.relative, %struct.relative* %12, i32 0, i32 1
  %14 = load %struct.relative*, %struct.relative** %13, align 8
  store %struct.relative* %14, %struct.relative** %1, align 8
  br label %3

15:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
