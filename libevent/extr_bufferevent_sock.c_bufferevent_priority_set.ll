; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_priority_set.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_priority_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 }
%struct.bufferevent_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_priority_set(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %7)
  store %struct.bufferevent_private* %8, %struct.bufferevent_private** %6, align 8
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = call i32 @BEV_LOCK(%struct.bufferevent* %9)
  %11 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %12 = call i32 @BEV_IS_SOCKET(%struct.bufferevent* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %17 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %16, i32 0, i32 1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @event_priority_set(i32* %17, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %34

22:                                               ; preds = %15
  %23 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @event_priority_set(i32* %24, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %31 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @event_deferred_cb_set_priority_(i32* %31, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %28, %21, %14
  %35 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %36 = call i32 @BEV_UNLOCK(%struct.bufferevent* %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_IS_SOCKET(%struct.bufferevent*) #1

declare dso_local i32 @event_priority_set(i32*, i32) #1

declare dso_local i32 @event_deferred_cb_set_priority_(i32*, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
