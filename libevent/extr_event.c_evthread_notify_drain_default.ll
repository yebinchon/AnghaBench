; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_evthread_notify_drain_default.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_evthread_notify_drain_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64 }

@th_base_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @evthread_notify_drain_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evthread_notify_drain_default(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca %struct.event_base*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.event_base*
  store %struct.event_base* %10, %struct.event_base** %8, align 8
  br label %11

11:                                               ; preds = %16, %3
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %14 = call i64 @read(i32 %12, i8* %13, i32 1024)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %11

17:                                               ; preds = %11
  %18 = load %struct.event_base*, %struct.event_base** %8, align 8
  %19 = load i32, i32* @th_base_lock, align 4
  %20 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %18, i32 %19)
  %21 = load %struct.event_base*, %struct.event_base** %8, align 8
  %22 = getelementptr inbounds %struct.event_base, %struct.event_base* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.event_base*, %struct.event_base** %8, align 8
  %24 = load i32, i32* @th_base_lock, align 4
  %25 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %23, i32 %24)
  ret void
}

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
