; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_setup_hub_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_setup_hub_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hub_irq_data = type { i32, i8** }
%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@PI_INT_MASK0_A = common dso_local global i32 0, align 4
@PI_INT_MASK1_A = common dso_local global i32 0, align 4
@PI_INT_MASK0_B = common dso_local global i32 0, align 4
@PI_INT_MASK1_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hub_irq_data*, %struct.cpumask*)* @setup_hub_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_hub_mask(%struct.hub_irq_data* %0, %struct.cpumask* %1) #0 {
  %3 = alloca %struct.hub_irq_data*, align 8
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hub_irq_data* %0, %struct.hub_irq_data** %3, align 8
  store %struct.cpumask* %1, %struct.cpumask** %4, align 8
  %7 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %8 = load i32, i32* @cpu_online_mask, align 4
  %9 = call i32 @cpumask_first_and(%struct.cpumask* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @cpu_to_node(i32 %10)
  %12 = call i32 @COMPACT_TO_NASID_NODEID(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %15 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cputoslice(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PI_INT_MASK0_A, align 4
  %22 = call i8* @REMOTE_HUB_PTR(i32 %20, i32 %21)
  %23 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %24 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PI_INT_MASK1_A, align 4
  %29 = call i8* @REMOTE_HUB_PTR(i32 %27, i32 %28)
  %30 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %31 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* %29, i8** %33, align 8
  br label %49

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PI_INT_MASK0_B, align 4
  %37 = call i8* @REMOTE_HUB_PTR(i32 %35, i32 %36)
  %38 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %39 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PI_INT_MASK1_B, align 4
  %44 = call i8* @REMOTE_HUB_PTR(i32 %42, i32 %43)
  %45 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %46 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8* %44, i8** %48, align 8
  br label %49

49:                                               ; preds = %34, %19
  ret void
}

declare dso_local i32 @cpumask_first_and(%struct.cpumask*, i32) #1

declare dso_local i32 @COMPACT_TO_NASID_NODEID(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @cputoslice(i32) #1

declare dso_local i8* @REMOTE_HUB_PTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
