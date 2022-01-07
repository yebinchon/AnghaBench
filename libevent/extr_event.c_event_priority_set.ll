; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_priority_set.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_priority_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EVLIST_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_priority_set(%struct.event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event*, align 8
  %5 = alloca i32, align 4
  store %struct.event* %0, %struct.event** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.event*, %struct.event** %4, align 8
  %7 = call i32 @event_debug_assert_is_setup_(%struct.event* %6)
  %8 = load %struct.event*, %struct.event** %4, align 8
  %9 = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EVLIST_ACTIVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.event*, %struct.event** %4, align 8
  %21 = getelementptr inbounds %struct.event, %struct.event* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %15
  store i32 -1, i32* %3, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.event*, %struct.event** %4, align 8
  %30 = getelementptr inbounds %struct.event, %struct.event* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %26, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @event_debug_assert_is_setup_(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
