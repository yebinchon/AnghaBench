; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bev_refill_callback_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bev_refill_callback_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.bufferevent_private = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@BEV_SUSPEND_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @bev_refill_callback_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bev_refill_callback_(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.bufferevent_private*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.bufferevent_private*
  store %struct.bufferevent_private* %12, %struct.bufferevent_private** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %14 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %13, i32 0, i32 2
  %15 = call i32 @BEV_LOCK(%struct.TYPE_12__* %14)
  %16 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %17 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %22 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %29 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %28, i32 0, i32 2
  %30 = call i32 @BEV_UNLOCK(%struct.TYPE_12__* %29)
  br label %116

31:                                               ; preds = %20
  %32 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %33 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @event_base_gettimeofday_cached(i32 %35, %struct.timeval* %8)
  %37 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %38 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %37, i32 0, i32 3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = call i32 @ev_token_bucket_get_tick_(%struct.timeval* %8, %struct.TYPE_11__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %44 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %43, i32 0, i32 3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %48 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %47, i32 0, i32 3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ev_token_bucket_update_(%struct.TYPE_10__* %46, %struct.TYPE_11__* %51, i32 %52)
  %54 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %55 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %31
  %61 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %62 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %61, i32 0, i32 3
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %70 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %69, i32 0, i32 2
  %71 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %72 = call i32 @bufferevent_unsuspend_read_(%struct.TYPE_12__* %70, i32 %71)
  br label %74

73:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %74, %31
  %76 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %77 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %84 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %92 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %91, i32 0, i32 2
  %93 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %94 = call i32 @bufferevent_unsuspend_write_(%struct.TYPE_12__* %92, i32 %93)
  br label %96

95:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %90
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %102 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %101, i32 0, i32 3
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %106 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %105, i32 0, i32 3
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = call i32 @event_add(i32* %104, i32* %110)
  br label %112

112:                                              ; preds = %100, %97
  %113 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %114 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %113, i32 0, i32 2
  %115 = call i32 @BEV_UNLOCK(%struct.TYPE_12__* %114)
  br label %116

116:                                              ; preds = %112, %27
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @event_base_gettimeofday_cached(i32, %struct.timeval*) #1

declare dso_local i32 @ev_token_bucket_get_tick_(%struct.timeval*, %struct.TYPE_11__*) #1

declare dso_local i32 @ev_token_bucket_update_(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @bufferevent_unsuspend_read_(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bufferevent_unsuspend_write_(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
