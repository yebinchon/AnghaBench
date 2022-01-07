; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumf_measurement_alert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumf_measurement_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_code = type { i32 }
%struct.cpu_hw_sf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CPU_MF_INT_SF_MASK = common dso_local global i32 0, align 4
@IRQEXT_CMS = common dso_local global i32 0, align 4
@cpu_hw_sf = common dso_local global i32 0, align 4
@PMU_F_RESERVED = common dso_local global i32 0, align 4
@CPU_MF_INT_SF_PRA = common dso_local global i32 0, align 4
@PMU_F_IN_USE = common dso_local global i32 0, align 4
@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"measurement alert: %#x\0A\00", align 1
@CPU_MF_INT_SF_SACA = common dso_local global i32 0, align 4
@CPU_MF_INT_SF_LSDA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Sample data was lost\0A\00", align 1
@PMU_F_ERR_LSDA = common dso_local global i32 0, align 4
@CPU_MF_INT_SF_IAE = common dso_local global i32 0, align 4
@CPU_MF_INT_SF_ISE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"A sampling buffer entry is incorrect (alert=0x%x)\0A\00", align 1
@PMU_F_ERR_IBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @cpumf_measurement_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumf_measurement_alert(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ext_code, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpu_hw_sf*, align 8
  %8 = getelementptr inbounds %struct.ext_code, %struct.ext_code* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CPU_MF_INT_SF_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %110

14:                                               ; preds = %3
  %15 = load i32, i32* @IRQEXT_CMS, align 4
  %16 = call i32 @inc_irq_stat(i32 %15)
  %17 = call %struct.cpu_hw_sf* @this_cpu_ptr(i32* @cpu_hw_sf)
  store %struct.cpu_hw_sf* %17, %struct.cpu_hw_sf** %7, align 8
  %18 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %19 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PMU_F_RESERVED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %110

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CPU_MF_INT_SF_PRA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %25
  %31 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %32 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PMU_F_IN_USE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %39 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i64 @SAMPL_DIAG_MODE(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %46 = call i32 @hw_collect_aux(%struct.cpu_hw_sf* %45)
  br label %52

47:                                               ; preds = %37
  %48 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @hw_perf_event_update(%struct.TYPE_2__* %50, i32 0)
  br label %52

52:                                               ; preds = %47, %44
  br label %63

53:                                               ; preds = %30
  %54 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %55 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PMU_F_IN_USE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON_ONCE(i32 %61)
  br label %63

63:                                               ; preds = %53, %52
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CPU_MF_INT_SF_PRA, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @sfdbg, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @debug_sprintf_event(i32 %69, i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @CPU_MF_INT_SF_SACA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %79 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %78, i32 0, i32 1
  %80 = call i32 @qsi(i32* %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @CPU_MF_INT_SF_LSDA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @PMU_F_ERR_LSDA, align 4
  %89 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %90 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = call i32 (...) @sf_disable()
  br label %94

94:                                               ; preds = %86, %81
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @CPU_MF_INT_SF_IAE, align 4
  %97 = load i32, i32* @CPU_MF_INT_SF_ISE, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @PMU_F_ERR_IBE, align 4
  %105 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %7, align 8
  %106 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = call i32 (...) @sf_disable()
  br label %110

110:                                              ; preds = %13, %24, %101, %94
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local %struct.cpu_hw_sf* @this_cpu_ptr(i32*) #1

declare dso_local i64 @SAMPL_DIAG_MODE(i32*) #1

declare dso_local i32 @hw_collect_aux(%struct.cpu_hw_sf*) #1

declare dso_local i32 @hw_perf_event_update(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i32) #1

declare dso_local i32 @qsi(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sf_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
