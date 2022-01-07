; ModuleID = '/home/carl/AnghaBench/ish/platform/extr_darwin.c_get_cpu_usage.c'
source_filename = "/home/carl/AnghaBench/ish/platform/extr_darwin.c_get_cpu_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_usage = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@HOST_CPU_LOAD_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_CPU_LOAD_INFO = common dso_local global i32 0, align 4
@CPU_STATE_USER = common dso_local global i64 0, align 8
@CPU_STATE_SYSTEM = common dso_local global i64 0, align 8
@CPU_STATE_IDLE = common dso_local global i64 0, align 8
@CPU_STATE_NICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @get_cpu_usage() #0 {
  %1 = alloca %struct.cpu_usage, align 4
  %2 = alloca %struct.TYPE_2__, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @HOST_CPU_LOAD_INFO_COUNT, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @mach_host_self()
  %6 = load i32, i32* @HOST_CPU_LOAD_INFO, align 4
  %7 = ptrtoint %struct.TYPE_2__* %2 to i32
  %8 = call i32 @host_statistics(i32 %5, i32 %6, i32 %7, i32* %3)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @CPU_STATE_USER, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.cpu_usage, %struct.cpu_usage* %1, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @CPU_STATE_SYSTEM, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.cpu_usage, %struct.cpu_usage* %1, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @CPU_STATE_IDLE, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.cpu_usage, %struct.cpu_usage* %1, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @CPU_STATE_NICE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.cpu_usage, %struct.cpu_usage* %1, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.cpu_usage* %1 to { i64, i64 }*
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 4
  ret { i64, i64 } %34
}

declare dso_local i32 @host_statistics(i32, i32, i32, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
