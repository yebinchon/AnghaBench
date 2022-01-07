; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.regmap_irq_chip_data = type { i32*, %struct.regmap* }
%struct.regmap = type { i64 }
%struct.regmap_irq = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @regmap_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regmap_irq_disable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.regmap_irq_chip_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.regmap_irq*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.regmap_irq_chip_data* %7, %struct.regmap_irq_chip_data** %3, align 8
  %8 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %9 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %8, i32 0, i32 1
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data* %11, i32 %14)
  store %struct.regmap_irq* %15, %struct.regmap_irq** %5, align 8
  %16 = load %struct.regmap_irq*, %struct.regmap_irq** %5, align 8
  %17 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %20 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.regmap_irq*, %struct.regmap_irq** %5, align 8
  %23 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = udiv i64 %24, %27
  %29 = getelementptr inbounds i32, i32* %21, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %18
  store i32 %31, i32* %29, align 4
  ret void
}

declare dso_local %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
