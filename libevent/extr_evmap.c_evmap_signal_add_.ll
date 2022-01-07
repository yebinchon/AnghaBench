; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_signal_add_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_signal_add_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.eventop*, %struct.event_signal_map }
%struct.eventop = type { i32 (%struct.event_base.0*, i32, i32, i32, i32*)*, i32 }
%struct.event_base.0 = type opaque
%struct.event_signal_map = type { i32 }
%struct.event = type { i32 }
%struct.evmap_signal = type { i32 }

@NSIG = common dso_local global i32 0, align 4
@evmap_signal = common dso_local global i32 0, align 4
@evmap_signal_init = common dso_local global i32 0, align 4
@EV_SIGNAL = common dso_local global i32 0, align 4
@ev_signal_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evmap_signal_add_(%struct.event_base* %0, i32 %1, %struct.event* %2) #0 {
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
  %12 = getelementptr inbounds %struct.event_base, %struct.event_base* %11, i32 0, i32 0
  %13 = load %struct.eventop*, %struct.eventop** %12, align 8
  store %struct.eventop* %13, %struct.eventop** %8, align 8
  %14 = load %struct.event_base*, %struct.event_base** %5, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 1
  store %struct.event_signal_map* %15, %struct.event_signal_map** %9, align 8
  store %struct.evmap_signal* null, %struct.evmap_signal** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NSIG, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %72

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %26 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @evmap_make_space(%struct.event_signal_map* %30, i32 %31, i32 8)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %72

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %38 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @evmap_signal, align 4
  %41 = load i32, i32* @evmap_signal_init, align 4
  %42 = load %struct.event_base*, %struct.event_base** %5, align 8
  %43 = getelementptr inbounds %struct.event_base, %struct.event_base* %42, i32 0, i32 0
  %44 = load %struct.eventop*, %struct.eventop** %43, align 8
  %45 = getelementptr inbounds %struct.eventop, %struct.eventop* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @GET_SIGNAL_SLOT_AND_CTOR(%struct.evmap_signal* %37, %struct.event_signal_map* %38, i32 %39, i32 %40, i32 %41, i32 %46)
  %48 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %49 = getelementptr inbounds %struct.evmap_signal, %struct.evmap_signal* %48, i32 0, i32 0
  %50 = call i64 @LIST_EMPTY(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %36
  %53 = load %struct.eventop*, %struct.eventop** %8, align 8
  %54 = getelementptr inbounds %struct.eventop, %struct.eventop* %53, i32 0, i32 0
  %55 = load i32 (%struct.event_base.0*, i32, i32, i32, i32*)*, i32 (%struct.event_base.0*, i32, i32, i32, i32*)** %54, align 8
  %56 = load %struct.event_base*, %struct.event_base** %5, align 8
  %57 = bitcast %struct.event_base* %56 to %struct.event_base.0*
  %58 = load %struct.event*, %struct.event** %7, align 8
  %59 = getelementptr inbounds %struct.event, %struct.event* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EV_SIGNAL, align 4
  %62 = call i32 %55(%struct.event_base.0* %57, i32 %60, i32 0, i32 %61, i32* null)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %72

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %68 = getelementptr inbounds %struct.evmap_signal, %struct.evmap_signal* %67, i32 0, i32 0
  %69 = load %struct.event*, %struct.event** %7, align 8
  %70 = load i32, i32* @ev_signal_next, align 4
  %71 = call i32 @LIST_INSERT_HEAD(i32* %68, %struct.event* %69, i32 %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %64, %34, %22
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @evmap_make_space(%struct.event_signal_map*, i32, i32) #1

declare dso_local i32 @GET_SIGNAL_SLOT_AND_CTOR(%struct.evmap_signal*, %struct.event_signal_map*, i32, i32, i32, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
