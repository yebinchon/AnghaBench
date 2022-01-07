; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_request_finished.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_request_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request*, %struct.request*, i32, %struct.request*, i32, %struct.TYPE_2__*, %struct.evdns_base*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.evdns_base = type { i64, i32, i32, %struct.request* }

@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Removing timeout for request %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.request**, i32)* @request_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_finished(%struct.request* %0, %struct.request** %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.request** %1, %struct.request*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 6
  %11 = load %struct.evdns_base*, %struct.evdns_base** %10, align 8
  store %struct.evdns_base* %11, %struct.evdns_base** %7, align 8
  %12 = load %struct.request**, %struct.request*** %5, align 8
  %13 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %14 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %13, i32 0, i32 3
  %15 = icmp ne %struct.request** %12, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %18 = call i32 @EVDNS_LOCK(%struct.evdns_base* %17)
  %19 = load %struct.request*, %struct.request** %4, align 8
  %20 = call i32 @ASSERT_VALID_REQUEST(%struct.request* %19)
  %21 = load %struct.request**, %struct.request*** %5, align 8
  %22 = icmp ne %struct.request** %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = load %struct.request**, %struct.request*** %5, align 8
  %26 = call i32 @evdns_request_remove(%struct.request* %24, %struct.request** %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = call i32 @log(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.request* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 7
  %36 = call i32 @evtimer_del(i32* %35)
  %37 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %38 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 5
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  br label %52

47:                                               ; preds = %27
  %48 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %49 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %33
  %53 = load %struct.request*, %struct.request** %4, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 7
  %55 = call i32 @event_debug_unassign(i32* %54)
  %56 = load %struct.request*, %struct.request** %4, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %52
  %61 = load %struct.request*, %struct.request** %4, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load %struct.request*, %struct.request** %4, align 8
  %69 = getelementptr inbounds %struct.request, %struct.request* %68, i32 0, i32 6
  %70 = load %struct.evdns_base*, %struct.evdns_base** %69, align 8
  %71 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.request*, %struct.request** %4, align 8
  %76 = getelementptr inbounds %struct.request, %struct.request* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = call i32 @event_del(i32* %78)
  %80 = load %struct.request*, %struct.request** %4, align 8
  %81 = getelementptr inbounds %struct.request, %struct.request* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = call i32 @evtimer_del(i32* %83)
  br label %85

85:                                               ; preds = %74, %67, %60, %52
  %86 = load %struct.request*, %struct.request** %4, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.request*, %struct.request** %4, align 8
  %92 = getelementptr inbounds %struct.request, %struct.request* %91, i32 0, i32 3
  %93 = load %struct.request*, %struct.request** %92, align 8
  %94 = call i32 @mm_free(%struct.request* %93)
  br label %96

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %90
  %97 = load %struct.request*, %struct.request** %4, align 8
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 1
  %99 = load %struct.request*, %struct.request** %98, align 8
  %100 = icmp ne %struct.request* %99, null
  br i1 %100, label %101, label %142

101:                                              ; preds = %96
  %102 = load %struct.request*, %struct.request** %4, align 8
  %103 = getelementptr inbounds %struct.request, %struct.request* %102, i32 0, i32 1
  %104 = load %struct.request*, %struct.request** %103, align 8
  %105 = getelementptr inbounds %struct.request, %struct.request* %104, i32 0, i32 0
  %106 = load %struct.request*, %struct.request** %105, align 8
  %107 = load %struct.request*, %struct.request** %4, align 8
  %108 = icmp eq %struct.request* %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @EVUTIL_ASSERT(i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %101
  %114 = load %struct.request*, %struct.request** %4, align 8
  %115 = getelementptr inbounds %struct.request, %struct.request* %114, i32 0, i32 1
  %116 = load %struct.request*, %struct.request** %115, align 8
  %117 = call i32 @search_request_finished(%struct.request* %116)
  %118 = load %struct.request*, %struct.request** %4, align 8
  %119 = getelementptr inbounds %struct.request, %struct.request* %118, i32 0, i32 1
  %120 = load %struct.request*, %struct.request** %119, align 8
  %121 = getelementptr inbounds %struct.request, %struct.request* %120, i32 0, i32 0
  store %struct.request* null, %struct.request** %121, align 8
  %122 = load %struct.request*, %struct.request** %4, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 1
  %124 = load %struct.request*, %struct.request** %123, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %113
  %129 = load %struct.request*, %struct.request** %4, align 8
  %130 = getelementptr inbounds %struct.request, %struct.request* %129, i32 0, i32 1
  %131 = load %struct.request*, %struct.request** %130, align 8
  %132 = call i32 @mm_free(%struct.request* %131)
  br label %133

133:                                              ; preds = %128, %113
  %134 = load %struct.request*, %struct.request** %4, align 8
  %135 = getelementptr inbounds %struct.request, %struct.request* %134, i32 0, i32 1
  store %struct.request* null, %struct.request** %135, align 8
  br label %141

136:                                              ; preds = %101
  %137 = load %struct.request*, %struct.request** %4, align 8
  %138 = getelementptr inbounds %struct.request, %struct.request* %137, i32 0, i32 1
  %139 = load %struct.request*, %struct.request** %138, align 8
  %140 = getelementptr inbounds %struct.request, %struct.request* %139, i32 0, i32 0
  store %struct.request* null, %struct.request** %140, align 8
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %96
  %143 = load %struct.request*, %struct.request** %4, align 8
  %144 = call i32 @mm_free(%struct.request* %143)
  %145 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %146 = call i32 @evdns_requests_pump_waiting_queue(%struct.evdns_base* %145)
  %147 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %148 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %147)
  ret void
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @ASSERT_VALID_REQUEST(%struct.request*) #1

declare dso_local i32 @evdns_request_remove(%struct.request*, %struct.request**) #1

declare dso_local i32 @log(i32, i8*, %struct.request*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @event_debug_unassign(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @mm_free(%struct.request*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @search_request_finished(%struct.request*) #1

declare dso_local i32 @evdns_requests_pump_waiting_queue(%struct.evdns_base*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
