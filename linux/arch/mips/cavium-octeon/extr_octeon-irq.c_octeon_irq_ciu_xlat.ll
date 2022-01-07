; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.octeon_irq_ciu_domain_data* }
%struct.octeon_irq_ciu_domain_data = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* @octeon_irq_ciu_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_ciu_xlat(%struct.irq_domain* %0, %struct.device_node* %1, i32* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.octeon_irq_ciu_domain_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 0
  %19 = load %struct.octeon_irq_ciu_domain_data*, %struct.octeon_irq_ciu_domain_data** %18, align 8
  store %struct.octeon_irq_ciu_domain_data* %19, %struct.octeon_irq_ciu_domain_data** %16, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.octeon_irq_ciu_domain_data*, %struct.octeon_irq_ciu_domain_data** %16, align 8
  %28 = getelementptr inbounds %struct.octeon_irq_ciu_domain_data, %struct.octeon_irq_ciu_domain_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* %15, align 4
  %33 = icmp ugt i32 %32, 63
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load i32, i32* %14, align 4
  %39 = shl i32 %38, 6
  %40 = load i32, i32* %15, align 4
  %41 = or i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = load i64*, i64** %12, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32*, i32** %13, align 8
  store i32 0, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
