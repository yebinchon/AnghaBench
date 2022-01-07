; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_suspend_read_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_suspend_read_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bufferevent*, i32)* }
%struct.bufferevent_private = type { i32 }

@EV_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_suspend_read_(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %6)
  store %struct.bufferevent_private* %7, %struct.bufferevent_private** %5, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = call i32 @BEV_LOCK(%struct.bufferevent* %8)
  %10 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %11 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %16 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %18, align 8
  %20 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %21 = load i32, i32* @EV_READ, align 4
  %22 = call i32 %19(%struct.bufferevent* %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %26 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %30 = call i32 @BEV_UNLOCK(%struct.bufferevent* %29)
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
