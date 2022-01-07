; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_io-workarounds.c_iowa_pci_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_io-workarounds.c_iowa_pci_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowa_bus = type { %struct.pci_controller* }
%struct.pci_controller = type { i64, %struct.resource*, i64 }
%struct.resource = type { i64, i64 }

@iowa_bus_count = common dso_local global i32 0, align 4
@iowa_busses = common dso_local global %struct.iowa_bus* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iowa_bus* (i64, i64)* @iowa_pci_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iowa_bus* @iowa_pci_find(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.iowa_bus*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iowa_bus*, align 8
  %12 = alloca %struct.pci_controller*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %80, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @iowa_bus_count, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %83

17:                                               ; preds = %13
  %18 = load %struct.iowa_bus*, %struct.iowa_bus** @iowa_busses, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iowa_bus, %struct.iowa_bus* %18, i64 %20
  store %struct.iowa_bus* %21, %struct.iowa_bus** %11, align 8
  %22 = load %struct.iowa_bus*, %struct.iowa_bus** %11, align 8
  %23 = getelementptr inbounds %struct.iowa_bus, %struct.iowa_bus* %22, i32 0, i32 0
  %24 = load %struct.pci_controller*, %struct.pci_controller** %23, align 8
  store %struct.pci_controller* %24, %struct.pci_controller** %12, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %17
  %28 = load %struct.pci_controller*, %struct.pci_controller** %12, align 8
  %29 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.pci_controller*, %struct.pci_controller** %12, align 8
  %33 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = sub i64 %35, 1
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.iowa_bus*, %struct.iowa_bus** %11, align 8
  store %struct.iowa_bus* %45, %struct.iowa_bus** %3, align 8
  br label %84

46:                                               ; preds = %40, %27
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load %struct.pci_controller*, %struct.pci_controller** %12, align 8
  %56 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %55, i32 0, i32 1
  %57 = load %struct.resource*, %struct.resource** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %57, i64 %59
  store %struct.resource* %60, %struct.resource** %8, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.resource*, %struct.resource** %8, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ule i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load %struct.iowa_bus*, %struct.iowa_bus** %11, align 8
  store %struct.iowa_bus* %73, %struct.iowa_bus** %3, align 8
  br label %84

74:                                               ; preds = %66, %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %51

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78, %47
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %13

83:                                               ; preds = %13
  store %struct.iowa_bus* null, %struct.iowa_bus** %3, align 8
  br label %84

84:                                               ; preds = %83, %72, %44
  %85 = load %struct.iowa_bus*, %struct.iowa_bus** %3, align 8
  ret %struct.iowa_bus* %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
