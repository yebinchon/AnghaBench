; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_server_event_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_server_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.context = type { %struct.bufferevent*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @server_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_event_cb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.context*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.context*
  store %struct.context* %9, %struct.context** %7, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %11 = load %struct.context*, %struct.context** %7, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %13 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %14 = icmp eq %struct.bufferevent* %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @EVUTIL_ASSERT(i32 %15)
  %17 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %18 = load i16, i16* %5, align 2
  %19 = load %struct.context*, %struct.context** %7, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.context*, %struct.context** %7, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @event_cb_(%struct.bufferevent* %17, i16 signext %18, i32 %24, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %40

37:                                               ; preds = %3
  %38 = load %struct.context*, %struct.context** %7, align 8
  %39 = getelementptr inbounds %struct.context, %struct.context* %38, i32 0, i32 0
  store %struct.bufferevent* null, %struct.bufferevent** %39, align 8
  br label %40

40:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @event_cb_(%struct.bufferevent*, i16 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
