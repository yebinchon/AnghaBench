; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c___find_weakest_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c___find_weakest_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr_dev = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_D3hot = common dso_local global i64 0, align 8
@LSS_MAX_SHARED_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No room for device in PWRMU LSS cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mid_pwr_dev*, %struct.pci_dev*, i64)* @__find_weakest_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__find_weakest_power_state(%struct.mid_pwr_dev* %0, %struct.pci_dev* %1, i64 %2) #0 {
  %4 = alloca %struct.mid_pwr_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mid_pwr_dev* %0, %struct.mid_pwr_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @PCI_D3hot, align 8
  store i64 %9, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @LSS_MAX_SHARED_DEVS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.mid_pwr_dev*, %struct.mid_pwr_dev** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %15, i64 %17
  %19 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %18, i32 0, i32 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = icmp eq %struct.pci_dev* %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %14
  %24 = load %struct.mid_pwr_dev*, %struct.mid_pwr_dev** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %24, i64 %26
  %28 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %27, i32 0, i32 1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23, %14
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %10

36:                                               ; preds = %31, %10
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @LSS_MAX_SHARED_DEVS, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load %struct.mid_pwr_dev*, %struct.mid_pwr_dev** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %42, i64 %44
  %46 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %45, i32 0, i32 1
  store %struct.pci_dev* %41, %struct.pci_dev** %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.mid_pwr_dev*, %struct.mid_pwr_dev** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %48, i64 %50
  %52 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  br label %58

53:                                               ; preds = %36
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_WARN(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %53, %40
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @LSS_MAX_SHARED_DEVS, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.mid_pwr_dev*, %struct.mid_pwr_dev** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %64, i64 %66
  %68 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.mid_pwr_dev*, %struct.mid_pwr_dev** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %73, i64 %75
  %77 = getelementptr inbounds %struct.mid_pwr_dev, %struct.mid_pwr_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %72, %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load i64, i64* %7, align 8
  ret i64 %84
}

declare dso_local i32 @dev_WARN(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
