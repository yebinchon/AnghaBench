; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_gaic_launch.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_gaic_launch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.event_base = type { i32 }
%struct.evdns_base = type { i32 }
%struct.gaic_request_status = type { i32, i32, %struct.evdns_base*, %struct.event_base*, i32 }

@__const.gaic_launch.tv = private unnamed_addr constant %struct.timeval { i32 0, i32 10000 }, align 4
@GAIC_MAGIC = common dso_local global i32 0, align 4
@gaic_cancel_request_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"foobar.bazquux.example.com\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@gaic_getaddrinfo_cb = common dso_local global i32 0, align 4
@pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_base*, %struct.evdns_base*)* @gaic_launch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaic_launch(%struct.event_base* %0, %struct.evdns_base* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca %struct.gaic_request_status*, align 8
  %6 = alloca %struct.timeval, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.evdns_base* %1, %struct.evdns_base** %4, align 8
  %7 = call %struct.gaic_request_status* @calloc(i32 1, i32 32)
  store %struct.gaic_request_status* %7, %struct.gaic_request_status** %5, align 8
  %8 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.timeval* @__const.gaic_launch.tv to i8*), i64 8, i1 false)
  %9 = load i32, i32* @GAIC_MAGIC, align 4
  %10 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %11 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.event_base*, %struct.event_base** %3, align 8
  %13 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %14 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %13, i32 0, i32 3
  store %struct.event_base* %12, %struct.event_base** %14, align 8
  %15 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %16 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %17 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %16, i32 0, i32 2
  store %struct.evdns_base* %15, %struct.evdns_base** %17, align 8
  %18 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %19 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %18, i32 0, i32 0
  %20 = load %struct.event_base*, %struct.event_base** %3, align 8
  %21 = load i32, i32* @gaic_cancel_request_cb, align 4
  %22 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %23 = call i32 @event_assign(i32* %19, %struct.event_base* %20, i32 -1, i32 0, i32 %21, %struct.gaic_request_status* %22)
  %24 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %25 = load i32, i32* @gaic_getaddrinfo_cb, align 4
  %26 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %27 = call i32 @evdns_getaddrinfo(%struct.evdns_base* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %25, %struct.gaic_request_status* %26)
  %28 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %29 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %31 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %30, i32 0, i32 0
  %32 = call i32 @event_add(i32* %31, %struct.timeval* %6)
  %33 = load i32, i32* @pending, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @pending, align 4
  ret void
}

declare dso_local %struct.gaic_request_status* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @event_assign(i32*, %struct.event_base*, i32, i32, i32, %struct.gaic_request_status*) #1

declare dso_local i32 @evdns_getaddrinfo(%struct.evdns_base*, i8*, i8*, i32*, i32, %struct.gaic_request_status*) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
