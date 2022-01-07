; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_pwr_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_pwr_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr = type { i32 }
%struct.pci_dev = type { i32 }

@LSS_PWS_BITS = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i64 0, align 8
@PCI_D3hot = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mid_pwr*, %struct.pci_dev*, i64)* @mid_pwr_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid_pwr_set_power_state(%struct.mid_pwr* %0, %struct.pci_dev* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mid_pwr*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mid_pwr* %0, %struct.mid_pwr** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = call i32 @intel_mid_pwr_get_lss_id(%struct.pci_dev* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @LSS_PWS_BITS, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sdiv i32 %21, 32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @LSS_PWS_BITS, align 4
  %25 = mul nsw i32 %23, %24
  %26 = srem i32 %25, 32
  store i32 %26, i32* %10, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @PCI_D0, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i64, i64* @PCI_D0, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PCI_D3hot, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @PCI_D3hot, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.mid_pwr*, %struct.mid_pwr** %5, align 8
  %40 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.mid_pwr*, %struct.mid_pwr** %5, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @__set_power_state(%struct.mid_pwr* %42, %struct.pci_dev* %43, i64 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.mid_pwr*, %struct.mid_pwr** %5, align 8
  %50 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %38, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @intel_mid_pwr_get_lss_id(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__set_power_state(%struct.mid_pwr*, %struct.pci_dev*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
