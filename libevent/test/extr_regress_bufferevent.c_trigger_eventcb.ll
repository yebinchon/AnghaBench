; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_bufferevent.c_trigger_eventcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_bufferevent.c_trigger_eventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Event successfully triggered.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @trigger_eventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_eventcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.event_base*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.event_base*
  store %struct.event_base* %9, %struct.event_base** %7, align 8
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.event_base*, %struct.event_base** %7, align 8
  %16 = call i32 @event_base_loopexit(%struct.event_base* %15, i32* null)
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %19 = load i16, i16* %5, align 2
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @reader_eventcb(%struct.bufferevent* %18, i16 signext %19, i8* %20)
  br label %22

22:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

declare dso_local i32 @reader_eventcb(%struct.bufferevent*, i16 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
