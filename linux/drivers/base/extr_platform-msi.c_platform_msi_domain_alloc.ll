; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32, %struct.platform_msi_priv_data* }
%struct.platform_msi_priv_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_msi_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_msi_priv_data*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %11 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 1
  %12 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %11, align 8
  store %struct.platform_msi_priv_data* %12, %struct.platform_msi_priv_data** %8, align 8
  %13 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %14 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %19 = call i32 @platform_msi_alloc_descs_with_irq(i32 %15, i32 %16, i32 %17, %struct.platform_msi_priv_data* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %26 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %29 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %34 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %33, i32 0, i32 0
  %35 = call i32 @msi_domain_populate_irqs(i32 %27, i32 %30, i32 %31, i32 %32, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %24
  %39 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @platform_msi_domain_free(%struct.irq_domain* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @platform_msi_alloc_descs_with_irq(i32, i32, i32, %struct.platform_msi_priv_data*) #1

declare dso_local i32 @msi_domain_populate_irqs(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @platform_msi_domain_free(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
