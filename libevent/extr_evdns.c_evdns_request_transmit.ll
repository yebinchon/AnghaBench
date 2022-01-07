; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_request_transmit.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_request_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EVUTIL_FALLTHROUGH = common dso_local global i32 0, align 4
@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Setting timeout for request %p, sent to nameserver %p\00", align 1
@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Error from libevent when adding timer for request %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @evdns_request_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_request_transmit(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.request*, %struct.request** %3, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i32 @ASSERT_LOCKED(%struct.TYPE_5__* %8)
  %10 = load %struct.request*, %struct.request** %3, align 8
  %11 = call i32 @ASSERT_VALID_REQUEST(%struct.request* %10)
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 65535
  %18 = zext i1 %17 to i32
  %19 = call i32 @EVUTIL_ASSERT(i32 %18)
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %78

25:                                               ; preds = %1
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %78

33:                                               ; preds = %25
  %34 = load %struct.request*, %struct.request** %3, align 8
  %35 = load %struct.request*, %struct.request** %3, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @evdns_request_transmit_to(%struct.request* %34, %struct.TYPE_4__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %51 [
    i32 1, label %40
    i32 2, label %49
  ]

40:                                               ; preds = %33
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.request*, %struct.request** %3, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @nameserver_write_waiting(%struct.TYPE_4__* %47, i32 1)
  store i32 1, i32* %2, align 4
  br label %78

49:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  %50 = load i32, i32* @EVUTIL_FALLTHROUGH, align 4
  br label %51

51:                                               ; preds = %33, %49
  %52 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %53 = load %struct.request*, %struct.request** %3, align 8
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 (i32, i8*, %struct.request*, ...) @log(i32 %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.request* %53, %struct.TYPE_4__* %56)
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 4
  %60 = load %struct.request*, %struct.request** %3, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @evtimer_add(i32* %59, i32* %63)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %68 = load %struct.request*, %struct.request** %3, align 8
  %69 = call i32 (i32, i8*, %struct.request*, ...) @log(i32 %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.request* %68)
  br label %70

70:                                               ; preds = %66, %51
  %71 = load %struct.request*, %struct.request** %3, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.request*, %struct.request** %3, align 8
  %76 = getelementptr inbounds %struct.request, %struct.request* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %70, %40, %32, %24
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @ASSERT_LOCKED(%struct.TYPE_5__*) #1

declare dso_local i32 @ASSERT_VALID_REQUEST(%struct.request*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evdns_request_transmit_to(%struct.request*, %struct.TYPE_4__*) #1

declare dso_local i32 @nameserver_write_waiting(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @log(i32, i8*, %struct.request*, ...) #1

declare dso_local i32 @evtimer_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
