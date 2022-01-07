; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_init_common_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_init_common_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_private = type { i32, i32, i32, %struct.bufferevent }
%struct.bufferevent = type { i32*, i32*, i32, %struct.bufferevent_ops*, i32, i32, %struct.event_base* }
%struct.event_base = type { i32 }
%struct.bufferevent_ops = type { i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@BEV_OPT_UNLOCK_CALLBACKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"UNLOCK_CALLBACKS requires DEFER_CALLBACKS\00", align 1
@bufferevent_run_deferred_callbacks_unlocked = common dso_local global i32 0, align 4
@bufferevent_run_deferred_callbacks_locked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_init_common_(%struct.bufferevent_private* %0, %struct.event_base* %1, %struct.bufferevent_ops* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent_private*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.bufferevent_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_private* %0, %struct.bufferevent_private** %6, align 8
  store %struct.event_base* %1, %struct.event_base** %7, align 8
  store %struct.bufferevent_ops* %2, %struct.bufferevent_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %12 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %11, i32 0, i32 3
  store %struct.bufferevent* %12, %struct.bufferevent** %10, align 8
  %13 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = call i8* (...) @evbuffer_new()
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %21 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %118

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %4
  %26 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = call i8* (...) @evbuffer_new()
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = icmp eq i32* %32, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %118

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %40 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.event_base*, %struct.event_base** %7, align 8
  %42 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 6
  store %struct.event_base* %41, %struct.event_base** %43, align 8
  %44 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %45 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %44, i32 0, i32 5
  %46 = call i32 @evutil_timerclear(i32* %45)
  %47 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %48 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %47, i32 0, i32 4
  %49 = call i32 @evutil_timerclear(i32* %48)
  %50 = load %struct.bufferevent_ops*, %struct.bufferevent_ops** %8, align 8
  %51 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %52 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %51, i32 0, i32 3
  store %struct.bufferevent_ops* %50, %struct.bufferevent_ops** %52, align 8
  %53 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %54 = call i64 @bufferevent_ratelim_init_(%struct.bufferevent_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  br label %118

57:                                               ; preds = %38
  %58 = load i32, i32* @EV_WRITE, align 4
  %59 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %60 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %67 = call i64 @bufferevent_enable_locking_(%struct.bufferevent* %66, i32* null)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %118

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %74 = load i32, i32* @BEV_OPT_UNLOCK_CALLBACKS, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = load i32, i32* @BEV_OPT_UNLOCK_CALLBACKS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @event_warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %118

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @BEV_OPT_UNLOCK_CALLBACKS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %88 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %87, i32 0, i32 2
  %89 = load %struct.event_base*, %struct.event_base** %7, align 8
  %90 = call i32 @event_base_get_npriorities(%struct.event_base* %89)
  %91 = sdiv i32 %90, 2
  %92 = load i32, i32* @bufferevent_run_deferred_callbacks_unlocked, align 4
  %93 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %94 = call i32 @event_deferred_cb_init_(i32* %88, i32 %91, i32 %92, %struct.bufferevent_private* %93)
  br label %104

95:                                               ; preds = %81
  %96 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %97 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %96, i32 0, i32 2
  %98 = load %struct.event_base*, %struct.event_base** %7, align 8
  %99 = call i32 @event_base_get_npriorities(%struct.event_base* %98)
  %100 = sdiv i32 %99, 2
  %101 = load i32, i32* @bufferevent_run_deferred_callbacks_locked, align 4
  %102 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %103 = call i32 @event_deferred_cb_init_(i32* %97, i32 %100, i32 %101, %struct.bufferevent_private* %102)
  br label %104

104:                                              ; preds = %95, %86
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %107 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %109 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %112 = call i32 @evbuffer_set_parent_(i32* %110, %struct.bufferevent* %111)
  %113 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %114 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %117 = call i32 @evbuffer_set_parent_(i32* %115, %struct.bufferevent* %116)
  store i32 0, i32* %5, align 4
  br label %143

118:                                              ; preds = %79, %69, %56, %36, %23
  %119 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %120 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %125 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @evbuffer_free(i32* %126)
  %128 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %129 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %128, i32 0, i32 1
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %123, %118
  %131 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %132 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %137 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @evbuffer_free(i32* %138)
  %140 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %141 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %135, %130
  store i32 -1, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %104
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i8* @evbuffer_new(...) #1

declare dso_local i32 @evutil_timerclear(i32*) #1

declare dso_local i64 @bufferevent_ratelim_init_(%struct.bufferevent_private*) #1

declare dso_local i64 @bufferevent_enable_locking_(%struct.bufferevent*, i32*) #1

declare dso_local i32 @event_warnx(i8*) #1

declare dso_local i32 @event_deferred_cb_init_(i32*, i32, i32, %struct.bufferevent_private*) #1

declare dso_local i32 @event_base_get_npriorities(%struct.event_base*) #1

declare dso_local i32 @evbuffer_set_parent_(i32*, %struct.bufferevent*) #1

declare dso_local i32 @evbuffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
