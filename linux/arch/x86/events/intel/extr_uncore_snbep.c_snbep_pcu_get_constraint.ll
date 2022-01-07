; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_pcu_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_pcu_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32, i32, i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@EXTRA_REG_NONE = common dso_local global i32 0, align 4
@uncore_constraint_empty = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.intel_uncore_box*, %struct.perf_event*)* @snbep_pcu_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @snbep_pcu_get_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.intel_uncore_extra_reg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.hw_perf_event_extra* %15, %struct.hw_perf_event_extra** %6, align 8
  %16 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %17 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %16, i32 0, i32 0
  %18 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %17, align 8
  %19 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %18, i64 0
  store %struct.intel_uncore_extra_reg* %19, %struct.intel_uncore_extra_reg** %7, align 8
  %20 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EXTRA_REG_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %2
  %32 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %33 = call i32 @uncore_box_is_fake(%struct.intel_uncore_box* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %2
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %126

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %103, %41
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 8
  %45 = zext i32 %44 to i64
  %46 = shl i64 255, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %7, align 8
  %49 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %48, i32 0, i32 1
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @raw_spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %7, align 8
  %53 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %52, i32 0, i32 2
  %54 = call i32 @atomic_read(i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @__BITS_VALUE(i32 %54, i32 %55, i32 8)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %7, align 8
  %61 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %59, %62
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %58, %42
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 8
  %70 = shl i32 1, %69
  %71 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %7, align 8
  %72 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %71, i32 0, i32 2
  %73 = call i32 @atomic_add(i32 %70, i32* %72)
  %74 = load i32, i32* %10, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %7, align 8
  %77 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %7, align 8
  %84 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %67, %58
  %88 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %7, align 8
  %89 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %88, i32 0, i32 1
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @raw_spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  %97 = srem i32 %96, 4
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %100 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @snbep_pcu_alter_er(%struct.perf_event* %104, i32 %105, i32 0)
  store i32 %106, i32* %11, align 4
  br label %42

107:                                              ; preds = %94
  store %struct.event_constraint* @uncore_constraint_empty, %struct.event_constraint** %3, align 8
  br label %126

108:                                              ; preds = %87
  %109 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %110 = call i32 @uncore_box_is_fake(%struct.intel_uncore_box* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %115 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @snbep_pcu_alter_er(%struct.perf_event* %119, i32 %120, i32 1)
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %124 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %108
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %126

126:                                              ; preds = %125, %107, %40
  %127 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %127
}

declare dso_local i32 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snbep_pcu_alter_er(%struct.perf_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
