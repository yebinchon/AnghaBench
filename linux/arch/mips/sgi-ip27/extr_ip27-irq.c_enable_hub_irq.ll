; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_enable_hub_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_enable_hub_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.hub_irq_data = type { i32*, i32 }

@irq_enable_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @enable_hub_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_hub_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.hub_irq_data*, align 8
  %4 = alloca i64*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.hub_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.hub_irq_data* %6, %struct.hub_irq_data** %3, align 8
  %7 = load i32, i32* @irq_enable_mask, align 4
  %8 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64* @per_cpu(i32 %7, i32 %10)
  store i64* %11, i64** %4, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64*, i64** %4, align 8
  %16 = call i32 @set_bit(i32 %14, i64* %15)
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %21 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__raw_writeq(i64 %19, i32 %24)
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hub_irq_data*, %struct.hub_irq_data** %3, align 8
  %30 = getelementptr inbounds %struct.hub_irq_data, %struct.hub_irq_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__raw_writeq(i64 %28, i32 %33)
  ret void
}

declare dso_local %struct.hub_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64* @per_cpu(i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @__raw_writeq(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
