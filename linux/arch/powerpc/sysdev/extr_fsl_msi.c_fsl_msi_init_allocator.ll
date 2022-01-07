; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_msi_init_allocator.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_msi_init_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_msi = type { i32, i32 }

@NR_MSI_IRQS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_msi*)* @fsl_msi_init_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_msi_init_allocator(%struct.fsl_msi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_msi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fsl_msi* %0, %struct.fsl_msi** %3, align 8
  %6 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %6, i32 0, i32 0
  %8 = load i32, i32* @NR_MSI_IRQS_MAX, align 4
  %9 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @irq_domain_get_of_node(i32 %11)
  %13 = call i32 @msi_bitmap_alloc(i32* %7, i32 %8, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %28, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NR_MSI_IRQS_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @msi_bitmap_reserve_hwirq(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %19

31:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @msi_bitmap_alloc(i32*, i32, i32) #1

declare dso_local i32 @irq_domain_get_of_node(i32) #1

declare dso_local i32 @msi_bitmap_reserve_hwirq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
