; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_start_flush_timer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_start_flush_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { %struct.event_timer }
%struct.event_timer = type { i64, i32, i32 }

@precise_now = common dso_local global i32 0, align 4
@flush_gateway = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_flush_timer(%struct.udp_target* %0) #0 {
  %2 = alloca %struct.udp_target*, align 8
  %3 = alloca %struct.event_timer*, align 8
  store %struct.udp_target* %0, %struct.udp_target** %2, align 8
  %4 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %5 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %4, i32 0, i32 0
  store %struct.event_timer* %5, %struct.event_timer** %3, align 8
  %6 = load i32, i32* @precise_now, align 4
  %7 = load %struct.event_timer*, %struct.event_timer** %3, align 8
  %8 = getelementptr inbounds %struct.event_timer, %struct.event_timer* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @flush_gateway, align 4
  %10 = load %struct.event_timer*, %struct.event_timer** %3, align 8
  %11 = getelementptr inbounds %struct.event_timer, %struct.event_timer* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.event_timer*, %struct.event_timer** %3, align 8
  %13 = getelementptr inbounds %struct.event_timer, %struct.event_timer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.event_timer*, %struct.event_timer** %3, align 8
  %20 = getelementptr inbounds %struct.event_timer, %struct.event_timer* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.event_timer*, %struct.event_timer** %3, align 8
  %22 = call i32 @insert_event_timer(%struct.event_timer* %21)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @insert_event_timer(%struct.event_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
