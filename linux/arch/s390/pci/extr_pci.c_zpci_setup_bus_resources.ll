; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_setup_bus_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_setup_bus_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.resource*, i64 }
%struct.resource = type { i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"PCI Bus %04x:%02x\00", align 1
@ZPCI_BUS_NR = common dso_local global i32 0, align 4
@PCI_BAR_COUNT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IORESOURCE_PREFETCH = common dso_local global i64 0, align 8
@IORESOURCE_MEM_64 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*, %struct.list_head*)* @zpci_setup_bus_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpci_setup_bus_resources(%struct.zpci_dev* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zpci_dev*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ZPCI_BUS_NR, align 4
  %19 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %132, %2
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PCI_BAR_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %135

24:                                               ; preds = %20
  %25 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %132

35:                                               ; preds = %24
  %36 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %37 = call i32 @zpci_alloc_iomap(%struct.zpci_dev* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %136

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %43, i32* %50, align 8
  %51 = load i64, i64* @IORESOURCE_MEM, align 8
  store i64 %51, i64* %8, align 8
  %52 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %42
  %63 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %64 = load i64, i64* %8, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %62, %42
  %67 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load i64, i64* @IORESOURCE_MEM_64, align 8
  %79 = load i64, i64* %8, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %77, %66
  %82 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %83 = call i64 @zpci_use_mio(%struct.zpci_dev* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %6, align 8
  br label %97

94:                                               ; preds = %81
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @ZPCI_ADDR(i32 %95)
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %94, %85
  %98 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = shl i64 1, %105
  store i64 %106, i64* %7, align 8
  %107 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call %struct.resource* @__alloc_res(%struct.zpci_dev* %107, i64 %108, i64 %109, i64 %110)
  store %struct.resource* %111, %struct.resource** %9, align 8
  %112 = load %struct.resource*, %struct.resource** %9, align 8
  %113 = icmp ne %struct.resource* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %97
  %115 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @zpci_free_iomap(%struct.zpci_dev* %115, i32 %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %136

120:                                              ; preds = %97
  %121 = load %struct.resource*, %struct.resource** %9, align 8
  %122 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %123 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  store %struct.resource* %121, %struct.resource** %128, align 8
  %129 = load %struct.list_head*, %struct.list_head** %5, align 8
  %130 = load %struct.resource*, %struct.resource** %9, align 8
  %131 = call i32 @pci_add_resource(%struct.list_head* %129, %struct.resource* %130)
  br label %132

132:                                              ; preds = %120, %34
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %20

135:                                              ; preds = %20
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %114, %40
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @zpci_alloc_iomap(%struct.zpci_dev*) #1

declare dso_local i64 @zpci_use_mio(%struct.zpci_dev*) #1

declare dso_local i64 @ZPCI_ADDR(i32) #1

declare dso_local %struct.resource* @__alloc_res(%struct.zpci_dev*, i64, i64, i64) #1

declare dso_local i32 @zpci_free_iomap(%struct.zpci_dev*, i32) #1

declare dso_local i32 @pci_add_resource(%struct.list_head*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
