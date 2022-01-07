; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %5 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %6 = call i32 @ahci_platform_enable_regulators(%struct.ahci_host_priv* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %13 = call i32 @ahci_platform_enable_clks(%struct.ahci_host_priv* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %40

17:                                               ; preds = %11
  %18 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @reset_control_deassert(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %27 = call i32 @ahci_platform_enable_phys(%struct.ahci_host_priv* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %44

32:                                               ; preds = %30
  %33 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @reset_control_assert(i32 %35)
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %39 = call i32 @ahci_platform_disable_clks(%struct.ahci_host_priv* %38)
  br label %40

40:                                               ; preds = %37, %16
  %41 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %42 = call i32 @ahci_platform_disable_regulators(%struct.ahci_host_priv* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %31, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ahci_platform_enable_regulators(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_enable_clks(%struct.ahci_host_priv*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @ahci_platform_enable_phys(%struct.ahci_host_priv*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @ahci_platform_disable_clks(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_disable_regulators(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
