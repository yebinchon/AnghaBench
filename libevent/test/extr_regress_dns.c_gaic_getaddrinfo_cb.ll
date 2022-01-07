; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_gaic_getaddrinfo_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_gaic_getaddrinfo_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i32 }
%struct.gaic_request_status = type { i64, i32, i32, %struct.event_base* }
%struct.event_base = type { i32 }

@GAIC_MAGIC = common dso_local global i64 0, align 8
@EVUTIL_EAI_CANCEL = common dso_local global i32 0, align 4
@pending = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.evutil_addrinfo*, i8*)* @gaic_getaddrinfo_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaic_getaddrinfo_cb(i32 %0, %struct.evutil_addrinfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evutil_addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gaic_request_status*, align 8
  %8 = alloca %struct.event_base*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.evutil_addrinfo* %1, %struct.evutil_addrinfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.gaic_request_status*
  store %struct.gaic_request_status* %10, %struct.gaic_request_status** %7, align 8
  %11 = load %struct.gaic_request_status*, %struct.gaic_request_status** %7, align 8
  %12 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %11, i32 0, i32 3
  %13 = load %struct.event_base*, %struct.event_base** %12, align 8
  store %struct.event_base* %13, %struct.event_base** %8, align 8
  %14 = load %struct.gaic_request_status*, %struct.gaic_request_status** %7, align 8
  %15 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GAIC_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @tt_assert(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EVUTIL_EAI_CANCEL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.gaic_request_status*, %struct.gaic_request_status** %7, align 8
  %26 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @tt_assert(i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.gaic_request_status*, %struct.gaic_request_status** %7, align 8
  %31 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %30, i32 0, i32 2
  %32 = call i32 @event_del(i32* %31)
  %33 = load %struct.gaic_request_status*, %struct.gaic_request_status** %7, align 8
  %34 = call i32 @memset(%struct.gaic_request_status* %33, i32 240, i32 24)
  %35 = load %struct.gaic_request_status*, %struct.gaic_request_status** %7, align 8
  %36 = call i32 @free(%struct.gaic_request_status* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i64, i64* @pending, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* @pending, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.event_base*, %struct.event_base** %8, align 8
  %43 = call i32 @event_base_loopexit(%struct.event_base* %42, i32* null)
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @memset(%struct.gaic_request_status*, i32, i32) #1

declare dso_local i32 @free(%struct.gaic_request_status*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
