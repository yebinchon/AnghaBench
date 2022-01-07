; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_inbuf_wm_check.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_inbuf_wm_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@EV_READ = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @bufferevent_inbuf_wm_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_inbuf_wm_check(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %3 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %4 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %11 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EV_READ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %33

17:                                               ; preds = %9
  %18 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %19 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @evbuffer_get_length(i32 %20)
  %22 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %23 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %30 = load i32, i32* @EV_READ, align 4
  %31 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %32 = call i32 @bufferevent_trigger(%struct.bufferevent* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %27, %16, %8
  ret void
}

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_trigger(%struct.bufferevent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
