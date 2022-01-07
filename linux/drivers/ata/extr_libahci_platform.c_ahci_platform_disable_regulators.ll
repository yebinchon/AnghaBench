; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_disable_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_disable_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahci_platform_disable_regulators(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca %struct.ahci_host_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %29

20:                                               ; preds = %10
  %21 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_disable(i32 %27)
  br label %29

29:                                               ; preds = %20, %19
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  %33 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regulator_disable(i32 %35)
  %37 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %38 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regulator_disable(i32 %39)
  ret void
}

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
