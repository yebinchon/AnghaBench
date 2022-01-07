; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_update_adaptive_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_update_adaptive_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32, i32, i32 }

@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_PEBS_MEMINFO_TYPE = common dso_local global i32 0, align 4
@PEBS_DATACFG_MEMINFO = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_INTR = common dso_local global i32 0, align 4
@PEBS_GP_REGS = common dso_local global i32 0, align 4
@PERF_SAMPLE_WEIGHT = common dso_local global i32 0, align 4
@INTEL_ARCH_EVENT_MASK = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PEBS_DATACFG_GP = common dso_local global i32 0, align 4
@PERF_REG_EXTENDED_MASK = common dso_local global i32 0, align 4
@PEBS_DATACFG_XMMS = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@PEBS_DATACFG_LBRS = common dso_local global i32 0, align 4
@PEBS_DATACFG_LBR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @pebs_update_adaptive_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pebs_update_adaptive_cfg(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.perf_event_attr* %10, %struct.perf_event_attr** %4, align 8
  %11 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %16 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %21, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PERF_PEBS_MEMINFO_TYPE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @PEBS_DATACFG_MEMINFO, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PEBS_GP_REGS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %42, %37
  %50 = phi i1 [ false, %37 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %58 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @INTEL_ARCH_EVENT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %63 = icmp eq i32 %61, %62
  br label %64

64:                                               ; preds = %56, %49
  %65 = phi i1 [ false, %49 ], [ %63, %56 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %71 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %69, %64
  %78 = load i32, i32* @PEBS_DATACFG_GP, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %88 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PERF_REG_EXTENDED_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @PEBS_DATACFG_XMMS, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %86, %81
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load i32, i32* @PEBS_DATACFG_LBRS, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @PEBS_DATACFG_LBR_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = or i32 %103, %107
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %102, %97
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %26
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
