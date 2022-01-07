; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_readcb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { %struct.TYPE_2__, %struct.evbuffer* }
%struct.TYPE_2__ = type { i64 }
%struct.evbuffer = type { i32 }
%struct.bufferevent_private = type { i32, i64 }

@BEV_EVENT_READING = common dso_local global i16 0, align 2
@EV_TIMEOUT = common dso_local global i16 0, align 2
@BEV_EVENT_TIMEOUT = common dso_local global i16 0, align 2
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @bufferevent_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_readcb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.bufferevent_private*, align 8
  %9 = alloca %struct.evbuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.bufferevent*
  store %struct.bufferevent* %16, %struct.bufferevent** %7, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %18 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %17)
  store %struct.bufferevent_private* %18, %struct.bufferevent_private** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i16, i16* @BEV_EVENT_READING, align 2
  store i16 %19, i16* %11, align 2
  store i64 -1, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  %20 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %21 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %20)
  %22 = load i16, i16* %5, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @EV_TIMEOUT, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* %11, align 2
  %31 = sext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %11, align 2
  br label %130

34:                                               ; preds = %3
  %35 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %36 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %35, i32 0, i32 1
  %37 = load %struct.evbuffer*, %struct.evbuffer** %36, align 8
  store %struct.evbuffer* %37, %struct.evbuffer** %9, align 8
  %38 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %39 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %34
  %44 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %45 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %49 = call i64 @evbuffer_get_length(%struct.evbuffer* %48)
  %50 = sub nsw i64 %47, %49
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %55 = call i32 @bufferevent_wm_suspend_read(%struct.bufferevent* %54)
  br label %137

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %59 = call i64 @bufferevent_get_read_max_(%struct.bufferevent_private* %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %57
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %70 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %137

74:                                               ; preds = %68
  %75 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %76 = call i32 @evbuffer_unfreeze(%struct.evbuffer* %75, i32 0)
  %77 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i64, i64* %12, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @evbuffer_read(%struct.evbuffer* %77, i32 %78, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %83 = call i32 @evbuffer_freeze(%struct.evbuffer* %82, i32 0)
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %107

86:                                               ; preds = %74
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @evutil_socket_geterror(i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %129

93:                                               ; preds = %86
  %94 = load i32, i32* %14, align 4
  %95 = call i64 @EVUTIL_ERR_CONNECT_REFUSED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %99 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %137

100:                                              ; preds = %93
  %101 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %102 = sext i16 %101 to i32
  %103 = load i16, i16* %11, align 2
  %104 = sext i16 %103 to i32
  %105 = or i32 %104, %102
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %11, align 2
  br label %118

107:                                              ; preds = %74
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i16, i16* @BEV_EVENT_EOF, align 2
  %112 = sext i16 %111 to i32
  %113 = load i16, i16* %11, align 2
  %114 = sext i16 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i16
  store i16 %116, i16* %11, align 2
  br label %117

117:                                              ; preds = %110, %107
  br label %118

118:                                              ; preds = %117, %100
  %119 = load i32, i32* %10, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %130

122:                                              ; preds = %118
  %123 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @bufferevent_decrement_read_buckets_(%struct.bufferevent_private* %123, i32 %124)
  %126 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %127 = load i32, i32* @EV_READ, align 4
  %128 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %126, i32 %127, i32 0)
  br label %137

129:                                              ; preds = %92
  br label %137

130:                                              ; preds = %121, %27
  %131 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %132 = load i32, i32* @EV_READ, align 4
  %133 = call i32 @bufferevent_disable(%struct.bufferevent* %131, i32 %132)
  %134 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %135 = load i16, i16* %11, align 2
  %136 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %134, i16 signext %135, i32 0)
  br label %137

137:                                              ; preds = %130, %129, %122, %97, %73, %53
  %138 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %139 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %138)
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_incref_and_lock_(%struct.bufferevent*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @bufferevent_wm_suspend_read(%struct.bufferevent*) #1

declare dso_local i64 @bufferevent_get_read_max_(%struct.bufferevent_private*) #1

declare dso_local i32 @evbuffer_unfreeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_read(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @evbuffer_freeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i64 @EVUTIL_ERR_CONNECT_REFUSED(i32) #1

declare dso_local i32 @bufferevent_decrement_read_buckets_(%struct.bufferevent_private*, i32) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i16 signext, i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
