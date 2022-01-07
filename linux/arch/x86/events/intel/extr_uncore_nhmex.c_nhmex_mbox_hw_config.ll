; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extra_reg = type { i32, i32, i32, i32, i32 }
%struct.intel_uncore_box = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.intel_uncore_type* }
%struct.intel_uncore_type = type { i32 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i64 }

@nhmex_uncore_mbox_extra_regs = common dso_local global %struct.extra_reg* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EXTRA_REG_NHMEX_M_PLD = common dso_local global i32 0, align 4
@EXTRA_REG_NHMEX_M_FILTER = common dso_local global i32 0, align 4
@NHMEX_M_PMON_MM_CFG_EN = common dso_local global i32 0, align 4
@NHMEX_M0_MSR_PMU_MM_CFG = common dso_local global i32 0, align 4
@NHMEX_M1_MSR_PMU_MM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_mbox_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_mbox_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.intel_uncore_type*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca %struct.extra_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %12 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %13 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %15, align 8
  store %struct.intel_uncore_type* %16, %struct.intel_uncore_type** %6, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store %struct.hw_perf_event_extra* %19, %struct.hw_perf_event_extra** %7, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.hw_perf_event_extra* %22, %struct.hw_perf_event_extra** %8, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.extra_reg*, %struct.extra_reg** @nhmex_uncore_mbox_extra_regs, align 8
  store %struct.extra_reg* %23, %struct.extra_reg** %9, align 8
  br label %24

24:                                               ; preds = %146, %2
  %25 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %26 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %149

29:                                               ; preds = %24
  %30 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %31 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %38 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %32, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %146

43:                                               ; preds = %29
  %44 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %49 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %191

57:                                               ; preds = %43
  %58 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %59 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %6, align 8
  %62 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %65 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul i32 %63, %68
  %70 = add i32 %60, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp uge i32 %71, 65535
  br i1 %72, label %78, label %73

73:                                               ; preds = %57
  %74 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %75 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 255
  br label %78

78:                                               ; preds = %73, %57
  %79 = phi i1 [ true, %57 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON_ONCE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %191

86:                                               ; preds = %78
  %87 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %88 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EXTRA_REG_NHMEX_M_PLD, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 1, i32* %11, align 4
  br label %103

93:                                               ; preds = %86
  %94 = load i32, i32* %11, align 4
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @WARN_ON_ONCE(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %191

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 8
  %106 = shl i32 255, %105
  %107 = xor i32 %106, -1
  %108 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %109 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %112, 16
  %114 = shl i32 65535, %113
  %115 = xor i32 %114, -1
  %116 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %117 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %121 = call i32 @nhmex_mbox_extra_reg_idx(%struct.extra_reg* %120)
  %122 = load i32, i32* %11, align 4
  %123 = mul nsw i32 %122, 8
  %124 = shl i32 %121, %123
  %125 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %126 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %130, 16
  %132 = shl i32 %129, %131
  %133 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %134 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %138 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %143 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %103, %42
  %147 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %148 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %147, i32 1
  store %struct.extra_reg* %148, %struct.extra_reg** %9, align 8
  br label %24

149:                                              ; preds = %24
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %190

152:                                              ; preds = %149
  %153 = load i32, i32* @EXTRA_REG_NHMEX_M_FILTER, align 4
  %154 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %155 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %157 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @NHMEX_M_PMON_MM_CFG_EN, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %152
  %164 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %165 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %170 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  br label %174

171:                                              ; preds = %152
  %172 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %173 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %172, i32 0, i32 2
  store i64 -1, i64* %173, align 8
  br label %174

174:                                              ; preds = %171, %163
  %175 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %176 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, i32* @NHMEX_M0_MSR_PMU_MM_CFG, align 4
  %183 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %184 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  br label %189

185:                                              ; preds = %174
  %186 = load i32, i32* @NHMEX_M1_MSR_PMU_MM_CFG, align 4
  %187 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %188 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %181
  br label %190

190:                                              ; preds = %189, %149
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %99, %83, %54
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nhmex_mbox_extra_reg_idx(%struct.extra_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
