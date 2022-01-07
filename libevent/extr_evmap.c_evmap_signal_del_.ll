; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_signal_del_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_signal_del_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_signal_map, %struct.eventop* }
%struct.event_signal_map = type { i32 }
%struct.eventop = type { i32 (%struct.event_base.0*, i32, i32, i32, i32*)* }
%struct.event_base.0 = type opaque
%struct.event = type { i32 }
%struct.evmap_signal = type { i32 }

@evmap_signal = common dso_local global i32 0, align 4
@ev_signal_next = common dso_local global i32 0, align 4
@EV_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evmap_signal_del_(%struct.event_base* %0, i32 %1, %struct.event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.eventop*, align 8
  %9 = alloca %struct.event_signal_map*, align 8
  %10 = alloca %struct.evmap_signal*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.event* %2, %struct.event** %7, align 8
  %11 = load %struct.event_base*, %struct.event_base** %5, align 8
  %12 = getelementptr inbounds %struct.event_base, %struct.event_base* %11, i32 0, i32 1
  %13 = load %struct.eventop*, %struct.eventop** %12, align 8
  store %struct.eventop* %13, %struct.eventop** %8, align 8
  %14 = load %struct.event_base*, %struct.event_base** %5, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 0
  store %struct.event_signal_map* %15, %struct.event_signal_map** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %21 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %27 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @evmap_signal, align 4
  %30 = call i32 @GET_SIGNAL_SLOT(%struct.evmap_signal* %26, %struct.event_signal_map* %27, i32 %28, i32 %29)
  %31 = load %struct.event*, %struct.event** %7, align 8
  %32 = load i32, i32* @ev_signal_next, align 4
  %33 = call i32 @LIST_REMOVE(%struct.event* %31, i32 %32)
  %34 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %35 = getelementptr inbounds %struct.evmap_signal, %struct.evmap_signal* %34, i32 0, i32 0
  %36 = call i32* @LIST_FIRST(i32* %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %25
  %39 = load %struct.eventop*, %struct.eventop** %8, align 8
  %40 = getelementptr inbounds %struct.eventop, %struct.eventop* %39, i32 0, i32 0
  %41 = load i32 (%struct.event_base.0*, i32, i32, i32, i32*)*, i32 (%struct.event_base.0*, i32, i32, i32, i32*)** %40, align 8
  %42 = load %struct.event_base*, %struct.event_base** %5, align 8
  %43 = bitcast %struct.event_base* %42 to %struct.event_base.0*
  %44 = load %struct.event*, %struct.event** %7, align 8
  %45 = getelementptr inbounds %struct.event, %struct.event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EV_SIGNAL, align 4
  %48 = call i32 %41(%struct.event_base.0* %43, i32 %46, i32 0, i32 %47, i32* null)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %53

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %25
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %50, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @GET_SIGNAL_SLOT(%struct.evmap_signal*, %struct.event_signal_map*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.event*, i32) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
