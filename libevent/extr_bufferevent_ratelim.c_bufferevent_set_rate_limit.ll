; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_set_rate_limit.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_set_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.ev_token_bucket_cfg = type { i32 }
%struct.bufferevent_private = type { %struct.bufferevent_rate_limit* }
%struct.bufferevent_rate_limit = type { i32, %struct.TYPE_2__, %struct.ev_token_bucket_cfg* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.timeval = type { i32 }

@BEV_SUSPEND_BW = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@bev_refill_callback_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_set_rate_limit(%struct.bufferevent* %0, %struct.ev_token_bucket_cfg* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.ev_token_bucket_cfg*, align 8
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent_rate_limit*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store %struct.ev_token_bucket_cfg* %1, %struct.ev_token_bucket_cfg** %4, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %13 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %12)
  store %struct.bufferevent_private* %13, %struct.bufferevent_private** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %15 = call i32 @BEV_LOCK(%struct.bufferevent* %14)
  %16 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  %17 = icmp eq %struct.ev_token_bucket_cfg* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %20 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %19, i32 0, i32 0
  %21 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %20, align 8
  %22 = icmp ne %struct.bufferevent_rate_limit* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %25 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %24, i32 0, i32 0
  %26 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %25, align 8
  store %struct.bufferevent_rate_limit* %26, %struct.bufferevent_rate_limit** %7, align 8
  %27 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %28 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %27, i32 0, i32 2
  store %struct.ev_token_bucket_cfg* null, %struct.ev_token_bucket_cfg** %28, align 8
  %29 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %30 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %31 = call i32 @bufferevent_unsuspend_read_(%struct.bufferevent* %29, i32 %30)
  %32 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %33 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %34 = call i32 @bufferevent_unsuspend_write_(%struct.bufferevent* %32, i32 %33)
  %35 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %36 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %35, i32 0, i32 0
  %37 = call i64 @event_initialized(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %41 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %40, i32 0, i32 0
  %42 = call i32 @event_del(i32* %41)
  br label %43

43:                                               ; preds = %39, %23
  br label %44

44:                                               ; preds = %43, %18
  store i32 0, i32* %6, align 4
  br label %155

45:                                               ; preds = %2
  %46 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %47 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @event_base_gettimeofday_cached(i32 %48, %struct.timeval* %8)
  %50 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  %51 = call i32 @ev_token_bucket_get_tick_(%struct.timeval* %8, %struct.ev_token_bucket_cfg* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %53 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %52, i32 0, i32 0
  %54 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %53, align 8
  %55 = icmp ne %struct.bufferevent_rate_limit* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %58 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %57, i32 0, i32 0
  %59 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %58, align 8
  %60 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %59, i32 0, i32 2
  %61 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %60, align 8
  %62 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  %63 = icmp eq %struct.ev_token_bucket_cfg* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %155

65:                                               ; preds = %56, %45
  %66 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %67 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %66, i32 0, i32 0
  %68 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %67, align 8
  %69 = icmp eq %struct.bufferevent_rate_limit* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = call %struct.bufferevent_rate_limit* @mm_calloc(i32 1, i32 32)
  store %struct.bufferevent_rate_limit* %71, %struct.bufferevent_rate_limit** %7, align 8
  %72 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %73 = icmp ne %struct.bufferevent_rate_limit* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %155

75:                                               ; preds = %70
  %76 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %77 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %78 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %77, i32 0, i32 0
  store %struct.bufferevent_rate_limit* %76, %struct.bufferevent_rate_limit** %78, align 8
  br label %83

79:                                               ; preds = %65
  %80 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %81 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %80, i32 0, i32 0
  %82 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %81, align 8
  store %struct.bufferevent_rate_limit* %82, %struct.bufferevent_rate_limit** %7, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %85 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %84, i32 0, i32 2
  %86 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %85, align 8
  %87 = icmp ne %struct.ev_token_bucket_cfg* %86, null
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  %90 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %91 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %90, i32 0, i32 2
  store %struct.ev_token_bucket_cfg* %89, %struct.ev_token_bucket_cfg** %91, align 8
  %92 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %93 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %92, i32 0, i32 1
  %94 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @ev_token_bucket_init_(%struct.TYPE_2__* %93, %struct.ev_token_bucket_cfg* %94, i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %83
  %101 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %102 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %101, i32 0, i32 0
  %103 = call i64 @event_initialized(i32* %102)
  %104 = call i32 @EVUTIL_ASSERT(i64 %103)
  %105 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %106 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %105, i32 0, i32 0
  %107 = call i32 @event_del(i32* %106)
  br label %108

108:                                              ; preds = %100, %83
  %109 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %110 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %109, i32 0, i32 0
  %111 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %112 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @EV_FINALIZE, align 4
  %115 = load i32, i32* @bev_refill_callback_, align 4
  %116 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %117 = call i32 @event_assign(i32* %110, i32 %113, i32 -1, i32 %114, i32 %115, %struct.bufferevent_private* %116)
  %118 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %119 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %108
  %124 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %125 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %126 = call i32 @bufferevent_unsuspend_read_(%struct.bufferevent* %124, i32 %125)
  br label %131

127:                                              ; preds = %108
  %128 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %129 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %130 = call i32 @bufferevent_suspend_read_(%struct.bufferevent* %128, i32 %129)
  store i32 1, i32* %11, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %133 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %139 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %140 = call i32 @bufferevent_unsuspend_write_(%struct.bufferevent* %138, i32 %139)
  br label %145

141:                                              ; preds = %131
  %142 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %143 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %144 = call i32 @bufferevent_suspend_write_(%struct.bufferevent* %142, i32 %143)
  store i32 1, i32* %11, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %7, align 8
  %150 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %149, i32 0, i32 0
  %151 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  %152 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %151, i32 0, i32 0
  %153 = call i32 @event_add(i32* %150, i32* %152)
  br label %154

154:                                              ; preds = %148, %145
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %154, %74, %64, %44
  %156 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %157 = call i32 @BEV_UNLOCK(%struct.bufferevent* %156)
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_unsuspend_read_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_unsuspend_write_(%struct.bufferevent*, i32) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_base_gettimeofday_cached(i32, %struct.timeval*) #1

declare dso_local i32 @ev_token_bucket_get_tick_(%struct.timeval*, %struct.ev_token_bucket_cfg*) #1

declare dso_local %struct.bufferevent_rate_limit* @mm_calloc(i32, i32) #1

declare dso_local i32 @ev_token_bucket_init_(%struct.TYPE_2__*, %struct.ev_token_bucket_cfg*, i32, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i64) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent_private*) #1

declare dso_local i32 @bufferevent_suspend_read_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_suspend_write_(%struct.bufferevent*, i32) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
