; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_bev_async_consider_writing.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_bev_async_consider_writing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_async = type { i64, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, %struct.bufferevent }
%struct.bufferevent = type { i32, i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_async*)* @bev_async_consider_writing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bev_async_consider_writing(%struct.bufferevent_async* %0) #0 {
  %2 = alloca %struct.bufferevent_async*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_async* %0, %struct.bufferevent_async** %2, align 8
  %6 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %7 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store %struct.bufferevent* %8, %struct.bufferevent** %5, align 8
  %9 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %10 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %15 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %98

20:                                               ; preds = %13
  %21 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %22 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EV_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @evbuffer_get_length(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %25, %20
  %39 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %40 = call i32 @bev_async_del_write(%struct.bufferevent_async* %39)
  br label %98

41:                                               ; preds = %32
  %42 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @evbuffer_get_length(i32 %44)
  store i64 %45, i64* %3, align 8
  %46 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %47 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %46, i32 0, i32 1
  %48 = call i64 @bufferevent_get_write_max_(%struct.TYPE_3__* %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %57, %54, %41
  %61 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %62 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %68 = call i32 @bev_async_del_write(%struct.bufferevent_async* %67)
  br label %98

69:                                               ; preds = %60
  %70 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %71 = call i32 @bufferevent_incref_(%struct.bufferevent* %70)
  %72 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %73 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %3, align 8
  %76 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %77 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %76, i32 0, i32 3
  %78 = call i64 @evbuffer_launch_write_(i32 %74, i64 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %82 = call i32 @bufferevent_decref_(%struct.bufferevent* %81)
  %83 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %84 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %86 = load i32, i32* @BEV_EVENT_ERROR, align 4
  %87 = call i32 @be_async_run_eventcb(%struct.bufferevent* %85, i32 %86, i32 0)
  br label %98

88:                                               ; preds = %69
  %89 = load i64, i64* %3, align 8
  %90 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %91 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %93 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %92, i32 0, i32 1
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @bufferevent_decrement_write_buckets_(%struct.TYPE_3__* %93, i64 %94)
  %96 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %97 = call i32 @bev_async_add_write(%struct.bufferevent_async* %96)
  br label %98

98:                                               ; preds = %19, %38, %66, %88, %80
  ret void
}

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @bev_async_del_write(%struct.bufferevent_async*) #1

declare dso_local i64 @bufferevent_get_write_max_(%struct.TYPE_3__*) #1

declare dso_local i32 @bufferevent_incref_(%struct.bufferevent*) #1

declare dso_local i64 @evbuffer_launch_write_(i32, i64, i32*) #1

declare dso_local i32 @bufferevent_decref_(%struct.bufferevent*) #1

declare dso_local i32 @be_async_run_eventcb(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_decrement_write_buckets_(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @bev_async_add_write(%struct.bufferevent_async*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
