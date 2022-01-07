; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_lingering_fail.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_lingering_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }

@EVHTTP_CON_LINGERING_CLOSE = common dso_local global i32 0, align 4
@EVREQ_HTTP_DATA_TOO_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_lingering_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_lingering_fail(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %5 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %6 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EVHTTP_CON_LINGERING_CLOSE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %13 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %14 = call i32 @evhttp_lingering_close(%struct.evhttp_connection* %12, %struct.evhttp_request* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %17 = load i32, i32* @EVREQ_HTTP_DATA_TOO_LONG, align 4
  %18 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @evhttp_lingering_close(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
