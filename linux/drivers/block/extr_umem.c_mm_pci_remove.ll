; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_mm_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_mm_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cardinfo = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mm_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.cardinfo*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.cardinfo* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.cardinfo* %5, %struct.cardinfo** %3, align 8
  %6 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %7 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %6, i32 0, i32 4
  %8 = call i32 @tasklet_kill(i32* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.cardinfo* %12)
  %14 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %15 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @iounmap(i32 %16)
  %18 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %19 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  %26 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %27 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = mul nsw i32 %30, 2
  %32 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %33 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %39 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dma_free_coherent(i32* %29, i32 %31, i64 %37, i32 %43)
  br label %45

45:                                               ; preds = %25, %1
  %46 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %47 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %55 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = mul nsw i32 %58, 2
  %60 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %61 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %67 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(i32* %57, i32 %59, i64 %65, i32 %71)
  br label %73

73:                                               ; preds = %53, %45
  %74 = load %struct.cardinfo*, %struct.cardinfo** %3, align 8
  %75 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @blk_cleanup_queue(i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = call i32 @pci_release_regions(%struct.pci_dev* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = call i32 @pci_disable_device(%struct.pci_dev* %80)
  ret void
}

declare dso_local %struct.cardinfo* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.cardinfo*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
