; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.driver_data = type { i32, %struct.TYPE_4__*, i64, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MTIP_DDF_REMOVAL_BIT = common dso_local global i32 0, align 4
@dev_lock = common dso_local global i32 0, align 4
@removing_list = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Completion workers still active!\0A\00", align 1
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@MTIP_ABAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mtip_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.driver_data* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.driver_data* %7, %struct.driver_data** %3, align 8
  %8 = load i32, i32* @MTIP_DDF_REMOVAL_BIT, align 4
  %9 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %10 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %9, i32 0, i32 3
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @dev_lock, i64 %12)
  %14 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 9
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 0
  %19 = call i32 @list_add(i32* %18, i32* @removing_list)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @dev_lock, i64 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @mtip_check_surprise_removal(%struct.pci_dev* %22)
  %24 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %25 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %24, i32 0, i32 5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @synchronize_irq(i32 %28)
  %30 = load i64, i64* @jiffies, align 8
  %31 = call i64 @msecs_to_jiffies(i32 4000)
  %32 = add i64 %30, %31
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %45, %1
  %34 = call i32 @msleep(i32 20)
  br label %35

35:                                               ; preds = %33
  %36 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 6
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @time_before(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %33, label %47

47:                                               ; preds = %45
  %48 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %49 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %54 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @fsync_bdev(i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %59 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %58, i32 0, i32 6
  %60 = call i64 @atomic_read(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %64 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %63, i32 0, i32 5
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @dev_warn(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %70 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @blk_set_queue_dying(i32 %71)
  %73 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %74 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %75 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %74, i32 0, i32 3
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %78 = call i32 @mtip_block_remove(%struct.driver_data* %77)
  %79 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %80 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %68
  %84 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %85 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @flush_workqueue(i64 %86)
  %88 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %89 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @destroy_workqueue(i64 %90)
  %92 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %93 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @drop_cpu(i32 %97)
  %99 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %100 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @drop_cpu(i32 %104)
  %106 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %107 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @drop_cpu(i32 %111)
  br label %113

113:                                              ; preds = %83, %68
  %114 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %115 = call i32 @pci_disable_msi(%struct.pci_dev* %114)
  %116 = load i64, i64* %4, align 8
  %117 = call i32 @spin_lock_irqsave(i32* @dev_lock, i64 %116)
  %118 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %119 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %118, i32 0, i32 0
  %120 = call i32 @list_del_init(i32* %119)
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* @dev_lock, i64 %121)
  %123 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %124 = call i32 @kfree(%struct.driver_data* %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %126 = load i32, i32* @MTIP_ABAR, align 4
  %127 = shl i32 1, %126
  %128 = call i32 @pcim_iounmap_regions(%struct.pci_dev* %125, i32 %127)
  %129 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %130 = call i32 @pci_set_drvdata(%struct.pci_dev* %129, i32* null)
  ret void
}

declare dso_local %struct.driver_data* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mtip_check_surprise_removal(%struct.pci_dev*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @fsync_bdev(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @blk_set_queue_dying(i32) #1

declare dso_local i32 @mtip_block_remove(%struct.driver_data*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @drop_cpu(i32) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.driver_data*) #1

declare dso_local i32 @pcim_iounmap_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
