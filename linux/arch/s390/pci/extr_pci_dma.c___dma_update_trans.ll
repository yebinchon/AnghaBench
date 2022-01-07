; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___dma_update_trans.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___dma_update_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ZPCI_PTE_VALID_MASK = common dso_local global i32 0, align 4
@ZPCI_PTE_VALID = common dso_local global i32 0, align 4
@ZPCI_PTE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*, i64, i32, i64, i32)* @__dma_update_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_update_trans(%struct.zpci_dev* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zpci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @PAGE_ALIGN(i64 %18)
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = and i64 %22, %23
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %13, align 8
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %122

31:                                               ; preds = %5
  %32 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %33 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %17, align 4
  br label %116

43:                                               ; preds = %31
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %50 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64* @dma_walk_cpu_trans(i32 %51, i32 %52)
  store i64* %53, i64** %15, align 8
  %54 = load i64*, i64** %15, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %17, align 4
  br label %76

59:                                               ; preds = %48
  %60 = load i64*, i64** %15, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @dma_update_cpu_trans(i64* %60, i32* %61, i32 %62)
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %13, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %44

75:                                               ; preds = %44
  br label %76

76:                                               ; preds = %75, %56
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @ZPCI_PTE_VALID_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @ZPCI_PTE_VALID, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %79
  %86 = load i32, i32* @ZPCI_PTE_INVALID, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %109, %85
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %16, align 4
  %90 = icmp sgt i32 %88, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = sub i64 0, %92
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %13, align 8
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  %101 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %102 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i64* @dma_walk_cpu_trans(i32 %103, i32 %104)
  store i64* %105, i64** %15, align 8
  %106 = load i64*, i64** %15, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %91
  br label %114

109:                                              ; preds = %91
  %110 = load i64*, i64** %15, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @dma_update_cpu_trans(i64* %110, i32* %111, i32 %112)
  br label %87

114:                                              ; preds = %108, %87
  br label %115

115:                                              ; preds = %114, %79, %76
  br label %116

116:                                              ; preds = %115, %40
  %117 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %118 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %117, i32 0, i32 0
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %116, %28
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64* @dma_walk_cpu_trans(i32, i32) #1

declare dso_local i32 @dma_update_cpu_trans(i64*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
