; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_intel_mid_pci_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_intel_mid_pci_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr = type { i64 }
%struct.pci_dev = type { i32 }

@midpwr = common dso_local global %struct.mid_pwr* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"set_power_state() returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_mid_pci_set_power_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mid_pwr*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mid_pwr*, %struct.mid_pwr** @midpwr, align 8
  store %struct.mid_pwr* %7, %struct.mid_pwr** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.mid_pwr*, %struct.mid_pwr** %5, align 8
  %10 = icmp ne %struct.mid_pwr* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.mid_pwr*, %struct.mid_pwr** %5, align 8
  %13 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.mid_pwr*, %struct.mid_pwr** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mid_pwr_set_power_state(%struct.mid_pwr* %17, %struct.pci_dev* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_vdbg(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  ret i32 0
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @mid_pwr_set_power_state(%struct.mid_pwr*, %struct.pci_dev*, i32) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
