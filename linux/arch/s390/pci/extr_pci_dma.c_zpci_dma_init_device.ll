; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_zpci_dma_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_zpci_dma_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32, i32*, i32*, i32*, i64, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@high_memory = common dso_local global i64 0, align 8
@ZPCI_TABLE_SIZE_RT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@s390_iommu_strict = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_dma_init_device(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %5 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %9, i32 0, i32 8
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %12, i32 0, i32 7
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = call i32* (...) @dma_alloc_cpu_table()
  %16 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %140

25:                                               ; preds = %1
  %26 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @PAGE_ALIGN(i64 %28)
  %30 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %30, i32 0, i32 6
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* @high_memory, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* @ZPCI_TABLE_SIZE_RT, align 8
  %35 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = add nsw i64 %45, 1
  %47 = call i32 @min3(i32 %33, i64 %38, i64 %46)
  %48 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = sub nsw i64 %57, 1
  %59 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %60 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  %61 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %62 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %67 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 8
  %72 = call i8* @vzalloc(i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %74, i32 0, i32 4
  store i32* %73, i32** %75, align 8
  %76 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %25
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %133

83:                                               ; preds = %25
  %84 = load i32, i32* @s390_iommu_strict, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %83
  %87 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %88 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 8
  %91 = call i8* @vzalloc(i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %94 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %93, i32 0, i32 3
  store i32* %92, i32** %94, align 8
  %95 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %86
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %120

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %83
  %104 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %105 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %106 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = ptrtoint i32* %113 to i32
  %115 = call i32 @zpci_register_ioat(%struct.zpci_dev* %104, i32 0, i64 %107, i64 %110, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %120

119:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %142

120:                                              ; preds = %118, %99
  %121 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %122 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @vfree(i32* %123)
  %125 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %126 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %125, i32 0, i32 4
  store i32* null, i32** %126, align 8
  %127 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %128 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @vfree(i32* %129)
  %131 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %132 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %131, i32 0, i32 3
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %120, %80
  %134 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %135 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @dma_free_cpu_table(i32* %136)
  %138 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %139 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %133, %22
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %119
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @dma_alloc_cpu_table(...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @min3(i32, i64, i64) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @zpci_register_ioat(%struct.zpci_dev*, i32, i64, i64, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_cpu_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
