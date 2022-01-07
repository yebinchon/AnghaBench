; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_rate_limit_group_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_rate_limit_group = type { i32, i32, i32, i32, i32, i32 }
%struct.event_base = type { i32 }
%struct.ev_token_bucket_cfg = type { i32 }
%struct.timeval = type { i64, i64 }

@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@bev_group_refill_callback_ = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent_rate_limit_group* @bufferevent_rate_limit_group_new(%struct.event_base* %0, %struct.ev_token_bucket_cfg* %1) #0 {
  %3 = alloca %struct.bufferevent_rate_limit_group*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.ev_token_bucket_cfg*, align 8
  %6 = alloca %struct.bufferevent_rate_limit_group*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store %struct.ev_token_bucket_cfg* %1, %struct.ev_token_bucket_cfg** %5, align 8
  %9 = load %struct.event_base*, %struct.event_base** %4, align 8
  %10 = call i32 @event_base_gettimeofday_cached(%struct.event_base* %9, %struct.timeval* %7)
  %11 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %5, align 8
  %12 = call i32 @ev_token_bucket_get_tick_(%struct.timeval* %7, %struct.ev_token_bucket_cfg* %11)
  store i32 %12, i32* %8, align 4
  %13 = call %struct.bufferevent_rate_limit_group* @mm_calloc(i32 1, i32 24)
  store %struct.bufferevent_rate_limit_group* %13, %struct.bufferevent_rate_limit_group** %6, align 8
  %14 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %15 = icmp ne %struct.bufferevent_rate_limit_group* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.bufferevent_rate_limit_group* null, %struct.bufferevent_rate_limit_group** %3, align 8
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %19 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %18, i32 0, i32 5
  %20 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %5, align 8
  %21 = call i32 @memcpy(i32* %19, %struct.ev_token_bucket_cfg* %20, i32 4)
  %22 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %23 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %22, i32 0, i32 4
  %24 = call i32 @LIST_INIT(i32* %23)
  %25 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %26 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %25, i32 0, i32 3
  %27 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ev_token_bucket_init_(i32* %26, %struct.ev_token_bucket_cfg* %27, i32 %28, i32 0)
  %30 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %31 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %30, i32 0, i32 2
  %32 = load %struct.event_base*, %struct.event_base** %4, align 8
  %33 = load i32, i32* @EV_PERSIST, align 4
  %34 = load i32, i32* @EV_FINALIZE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @bev_group_refill_callback_, align 4
  %37 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %38 = call i32 @event_assign(i32* %31, %struct.event_base* %32, i32 -1, i32 %35, i32 %36, %struct.bufferevent_rate_limit_group* %37)
  %39 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %40 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %39, i32 0, i32 2
  %41 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %41, i32 0, i32 0
  %43 = call i32 @event_add(i32* %40, i32* %42)
  %44 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %45 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %48 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %46, i32 %47)
  %49 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %50 = call i32 @bufferevent_rate_limit_group_set_min_share(%struct.bufferevent_rate_limit_group* %49, i32 64)
  %51 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %52 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %54, %56
  %58 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %59 = ptrtoint %struct.bufferevent_rate_limit_group* %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @evutil_weakrand_seed_(i32* %52, i32 %61)
  %63 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  store %struct.bufferevent_rate_limit_group* %63, %struct.bufferevent_rate_limit_group** %3, align 8
  br label %64

64:                                               ; preds = %17, %16
  %65 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %3, align 8
  ret %struct.bufferevent_rate_limit_group* %65
}

declare dso_local i32 @event_base_gettimeofday_cached(%struct.event_base*, %struct.timeval*) #1

declare dso_local i32 @ev_token_bucket_get_tick_(%struct.timeval*, %struct.ev_token_bucket_cfg*) #1

declare dso_local %struct.bufferevent_rate_limit_group* @mm_calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ev_token_bucket_cfg*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @ev_token_bucket_init_(i32*, %struct.ev_token_bucket_cfg*, i32, i32) #1

declare dso_local i32 @event_assign(i32*, %struct.event_base*, i32, i32, i32, %struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i32, i32) #1

declare dso_local i32 @bufferevent_rate_limit_group_set_min_share(%struct.bufferevent_rate_limit_group*, i32) #1

declare dso_local i32 @evutil_weakrand_seed_(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
