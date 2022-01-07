; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event* @event_new(%struct.event_base* %0, i32 %1, i16 signext %2, void (i32, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.event*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca void (i32, i16, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.event*, align 8
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call %struct.event* @mm_malloc(i32 4)
  store %struct.event* %13, %struct.event** %12, align 8
  %14 = load %struct.event*, %struct.event** %12, align 8
  %15 = icmp eq %struct.event* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store %struct.event* null, %struct.event** %6, align 8
  br label %31

17:                                               ; preds = %5
  %18 = load %struct.event*, %struct.event** %12, align 8
  %19 = load %struct.event_base*, %struct.event_base** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i16, i16* %9, align 2
  %22 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @event_assign(%struct.event* %18, %struct.event_base* %19, i32 %20, i16 signext %21, void (i32, i16, i8*)* %22, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.event*, %struct.event** %12, align 8
  %28 = call i32 @mm_free(%struct.event* %27)
  store %struct.event* null, %struct.event** %6, align 8
  br label %31

29:                                               ; preds = %17
  %30 = load %struct.event*, %struct.event** %12, align 8
  store %struct.event* %30, %struct.event** %6, align 8
  br label %31

31:                                               ; preds = %29, %26, %16
  %32 = load %struct.event*, %struct.event** %6, align 8
  ret %struct.event* %32
}

declare dso_local %struct.event* @mm_malloc(i32) #1

declare dso_local i64 @event_assign(%struct.event*, %struct.event_base*, i32, i16 signext, void (i32, i16, i8*)*, i8*) #1

declare dso_local i32 @mm_free(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
