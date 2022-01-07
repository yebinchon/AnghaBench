; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_delete_all_in_dlist.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_delete_all_in_dlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_dlist = type { i32 }
%struct.event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_dlist*)* @delete_all_in_dlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_all_in_dlist(%struct.event_dlist* %0) #0 {
  %2 = alloca %struct.event_dlist*, align 8
  %3 = alloca %struct.event*, align 8
  store %struct.event_dlist* %0, %struct.event_dlist** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.event_dlist*, %struct.event_dlist** %2, align 8
  %6 = call %struct.event* @LIST_FIRST(%struct.event_dlist* %5)
  store %struct.event* %6, %struct.event** %3, align 8
  %7 = icmp ne %struct.event* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load %struct.event*, %struct.event** %3, align 8
  %10 = call i32 @event_del(%struct.event* %9)
  br label %4

11:                                               ; preds = %4
  ret i32 0
}

declare dso_local %struct.event* @LIST_FIRST(%struct.event_dlist*) #1

declare dso_local i32 @event_del(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
