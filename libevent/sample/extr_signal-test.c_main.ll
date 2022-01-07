; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_signal-test.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_signal-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_base = type { i32 }

@SIGINT = common dso_local global i32 0, align 4
@signal_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.event* null, %struct.event** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %9, %struct.event_base** %7, align 8
  %10 = load %struct.event_base*, %struct.event_base** %7, align 8
  %11 = icmp ne %struct.event_base* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.event_base*, %struct.event_base** %7, align 8
  %15 = load i32, i32* @SIGINT, align 4
  %16 = load i32, i32* @signal_cb, align 4
  %17 = call i32 (...) @event_self_cbarg()
  %18 = call %struct.event* @evsignal_new(%struct.event_base* %14, i32 %15, i32 %16, i32 %17)
  store %struct.event* %18, %struct.event** %6, align 8
  %19 = load %struct.event*, %struct.event** %6, align 8
  %20 = icmp ne %struct.event* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 2, i32* %8, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.event*, %struct.event** %6, align 8
  %24 = call i32 @event_add(%struct.event* %23, i32* null)
  %25 = load %struct.event_base*, %struct.event_base** %7, align 8
  %26 = call i32 @event_base_dispatch(%struct.event_base* %25)
  br label %27

27:                                               ; preds = %22, %21, %12
  %28 = load %struct.event*, %struct.event** %6, align 8
  %29 = icmp ne %struct.event* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.event*, %struct.event** %6, align 8
  %32 = call i32 @event_free(%struct.event* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.event_base*, %struct.event_base** %7, align 8
  %35 = icmp ne %struct.event_base* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.event_base*, %struct.event_base** %7, align 8
  %38 = call i32 @event_base_free(%struct.event_base* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local %struct.event* @evsignal_new(%struct.event_base*, i32, i32, i32) #1

declare dso_local i32 @event_self_cbarg(...) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @event_free(%struct.event*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
