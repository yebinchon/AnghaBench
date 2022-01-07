; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_decref_and_unlock_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_decref_and_unlock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.event_callback }
%struct.event_callback = type { i32 }
%struct.TYPE_6__ = type { %struct.event_callback }
%struct.TYPE_5__ = type { {}* }
%struct.bufferevent_private = type { i64, %struct.TYPE_8__*, %struct.event_callback }
%struct.TYPE_8__ = type { %struct.event }
%struct.event = type { %struct.event_callback }

@bufferevent_finalize_cb_ = common dso_local global i32 0, align 4
@MAX_CBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.bufferevent_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x %struct.event_callback*], align 16
  %7 = alloca %struct.event*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %8)
  store %struct.bufferevent_private* %9, %struct.bufferevent_private** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %11 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @EVUTIL_ASSERT(i32 %14)
  %16 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %17 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %23 = call i32 @BEV_UNLOCK(%struct.bufferevent* %22)
  store i32 0, i32* %2, align 4
  br label %111

24:                                               ; preds = %1
  %25 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %26 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %25, i32 0, i32 5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.bufferevent*)**
  %30 = load i32 (%struct.bufferevent*)*, i32 (%struct.bufferevent*)** %29, align 8
  %31 = icmp ne i32 (%struct.bufferevent*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.bufferevent*)**
  %38 = load i32 (%struct.bufferevent*)*, i32 (%struct.bufferevent*)** %37, align 8
  %39 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %40 = call i32 %38(%struct.bufferevent* %39)
  br label %41

41:                                               ; preds = %32, %24
  %42 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds [16 x %struct.event_callback*], [16 x %struct.event_callback*]* %6, i64 0, i64 0
  store %struct.event_callback* %44, %struct.event_callback** %45, align 16
  %46 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %47 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds [16 x %struct.event_callback*], [16 x %struct.event_callback*]* %6, i64 0, i64 1
  store %struct.event_callback* %48, %struct.event_callback** %49, align 8
  %50 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %51 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %50, i32 0, i32 2
  %52 = getelementptr inbounds [16 x %struct.event_callback*], [16 x %struct.event_callback*]* %6, i64 0, i64 2
  store %struct.event_callback* %51, %struct.event_callback** %52, align 16
  store i32 3, i32* %5, align 4
  %53 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %54 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %41
  %58 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %59 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store %struct.event* %61, %struct.event** %7, align 8
  %62 = load %struct.event*, %struct.event** %7, align 8
  %63 = call i64 @event_initialized(%struct.event* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.event*, %struct.event** %7, align 8
  %67 = getelementptr inbounds %struct.event, %struct.event* %66, i32 0, i32 0
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [16 x %struct.event_callback*], [16 x %struct.event_callback*]* %6, i64 0, i64 %70
  store %struct.event_callback* %67, %struct.event_callback** %71, align 8
  br label %72

72:                                               ; preds = %65, %57
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %75 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [16 x %struct.event_callback*], [16 x %struct.event_callback*]* %6, i64 0, i64 0
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.event_callback*, %struct.event_callback** %77, i64 %79
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 16, %81
  %83 = call i64 @evbuffer_get_callbacks_(i32 %76, %struct.event_callback** %80, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  %88 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %89 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [16 x %struct.event_callback*], [16 x %struct.event_callback*]* %6, i64 0, i64 0
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.event_callback*, %struct.event_callback** %91, i64 %93
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 16, %95
  %97 = call i64 @evbuffer_get_callbacks_(i32 %90, %struct.event_callback** %94, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %103 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = getelementptr inbounds [16 x %struct.event_callback*], [16 x %struct.event_callback*]* %6, i64 0, i64 0
  %107 = load i32, i32* @bufferevent_finalize_cb_, align 4
  %108 = call i32 @event_callback_finalize_many_(i32 %104, i32 %105, %struct.event_callback** %106, i32 %107)
  %109 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %110 = call i32 @BEV_UNLOCK(%struct.bufferevent* %109)
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %73, %21
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

declare dso_local i64 @event_initialized(%struct.event*) #1

declare dso_local i64 @evbuffer_get_callbacks_(i32, %struct.event_callback**, i32) #1

declare dso_local i32 @event_callback_finalize_many_(i32, i32, %struct.event_callback**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
