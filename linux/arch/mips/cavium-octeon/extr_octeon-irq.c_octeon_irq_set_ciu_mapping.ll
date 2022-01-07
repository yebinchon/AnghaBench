; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_set_ciu_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_set_ciu_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }
%struct.octeon_ciu_chip_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@octeon_irq_ciu_to_irq = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.irq_chip*, i32)* @octeon_irq_set_ciu_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_set_ciu_mapping(i32 %0, i32 %1, i32 %2, i32 %3, %struct.irq_chip* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.octeon_ciu_chip_data*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.irq_chip* %4, %struct.irq_chip** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.octeon_ciu_chip_data* @kzalloc(i32 12, i32 %15)
  store %struct.octeon_ciu_chip_data* %16, %struct.octeon_ciu_chip_data** %14, align 8
  %17 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %14, align 8
  %18 = icmp ne %struct.octeon_ciu_chip_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %48

22:                                               ; preds = %6
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @irq_set_chip_and_handler(i32 %23, %struct.irq_chip* %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %14, align 8
  %29 = getelementptr inbounds %struct.octeon_ciu_chip_data, %struct.octeon_ciu_chip_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %14, align 8
  %32 = getelementptr inbounds %struct.octeon_ciu_chip_data, %struct.octeon_ciu_chip_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %14, align 8
  %35 = getelementptr inbounds %struct.octeon_ciu_chip_data, %struct.octeon_ciu_chip_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.octeon_ciu_chip_data*, %struct.octeon_ciu_chip_data** %14, align 8
  %38 = call i32 @irq_set_chip_data(i32 %36, %struct.octeon_ciu_chip_data* %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32**, i32*** @octeon_irq_ciu_to_irq, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %39, i32* %47, align 4
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %22, %19
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.octeon_ciu_chip_data* @kzalloc(i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.octeon_ciu_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
