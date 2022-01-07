; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c___smp_rescan_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c___smp_rescan_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pcpu = type { i32, i32 }
%struct.sclp_core_info = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@cpu_possible_mask = common dso_local global i32 0, align 4
@cpu_present_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@sclp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@boot_core_type = common dso_local global i64 0, align 8
@smp_cpu_mt_shift = common dso_local global i32 0, align 4
@smp_cpu_mtid = common dso_local global i32 0, align 4
@pcpu_devices = common dso_local global %struct.pcpu* null, align 8
@CPU_STATE_STANDBY = common dso_local global i32 0, align 4
@CPU_STATE_CONFIGURED = common dso_local global i32 0, align 4
@POLARIZATION_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_core_info*, i32)* @__smp_rescan_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smp_rescan_cpus(%struct.sclp_core_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sclp_core_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sclp_core_info* %0, %struct.sclp_core_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @cpu_possible_mask, align 4
  %13 = load i32, i32* @cpu_present_mask, align 4
  %14 = call i32 @cpumask_xor(i32* %6, i32 %12, i32 %13)
  %15 = call i32 @cpumask_first(i32* %6)
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %121, %2
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.sclp_core_info*, %struct.sclp_core_info** %3, align 8
  %19 = getelementptr inbounds %struct.sclp_core_info, %struct.sclp_core_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @nr_cpu_ids, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i1 [ false, %16 ], [ %25, %22 ]
  br i1 %27, label %28, label %124

28:                                               ; preds = %26
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.sclp_core_info*, %struct.sclp_core_info** %3, align 8
  %33 = getelementptr inbounds %struct.sclp_core_info, %struct.sclp_core_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @boot_core_type, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %121

43:                                               ; preds = %31, %28
  %44 = load %struct.sclp_core_info*, %struct.sclp_core_info** %3, align 8
  %45 = getelementptr inbounds %struct.sclp_core_info, %struct.sclp_core_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @smp_cpu_mt_shift, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %117, %43
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @smp_cpu_mtid, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %54
  %59 = load i32, i32* @cpu_present_mask, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i64 @pcpu_find_address(i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %117

66:                                               ; preds = %58
  %67 = load %struct.pcpu*, %struct.pcpu** @pcpu_devices, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %67, i64 %69
  store %struct.pcpu* %70, %struct.pcpu** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.pcpu*, %struct.pcpu** %5, align 8
  %75 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.sclp_core_info*, %struct.sclp_core_info** %3, align 8
  %78 = getelementptr inbounds %struct.sclp_core_info, %struct.sclp_core_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @smp_cpu_mtid, align 4
  %81 = add nsw i32 %80, 1
  %82 = mul nsw i32 %79, %81
  %83 = icmp sge i32 %76, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %66
  %85 = load i32, i32* @CPU_STATE_STANDBY, align 4
  br label %88

86:                                               ; preds = %66
  %87 = load i32, i32* @CPU_STATE_CONFIGURED, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.pcpu*, %struct.pcpu** %5, align 8
  %91 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @POLARIZATION_UNKNOWN, align 4
  %94 = call i32 @smp_cpu_set_polarization(i32 %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @set_cpu_present(i32 %95, i32 1)
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @smp_add_present_cpu(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @set_cpu_present(i32 %104, i32 0)
  br label %109

106:                                              ; preds = %99, %88
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @cpumask_next(i32 %110, i32* %6)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @nr_cpu_ids, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %120

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %65
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %54

120:                                              ; preds = %115, %54
  br label %121

121:                                              ; preds = %120, %42
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %16

124:                                              ; preds = %26
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local i32 @cpumask_xor(i32*, i32, i32) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i64 @pcpu_find_address(i32, i32) #1

declare dso_local i32 @smp_cpu_set_polarization(i32, i32) #1

declare dso_local i32 @set_cpu_present(i32, i32) #1

declare dso_local i64 @smp_add_present_cpu(i32) #1

declare dso_local i32 @cpumask_next(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
