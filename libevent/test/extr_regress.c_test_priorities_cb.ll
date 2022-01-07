; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_priorities_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_priorities_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_pri_event = type { i32, i32 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @test_priorities_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_priorities_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.test_pri_event*, align 8
  %8 = alloca %struct.timeval, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.test_pri_event*
  store %struct.test_pri_event* %10, %struct.test_pri_event** %7, align 8
  %11 = load %struct.test_pri_event*, %struct.test_pri_event** %7, align 8
  %12 = getelementptr inbounds %struct.test_pri_event, %struct.test_pri_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @event_loopexit(i32* null)
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.test_pri_event*, %struct.test_pri_event** %7, align 8
  %19 = getelementptr inbounds %struct.test_pri_event, %struct.test_pri_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = call i32 @evutil_timerclear(%struct.timeval* %8)
  %23 = load %struct.test_pri_event*, %struct.test_pri_event** %7, align 8
  %24 = getelementptr inbounds %struct.test_pri_event, %struct.test_pri_event* %23, i32 0, i32 1
  %25 = call i32 @event_add(i32* %24, %struct.timeval* %8)
  br label %26

26:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @event_loopexit(i32*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
