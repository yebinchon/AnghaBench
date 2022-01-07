; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_probe_failed.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_probe_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Error from libevent when adding timer event for %s\00", align 1
@MAX_PROBE_TIMEOUT = common dso_local global i32 0, align 4
@TIMEOUT_BACKOFF_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameserver*)* @nameserver_probe_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_probe_failed(%struct.nameserver* %0) #0 {
  %2 = alloca %struct.nameserver*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  store %struct.nameserver* %0, %struct.nameserver** %2, align 8
  %6 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %7 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @ASSERT_LOCKED(%struct.TYPE_2__* %8)
  %10 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %11 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %10, i32 0, i32 3
  %12 = call i32 @evtimer_del(i32* %11)
  %13 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %14 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %20 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @memcpy(%struct.timeval* %3, i32* %22, i32 8)
  %24 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %25 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %57, %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 3600
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %60

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 3
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 3
  store i32 %42, i32* %40, align 4
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1000000
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 1000000
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %54, 1000000
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %46, %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  br label %27

60:                                               ; preds = %34
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 3600
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 3600, i32* %65, align 4
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %69 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %73 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %72, i32 0, i32 3
  %74 = call i64 @evtimer_add(i32* %73, %struct.timeval* %3)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %78 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %79 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %78, i32 0, i32 2
  %80 = bitcast i32* %79 to %struct.sockaddr*
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %82 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %80, i8* %81, i32 128)
  %83 = call i32 @log(i32 %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %17, %76, %67
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(%struct.TYPE_2__*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @memcpy(%struct.timeval*, i32*, i32) #1

declare dso_local i64 @evtimer_add(i32*, %struct.timeval*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
