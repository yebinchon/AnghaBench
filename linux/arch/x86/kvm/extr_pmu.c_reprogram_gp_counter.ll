; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_reprogram_gp_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_reprogram_gp_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i32, i32)* }
%struct.kvm_pmc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.kvm* }
%struct.kvm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.kvm_pmu_event_filter = type { i32, i32*, i64 }

@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_PIN_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"kvm pmu: pin control bit is ignored\0A\00", align 1
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@AMD64_RAW_EVENT_MASK_NB = common dso_local global i32 0, align 4
@KVM_PMU_EVENT_ALLOW = common dso_local global i64 0, align 8
@KVM_PMU_EVENT_DENY = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_EVENT = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_UMASK = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_EDGE = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INV = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_CMASK = common dso_local global i32 0, align 4
@HSW_IN_TX = common dso_local global i32 0, align 4
@HSW_IN_TX_CHECKPOINTED = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8
@PERF_COUNT_HW_MAX = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@X86_RAW_EVENT_MASK = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reprogram_gp_counter(%struct.kvm_pmc* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm*, align 8
  %10 = alloca %struct.kvm_pmu_event_filter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @PERF_TYPE_RAW, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.kvm*, %struct.kvm** %17, align 8
  store %struct.kvm* %18, %struct.kvm** %9, align 8
  store i32 1, i32* %12, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ARCH_PERFMON_EVENTSEL_PIN_CONTROL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @printk_once(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %30 = call i32 @pmc_stop_counter(%struct.kvm_pmc* %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %37 = call i32 @pmc_is_enabled(%struct.kvm_pmc* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %25
  br label %176

40:                                               ; preds = %35
  %41 = load %struct.kvm*, %struct.kvm** %9, align 8
  %42 = getelementptr inbounds %struct.kvm, %struct.kvm* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kvm*, %struct.kvm** %9, align 8
  %46 = getelementptr inbounds %struct.kvm, %struct.kvm* %45, i32 0, i32 0
  %47 = call %struct.kvm_pmu_event_filter* @srcu_dereference(i32 %44, i32* %46)
  store %struct.kvm_pmu_event_filter* %47, %struct.kvm_pmu_event_filter** %10, align 8
  %48 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %10, align 8
  %49 = icmp ne %struct.kvm_pmu_event_filter* %48, null
  br i1 %49, label %50, label %101

50:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %10, align 8
  %54 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %10, align 8
  %59 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @AMD64_RAW_EVENT_MASK_NB, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %74

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %51

74:                                               ; preds = %69, %51
  %75 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %10, align 8
  %76 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @KVM_PMU_EVENT_ALLOW, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %10, align 8
  %83 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %80, %74
  %88 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %10, align 8
  %89 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @KVM_PMU_EVENT_DENY, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %10, align 8
  %96 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %93, %87
  br label %101

101:                                              ; preds = %100, %40
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  br label %176

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @ARCH_PERFMON_EVENTSEL_EVENT, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @ARCH_PERFMON_EVENTSEL_UMASK, align 4
  %111 = and i32 %109, %110
  %112 = ashr i32 %111, 8
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @ARCH_PERFMON_EVENTSEL_EDGE, align 4
  %115 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INV, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @ARCH_PERFMON_EVENTSEL_CMASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @HSW_IN_TX, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @HSW_IN_TX_CHECKPOINTED, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %113, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %105
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %129, align 8
  %131 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %132 = call i32 @pmc_to_pmu(%struct.kvm_pmc* %131)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 %130(i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @PERF_COUNT_HW_MAX, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %125
  %140 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %125
  br label %142

142:                                              ; preds = %141, %105
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @PERF_TYPE_RAW, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @X86_RAW_EVENT_MASK, align 4
  %149 = and i32 %147, %148
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @HSW_IN_TX, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @HSW_IN_TX_CHECKPOINTED, align 4
  %174 = and i32 %172, %173
  %175 = call i32 @pmc_reprogram_counter(%struct.kvm_pmc* %151, i32 %152, i32 %153, i32 %159, i32 %165, i32 %168, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %150, %104, %39
  ret void
}

declare dso_local i32 @printk_once(i8*) #1

declare dso_local i32 @pmc_stop_counter(%struct.kvm_pmc*) #1

declare dso_local i32 @pmc_is_enabled(%struct.kvm_pmc*) #1

declare dso_local %struct.kvm_pmu_event_filter* @srcu_dereference(i32, i32*) #1

declare dso_local i32 @pmc_to_pmu(%struct.kvm_pmc*) #1

declare dso_local i32 @pmc_reprogram_counter(%struct.kvm_pmc*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
