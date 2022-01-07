; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlp.c_xlp_get_pcie_link.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlp.c_xlp_get_pcie_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { i64, %struct.pci_dev*, %struct.pci_bus* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @xlp_get_pcie_link(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  store %struct.pci_bus* %8, %struct.pci_bus** %4, align 8
  %9 = call i64 (...) @cpu_is_xlp9xx()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 2
  %14 = load %struct.pci_bus*, %struct.pci_bus** %13, align 8
  store %struct.pci_bus* %14, %struct.pci_bus** %5, align 8
  br label %15

15:                                               ; preds = %34, %11
  %16 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %17 = icmp ne %struct.pci_bus* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 2
  %21 = load %struct.pci_bus*, %struct.pci_bus** %20, align 8
  %22 = icmp ne %struct.pci_bus* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 2
  %26 = load %struct.pci_bus*, %struct.pci_bus** %25, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %23, %18, %15
  %31 = phi i1 [ false, %18 ], [ false, %15 ], [ %29, %23 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  store %struct.pci_bus* %33, %struct.pci_bus** %4, align 8
  br label %34

34:                                               ; preds = %32
  %35 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %36 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %35, i32 0, i32 2
  %37 = load %struct.pci_bus*, %struct.pci_bus** %36, align 8
  store %struct.pci_bus* %37, %struct.pci_bus** %5, align 8
  br label %15

38:                                               ; preds = %30
  %39 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %40 = icmp ne %struct.pci_bus* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %43 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %42, i32 0, i32 2
  %44 = load %struct.pci_bus*, %struct.pci_bus** %43, align 8
  %45 = icmp ne %struct.pci_bus* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %48 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %47, i32 0, i32 1
  %49 = load %struct.pci_dev*, %struct.pci_dev** %48, align 8
  br label %51

50:                                               ; preds = %41, %38
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi %struct.pci_dev* [ %49, %46 ], [ null, %50 ]
  store %struct.pci_dev* %52, %struct.pci_dev** %2, align 8
  br label %83

53:                                               ; preds = %1
  %54 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %55 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %54, i32 0, i32 2
  %56 = load %struct.pci_bus*, %struct.pci_bus** %55, align 8
  store %struct.pci_bus* %56, %struct.pci_bus** %5, align 8
  br label %57

57:                                               ; preds = %69, %53
  %58 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %59 = icmp ne %struct.pci_bus* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %62 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i1 [ false, %57 ], [ %64, %60 ]
  br i1 %66, label %67, label %73

67:                                               ; preds = %65
  %68 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  store %struct.pci_bus* %68, %struct.pci_bus** %4, align 8
  br label %69

69:                                               ; preds = %67
  %70 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %71 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %70, i32 0, i32 2
  %72 = load %struct.pci_bus*, %struct.pci_bus** %71, align 8
  store %struct.pci_bus* %72, %struct.pci_bus** %5, align 8
  br label %57

73:                                               ; preds = %65
  %74 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %75 = icmp ne %struct.pci_bus* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %78 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %77, i32 0, i32 1
  %79 = load %struct.pci_dev*, %struct.pci_dev** %78, align 8
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi %struct.pci_dev* [ %79, %76 ], [ null, %80 ]
  store %struct.pci_dev* %82, %struct.pci_dev** %2, align 8
  br label %83

83:                                               ; preds = %81, %51
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %84
}

declare dso_local i64 @cpu_is_xlp9xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
