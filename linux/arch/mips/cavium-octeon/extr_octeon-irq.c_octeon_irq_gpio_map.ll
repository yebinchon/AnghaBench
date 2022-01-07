; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_gpio_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_gpio_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.octeon_irq_gpio_domain_data* }
%struct.octeon_irq_gpio_domain_data = type { i32 }

@octeon_irq_ciu_to_irq = common dso_local global i64** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@octeon_irq_gpio_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @octeon_irq_gpio_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_gpio_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_irq_gpio_domain_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 0
  %14 = load %struct.octeon_irq_gpio_domain_data*, %struct.octeon_irq_gpio_domain_data** %13, align 8
  store %struct.octeon_irq_gpio_domain_data* %14, %struct.octeon_irq_gpio_domain_data** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.octeon_irq_gpio_domain_data*, %struct.octeon_irq_gpio_domain_data** %8, align 8
  %17 = getelementptr inbounds %struct.octeon_irq_gpio_domain_data, %struct.octeon_irq_gpio_domain_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = ashr i32 %19, 6
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.octeon_irq_gpio_domain_data*, %struct.octeon_irq_gpio_domain_data** %8, align 8
  %23 = getelementptr inbounds %struct.octeon_irq_gpio_domain_data, %struct.octeon_irq_gpio_domain_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = and i32 %25, 63
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64**, i64*** @octeon_irq_ciu_to_irq, align 8
  %29 = call i32 @ARRAY_SIZE(i64** %28)
  %30 = icmp uge i32 %27, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %3
  %32 = load i64**, i64*** @octeon_irq_ciu_to_irq, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %54

45:                                               ; preds = %31
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @octeon_irq_gpio_chip, align 4
  %51 = load i32, i32* @handle_level_irq, align 4
  %52 = call i32 @octeon_irq_set_ciu_mapping(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @octeon_irq_set_ciu_mapping(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
