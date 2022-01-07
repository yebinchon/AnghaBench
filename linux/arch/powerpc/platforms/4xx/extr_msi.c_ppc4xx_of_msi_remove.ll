; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_msi.c_ppc4xx_of_msi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_msi.c_ppc4xx_of_msi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ppc4xx_msi* }
%struct.ppc4xx_msi = type { i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@msi_irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ppc4xx_of_msi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_of_msi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ppc4xx_msi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %8, align 8
  store %struct.ppc4xx_msi* %9, %struct.ppc4xx_msi** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @msi_irqs, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %3, align 8
  %16 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @irq_dispose_mapping(i32 %25)
  br label %27

27:                                               ; preds = %24, %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %3, align 8
  %33 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %3, align 8
  %39 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %38, i32 0, i32 3
  %40 = call i32 @msi_bitmap_free(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %3, align 8
  %43 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iounmap(i32 %44)
  %46 = load %struct.ppc4xx_msi*, %struct.ppc4xx_msi** %3, align 8
  %47 = getelementptr inbounds %struct.ppc4xx_msi, %struct.ppc4xx_msi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @of_node_put(i32 %48)
  ret i32 0
}

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @msi_bitmap_free(%struct.TYPE_4__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
