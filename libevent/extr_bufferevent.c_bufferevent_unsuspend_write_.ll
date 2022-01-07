; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_unsuspend_write_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_unsuspend_write_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bufferevent*, i32)* }
%struct.bufferevent_private = type { i32 }

@EV_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_unsuspend_write_(%struct.bufferevent* %0, i32 %1) #0 {
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
  %10 = load i32, i32* %4, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %13 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %17 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %22 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EV_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %29 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %31, align 8
  %33 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %34 = load i32, i32* @EV_WRITE, align 4
  %35 = call i32 %32(%struct.bufferevent* %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %20, %2
  %37 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %38 = call i32 @BEV_UNLOCK(%struct.bufferevent* %37)
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
