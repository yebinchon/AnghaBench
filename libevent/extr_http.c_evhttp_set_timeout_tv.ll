; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_set_timeout_tv.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_set_timeout_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32, i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_set_timeout_tv(%struct.evhttp* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.evhttp*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  %6 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %5, i32 0, i32 1
  %7 = load %struct.timeval*, %struct.timeval** %4, align 8
  %8 = call i32 @evhttp_set_timeout_tv_(i32* %6, %struct.timeval* %7, i32 -1)
  %9 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  %10 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %9, i32 0, i32 0
  %11 = load %struct.timeval*, %struct.timeval** %4, align 8
  %12 = call i32 @evhttp_set_timeout_tv_(i32* %10, %struct.timeval* %11, i32 -1)
  ret void
}

declare dso_local i32 @evhttp_set_timeout_tv_(i32*, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
