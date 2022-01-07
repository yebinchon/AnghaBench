; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_run_eventcb_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_run_eventcb_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 (%struct.bufferevent*, i16, i32)* }
%struct.bufferevent_private = type { i32, i16, i32 }

@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_run_eventcb_(%struct.bufferevent* %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %9 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %8)
  store %struct.bufferevent_private* %9, %struct.bufferevent_private** %7, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %11 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %10, i32 0, i32 1
  %12 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %11, align 8
  %13 = icmp eq i32 (%struct.bufferevent*, i16, i32)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %17 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %15
  %25 = load i16, i16* %5, align 2
  %26 = sext i16 %25 to i32
  %27 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %28 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 4
  %30 = sext i16 %29 to i32
  %31 = or i32 %30, %26
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %28, align 4
  %33 = call i32 (...) @EVUTIL_SOCKET_ERROR()
  %34 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %35 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %37 = call i32 @SCHEDULE_DEFERRED(%struct.bufferevent_private* %36)
  br label %48

38:                                               ; preds = %15
  %39 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %40 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %39, i32 0, i32 1
  %41 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %40, align 8
  %42 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %43 = load i16, i16* %5, align 2
  %44 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %45 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %41(%struct.bufferevent* %42, i16 signext %43, i32 %46)
  br label %48

48:                                               ; preds = %14, %38, %24
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_SOCKET_ERROR(...) #1

declare dso_local i32 @SCHEDULE_DEFERRED(%struct.bufferevent_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
