; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p4_event_bind = type { i32*, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }

@p4_event_bind_map = common dso_local global %struct.p4_event_bind* null, align 8
@P4_ESCR_EVENT_MASK = common dso_local global i32 0, align 4
@P4_CCCR_RESERVED = common dso_local global i32 0, align 4
@P4_CCCR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @p4_pmu_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p4_pmu_enable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.p4_event_bind*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %3, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @p4_ht_config_thread(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @p4_clear_ht_bit(i32 %18)
  %20 = call i32 @p4_config_unpack_escr(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @p4_config_unpack_event(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.p4_event_bind*, %struct.p4_event_bind** @p4_event_bind_map, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %25, i64 %27
  store %struct.p4_event_bind* %28, %struct.p4_event_bind** %7, align 8
  %29 = load %struct.p4_event_bind*, %struct.p4_event_bind** %7, align 8
  %30 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @p4_is_event_cascaded(i32 %38)
  %40 = call i32 @WARN_ON_ONCE(i32 %39)
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load i32, i32* @P4_ESCR_EVENT_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.p4_event_bind*, %struct.p4_event_bind** %7, align 8
  %52 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @P4_OPCODE_EVNT(i32 %53)
  %55 = call i32 @P4_ESCR_EVENT(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %59 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @p4_config_unpack_cccr(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @p4_pmu_enable_pebs(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @wrmsrl_safe(i32 %66, i32 %67)
  %69 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %70 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @P4_CCCR_RESERVED, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = load i32, i32* @P4_CCCR_ENABLE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @wrmsrl_safe(i32 %71, i32 %77)
  ret void
}

declare dso_local i32 @p4_ht_config_thread(i32) #1

declare dso_local i32 @p4_config_unpack_escr(i32) #1

declare dso_local i32 @p4_clear_ht_bit(i32) #1

declare dso_local i32 @p4_config_unpack_event(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @p4_is_event_cascaded(i32) #1

declare dso_local i32 @P4_ESCR_EVENT(i32) #1

declare dso_local i32 @P4_OPCODE_EVNT(i32) #1

declare dso_local i32 @p4_config_unpack_cccr(i32) #1

declare dso_local i32 @p4_pmu_enable_pebs(i32) #1

declare dso_local i32 @wrmsrl_safe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
