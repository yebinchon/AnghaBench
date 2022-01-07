; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mapx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mapx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.octeon_ciu3_info* }
%struct.octeon_ciu3_info = type { i32, i32 }
%struct.irq_chip = type { i32 }
%struct.octeon_ciu_chip_data = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_irq_ciu3_mapx(%struct.irq_domain* %0, i32 %1, i32 %2, %struct.irq_chip* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca %struct.octeon_ciu3_info*, align 8
  %11 = alloca %struct.octeon_ciu_chip_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.irq_chip* %3, %struct.irq_chip** %9, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 0
  %14 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %13, align 8
  store %struct.octeon_ciu3_info* %14, %struct.octeon_ciu3_info** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %10, align 8
  %17 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.octeon_ciu_chip_data* @kzalloc_node(i32 16, i32 %15, i32 %18)
  store %struct.octeon_ciu_chip_data* %19, %struct.octeon_ciu_chip_data** %11, align 8
  %20 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %11, align 8
  %21 = icmp ne %struct.octeon_ciu_chip_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %11, align 8
  %28 = getelementptr inbounds %struct.octeon_ciu_chip_data, %struct.octeon_ciu_chip_data* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %11, align 8
  %30 = getelementptr inbounds %struct.octeon_ciu_chip_data, %struct.octeon_ciu_chip_data* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %10, align 8
  %32 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %11, align 8
  %35 = getelementptr inbounds %struct.octeon_ciu_chip_data, %struct.octeon_ciu_chip_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %10, align 8
  %37 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %11, align 8
  %40 = getelementptr inbounds %struct.octeon_ciu_chip_data, %struct.octeon_ciu_chip_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %43 = load i32, i32* @handle_edge_irq, align 4
  %44 = call i32 @irq_set_chip_and_handler(i32 %41, %struct.irq_chip* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %11, align 8
  %47 = call i32 @irq_set_chip_data(i32 %45, %struct.octeon_ciu_chip_data* %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %25, %22
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.octeon_ciu_chip_data* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.octeon_ciu_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
