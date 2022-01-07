; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_set_affinity_hub_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_set_affinity_hub_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.hub_irq_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @set_affinity_hub_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_affinity_hub_irq(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hub_irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %10 = call %struct.hub_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.hub_irq_data* %10, %struct.hub_irq_data** %8, align 8
  %11 = load %struct.hub_irq_data*, %struct.hub_irq_data** %8, align 8
  %12 = icmp ne %struct.hub_irq_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %18 = call i64 @irqd_is_started(%struct.irq_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %22 = call i32 @disable_hub_irq(%struct.irq_data* %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.hub_irq_data*, %struct.hub_irq_data** %8, align 8
  %25 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %26 = call i32 @setup_hub_mask(%struct.hub_irq_data* %24, %struct.cpumask* %25)
  %27 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %28 = call i64 @irqd_is_started(%struct.irq_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %32 = call i32 @enable_hub_irq(%struct.irq_data* %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %35 = load %struct.hub_irq_data*, %struct.hub_irq_data** %8, align 8
  %36 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpumask_of(i32 %37)
  %39 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %34, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.hub_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @irqd_is_started(%struct.irq_data*) #1

declare dso_local i32 @disable_hub_irq(%struct.irq_data*) #1

declare dso_local i32 @setup_hub_mask(%struct.hub_irq_data*, %struct.cpumask*) #1

declare dso_local i32 @enable_hub_irq(%struct.irq_data*) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
