; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_signal_reinit_iter_fn.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_signal_reinit_iter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.eventop* }
%struct.eventop = type { i32 (%struct.event_base.0*, i32, i32, i32, i32*)* }
%struct.event_base.0 = type opaque
%struct.evmap_signal = type { i32 }

@EV_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)* @evmap_signal_reinit_iter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evmap_signal_reinit_iter_fn(%struct.event_base* %0, i32 %1, %struct.evmap_signal* %2, i8* %3) #0 {
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evmap_signal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.eventop*, align 8
  %10 = alloca i32*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.evmap_signal* %2, %struct.evmap_signal** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.event_base*, %struct.event_base** %5, align 8
  %12 = getelementptr inbounds %struct.event_base, %struct.event_base* %11, i32 0, i32 0
  %13 = load %struct.eventop*, %struct.eventop** %12, align 8
  store %struct.eventop* %13, %struct.eventop** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load %struct.evmap_signal*, %struct.evmap_signal** %7, align 8
  %17 = getelementptr inbounds %struct.evmap_signal, %struct.evmap_signal* %16, i32 0, i32 0
  %18 = call i32 @LIST_EMPTY(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %4
  %21 = load %struct.eventop*, %struct.eventop** %9, align 8
  %22 = getelementptr inbounds %struct.eventop, %struct.eventop* %21, i32 0, i32 0
  %23 = load i32 (%struct.event_base.0*, i32, i32, i32, i32*)*, i32 (%struct.event_base.0*, i32, i32, i32, i32*)** %22, align 8
  %24 = load %struct.event_base*, %struct.event_base** %5, align 8
  %25 = bitcast %struct.event_base* %24 to %struct.event_base.0*
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EV_SIGNAL, align 4
  %28 = call i32 %23(%struct.event_base.0* %25, i32 %26, i32 0, i32 %27, i32* null)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32*, i32** %10, align 8
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %20
  br label %33

33:                                               ; preds = %32, %4
  ret i32 0
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
