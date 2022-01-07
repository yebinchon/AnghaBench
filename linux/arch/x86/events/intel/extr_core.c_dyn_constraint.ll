; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_dyn_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_dyn_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { %struct.event_constraint* }
%struct.event_constraint = type { i32 }

@PERF_X86_EVENT_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, %struct.event_constraint*, i32)* @dyn_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @dyn_constraint(%struct.cpu_hw_events* %0, %struct.event_constraint* %1, i32 %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.event_constraint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_constraint*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store %struct.event_constraint* %1, %struct.event_constraint** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 0
  %10 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %11 = icmp ne %struct.event_constraint* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.event_constraint*, %struct.event_constraint** %5, align 8
  %16 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PERF_X86_EVENT_DYNAMIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %3
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %22, i32 0, i32 0
  %24 = load %struct.event_constraint*, %struct.event_constraint** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %24, i64 %26
  store %struct.event_constraint* %27, %struct.event_constraint** %7, align 8
  %28 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %29 = load %struct.event_constraint*, %struct.event_constraint** %5, align 8
  %30 = bitcast %struct.event_constraint* %28 to i8*
  %31 = bitcast %struct.event_constraint* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load i32, i32* @PERF_X86_EVENT_DYNAMIC, align 4
  %33 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %34 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  store %struct.event_constraint* %37, %struct.event_constraint** %5, align 8
  br label %38

38:                                               ; preds = %21, %3
  %39 = load %struct.event_constraint*, %struct.event_constraint** %5, align 8
  ret %struct.event_constraint* %39
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
