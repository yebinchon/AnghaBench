; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_irq_vector_policy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_irq_vector_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_alloc_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.irq_alloc_info*)* @assign_irq_vector_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_irq_vector_policy(%struct.irq_data* %0, %struct.irq_alloc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.irq_alloc_info*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.irq_alloc_info* %1, %struct.irq_alloc_info** %5, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %7 = call i64 @irqd_affinity_is_managed(%struct.irq_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call i32 @reserve_managed_vector(%struct.irq_data* %10)
  store i32 %11, i32* %3, align 4
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %5, align 8
  %14 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %5, align 8
  %20 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @assign_irq_vector(%struct.irq_data* %18, i64 %21)
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %12
  %24 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %25 = call i32 @reserve_irq_vector(%struct.irq_data* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %17, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @irqd_affinity_is_managed(%struct.irq_data*) #1

declare dso_local i32 @reserve_managed_vector(%struct.irq_data*) #1

declare dso_local i32 @assign_irq_vector(%struct.irq_data*, i64) #1

declare dso_local i32 @reserve_irq_vector(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
