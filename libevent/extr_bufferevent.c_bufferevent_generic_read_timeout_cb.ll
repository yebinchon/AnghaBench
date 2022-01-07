; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_generic_read_timeout_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_generic_read_timeout_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@BEV_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@BEV_EVENT_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @bufferevent_generic_read_timeout_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_generic_read_timeout_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.bufferevent*
  store %struct.bufferevent* %9, %struct.bufferevent** %7, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %11 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %10)
  %12 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %13 = load i32, i32* @EV_READ, align 4
  %14 = call i32 @bufferevent_disable(%struct.bufferevent* %12, i32 %13)
  %15 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %16 = load i32, i32* @BEV_EVENT_TIMEOUT, align 4
  %17 = load i32, i32* @BEV_EVENT_READING, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %15, i32 %18, i32 0)
  %20 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %21 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %20)
  ret void
}

declare dso_local i32 @bufferevent_incref_and_lock_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
