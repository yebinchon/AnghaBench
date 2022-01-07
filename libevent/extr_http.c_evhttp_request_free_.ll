; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_request_free_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_request_free_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_request_free_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_request_free_(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %5 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %6 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %5, i32 0, i32 0
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %8 = load i32, i32* @next, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* %6, %struct.evhttp_request* %7, i32 %8)
  %10 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %11 = call i32 @evhttp_request_free_auto(%struct.evhttp_request* %10)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_request_free_auto(%struct.evhttp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
