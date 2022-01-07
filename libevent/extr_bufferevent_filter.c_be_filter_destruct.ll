; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_filter.c_be_filter_destruct.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_filter.c_be_filter_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 }
%struct.bufferevent_filtered = type { i64, i64, i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_filter_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_filter_destruct(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_filtered*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %4 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %5 = call %struct.bufferevent_filtered* @upcast(%struct.bufferevent* %4)
  store %struct.bufferevent_filtered* %5, %struct.bufferevent_filtered** %3, align 8
  %6 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %7 = call i32 @EVUTIL_ASSERT(%struct.bufferevent_filtered* %6)
  %8 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %9 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %8, i32 0, i32 3
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %13, i32 0, i32 3
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %17 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %22 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %30 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @evbuffer_remove_cb_entry(i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %35 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %40 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %3, align 8
  %43 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @evbuffer_remove_cb_entry(i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %38, %33
  ret void
}

declare dso_local %struct.bufferevent_filtered* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(%struct.bufferevent_filtered*) #1

declare dso_local i32 @evbuffer_remove_cb_entry(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
