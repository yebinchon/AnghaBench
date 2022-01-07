; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlp.c_pci_cfg_read_32bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlp.c_pci_cfg_read_32bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@pci_config_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32)* @pci_cfg_read_32bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_cfg_read_32bit(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, -4
  store i32 %11, i32* %7, align 4
  %12 = call i64 (...) @cpu_is_xlp9xx()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @PCI_SLOT(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PCI_FUNC(i32 %24)
  %26 = call i32 @nlm_node_present(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %19
  store i32 -1, i32* %4, align 4
  br label %76

29:                                               ; preds = %23
  br label %48

30:                                               ; preds = %14
  %31 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @PCI_SLOT(i32 %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %76

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 44
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %76

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %29
  br label %63

49:                                               ; preds = %3
  %50 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %51 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @PCI_SLOT(i32 %55)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 2388
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %76

62:                                               ; preds = %58, %54, %49
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i64, i64* @pci_config_base, align 8
  %65 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %66 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @pci_cfg_addr(i64 %67, i32 %68, i32 %69)
  %71 = add nsw i64 %64, %70
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %63, %61, %45, %41, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @nlm_node_present(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i64 @pci_cfg_addr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
