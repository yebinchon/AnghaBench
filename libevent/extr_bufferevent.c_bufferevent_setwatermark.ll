; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_setwatermark.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_setwatermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.bufferevent_private = type { i32* }

@EV_WRITE = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i16 0, align 2
@bufferevent_inbuf_wm_cb = common dso_local global i32 0, align 4
@EVBUFFER_CB_ENABLED = common dso_local global i32 0, align 4
@EVBUFFER_CB_NODEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_setwatermark(%struct.bufferevent* %0, i16 signext %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i16 %1, i16* %6, align 2
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %11 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %10)
  store %struct.bufferevent_private* %11, %struct.bufferevent_private** %9, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %13 = call i32 @BEV_LOCK(%struct.bufferevent* %12)
  %14 = load i16, i16* %6, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @EV_WRITE, align 2
  %17 = sext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %23 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %20, %4
  %30 = load i16, i16* %6, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @EV_READ, align 2
  %33 = sext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %111

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %39 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %36
  %48 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %49 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %54 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @bufferevent_inbuf_wm_cb, align 4
  %57 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %58 = call i32* @evbuffer_add_cb(i32 %55, i32 %56, %struct.bufferevent* %57)
  %59 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %60 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %52, %47
  %62 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %63 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %66 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %69 = load i32, i32* @EVBUFFER_CB_NODEFER, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @evbuffer_cb_set_flags(i32 %64, i32* %67, i32 %70)
  %72 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %73 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @evbuffer_get_length(i32 %74)
  %76 = load i64, i64* %8, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %80 = call i32 @bufferevent_wm_suspend_read(%struct.bufferevent* %79)
  br label %92

81:                                               ; preds = %61
  %82 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %83 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @evbuffer_get_length(i32 %84)
  %86 = load i64, i64* %8, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %90 = call i32 @bufferevent_wm_unsuspend_read(%struct.bufferevent* %89)
  br label %91

91:                                               ; preds = %88, %81
  br label %92

92:                                               ; preds = %91, %78
  br label %110

93:                                               ; preds = %36
  %94 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %95 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %100 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.bufferevent_private*, %struct.bufferevent_private** %9, align 8
  %103 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %106 = call i32 @evbuffer_cb_clear_flags(i32 %101, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %98, %93
  %108 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %109 = call i32 @bufferevent_wm_unsuspend_read(%struct.bufferevent* %108)
  br label %110

110:                                              ; preds = %107, %92
  br label %111

111:                                              ; preds = %110, %29
  %112 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %113 = call i32 @BEV_UNLOCK(%struct.bufferevent* %112)
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32* @evbuffer_add_cb(i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @evbuffer_cb_set_flags(i32, i32*, i32) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_wm_suspend_read(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_wm_unsuspend_read(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_cb_clear_flags(i32, i32*, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
