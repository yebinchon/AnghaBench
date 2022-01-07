; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_activate_managed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_activate_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }

@vector_searchmask = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Managed startup for irq %u, but no CPU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Managed startup irq %u, no vector available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @activate_managed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_managed(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %7 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %6)
  store %struct.cpumask* %7, %struct.cpumask** %4, align 8
  %8 = load i32, i32* @vector_searchmask, align 4
  %9 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %10 = load i32, i32* @cpu_online_mask, align 4
  %11 = call i32 @cpumask_and(i32 %8, %struct.cpumask* %9, i32 %10)
  %12 = load i32, i32* @vector_searchmask, align 4
  %13 = call i32 @cpumask_empty(i32 %12)
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %25 = load i32, i32* @vector_searchmask, align 4
  %26 = call i32 @assign_managed_vector(%struct.irq_data* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @cpumask_and(i32, %struct.cpumask*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @assign_managed_vector(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
