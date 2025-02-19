; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_locked.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_callback = type { i32 }
%struct.bufferevent_private = type { i32, i32, i64, i64, %struct.bufferevent }
%struct.bufferevent = type { i32, i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)* }

@BEV_EVENT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_callback*, i8*)* @bufferevent_run_deferred_callbacks_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_run_deferred_callbacks_locked(%struct.event_callback* %0, i8* %1) #0 {
  %3 = alloca %struct.event_callback*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.event_callback* %0, %struct.event_callback** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent_private*
  store %struct.bufferevent_private* %10, %struct.bufferevent_private** %5, align 8
  %11 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %12 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %11, i32 0, i32 4
  store %struct.bufferevent* %12, %struct.bufferevent** %6, align 8
  %13 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %14 = call i32 @BEV_LOCK(%struct.bufferevent* %13)
  %15 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %16 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %23 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %22, i32 0, i32 1
  %24 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.bufferevent*, i16, i32)* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %30 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 1
  %35 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %34, align 8
  %36 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %37 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %38 = trunc i32 %37 to i16
  %39 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %40 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(%struct.bufferevent* %36, i16 signext %38, i32 %41)
  br label %43

43:                                               ; preds = %26, %21, %2
  %44 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %45 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %50 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %49, i32 0, i32 3
  %51 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.bufferevent*, i32)* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %55 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %57 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %56, i32 0, i32 3
  %58 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %57, align 8
  %59 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %60 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %58(%struct.bufferevent* %59, i32 %62)
  %64 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %65 = call i32 @bufferevent_inbuf_wm_check(%struct.bufferevent* %64)
  br label %66

66:                                               ; preds = %53, %48, %43
  %67 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %68 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %73 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %72, i32 0, i32 2
  %74 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.bufferevent*, i32)* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %78 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %80 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %79, i32 0, i32 2
  %81 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %80, align 8
  %82 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %83 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %84 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %81(%struct.bufferevent* %82, i32 %85)
  br label %87

87:                                               ; preds = %76, %71, %66
  %88 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %89 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %87
  %93 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %94 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %93, i32 0, i32 1
  %95 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %94, align 8
  %96 = icmp ne i32 (%struct.bufferevent*, i16, i32)* %95, null
  br i1 %96, label %97, label %120

97:                                               ; preds = %92
  %98 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %99 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %7, align 2
  %102 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %103 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %8, align 4
  %105 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %106 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %108 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %109)
  %111 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %112 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %111, i32 0, i32 1
  %113 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %112, align 8
  %114 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %115 = load i16, i16* %7, align 2
  %116 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %117 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 %113(%struct.bufferevent* %114, i16 signext %115, i32 %118)
  br label %120

120:                                              ; preds = %97, %92, %87
  %121 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %122 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %121)
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_inbuf_wm_check(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
