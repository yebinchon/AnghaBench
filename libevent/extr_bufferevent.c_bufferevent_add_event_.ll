; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_add_event_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_add_event_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_add_event_(%struct.event* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event*, align 8
  %5 = alloca %struct.timeval*, align 8
  store %struct.event* %0, %struct.event** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %6 = load %struct.timeval*, %struct.timeval** %5, align 8
  %7 = call i32 @evutil_timerisset(%struct.timeval* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.event*, %struct.event** %4, align 8
  %11 = call i32 @event_add(%struct.event* %10, %struct.timeval* null)
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.event*, %struct.event** %4, align 8
  %14 = load %struct.timeval*, %struct.timeval** %5, align 8
  %15 = call i32 @event_add(%struct.event* %13, %struct.timeval* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @evutil_timerisset(%struct.timeval*) #1

declare dso_local i32 @event_add(%struct.event*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
