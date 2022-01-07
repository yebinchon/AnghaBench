; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_msi.c_ppc4xx_msi_init_allocator.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_msi.c_ppc4xx_msi_init_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ppc4xx_msi = type { i32 }

@msi_irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ppc4xx_msi*)* @ppc4xx_msi_init_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_msi_init_allocator(%struct.platform_device* %0, %struct.ppc4xx_msi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ppc4xx_msi*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ppc4xx_msi* %1, %struct.ppc4xx_msi** %5, align 8
  %7 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %5, align 8
  %8 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %7, i32 0, i32 0
  %9 = load i32, i32* @msi_irqs, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @msi_bitmap_alloc(i32* %8, i32 %9, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %5, align 8
  %21 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %20, i32 0, i32 0
  %22 = call i32 @msi_bitmap_reserve_dt_hwirqs(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %5, align 8
  %27 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %26, i32 0, i32 0
  %28 = call i32 @msi_bitmap_free(i32* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @msi_bitmap_alloc(i32*, i32, i32) #1

declare dso_local i32 @msi_bitmap_reserve_dt_hwirqs(i32*) #1

declare dso_local i32 @msi_bitmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
