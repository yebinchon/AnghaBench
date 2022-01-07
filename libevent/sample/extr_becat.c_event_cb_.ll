; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_event_cb_.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_event_cb_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.event_base = type { i32 }

@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [11 x i8] c"Connected\0A\00", align 1
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [49 x i8] c"Got 0x%x event on fd=%d. Terminating connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16, i32, i32)* @event_cb_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_cb_(%struct.bufferevent* %0, i16 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.event_base*, align 8
  %11 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %13 = call %struct.event_base* @bufferevent_get_base(%struct.bufferevent* %12)
  store %struct.event_base* %13, %struct.event_base** %10, align 8
  %14 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %15 = call i8* @bufferevent_getfd(%struct.bufferevent* %14)
  store i8* %15, i8** %11, align 8
  %16 = load i16, i16* %7, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %19 = sext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %48

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i16, i16* %7, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %31 = sext i16 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %36 = call i32 @be_ssl_errors(%struct.bufferevent* %35)
  br label %37

37:                                               ; preds = %34, %27, %24
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.event_base*, %struct.event_base** %10, align 8
  %42 = call i32 @event_base_loopexit(%struct.event_base* %41, i32* null)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i16, i16* %7, align 2
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i16 signext %44, i8* %45)
  %47 = call i32 @be_free(%struct.bufferevent** %6)
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %22
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.event_base* @bufferevent_get_base(%struct.bufferevent*) #1

declare dso_local i8* @bufferevent_getfd(%struct.bufferevent*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @be_ssl_errors(%struct.bufferevent*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

declare dso_local i32 @error(i8*, i16 signext, i8*) #1

declare dso_local i32 @be_free(%struct.bufferevent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
