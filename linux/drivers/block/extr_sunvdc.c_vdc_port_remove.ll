; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.vdc_port = type { %struct.TYPE_4__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @vdc_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_port_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.vdc_port*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %4 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %4, i32 0, i32 0
  %6 = call %struct.vdc_port* @dev_get_drvdata(i32* %5)
  store %struct.vdc_port* %6, %struct.vdc_port** %3, align 8
  %7 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %8 = icmp ne %struct.vdc_port* %7, null
  br i1 %8, label %9, label %52

9:                                                ; preds = %1
  %10 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %11 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @blk_mq_stop_hw_queues(i32 %14)
  %16 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %17 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %16, i32 0, i32 3
  %18 = call i32 @flush_work(i32* %17)
  %19 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %20 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %19, i32 0, i32 2
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %23 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %27 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @del_gendisk(%struct.TYPE_5__* %28)
  %30 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %31 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cleanup_queue(i32 %34)
  %36 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %37 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @put_disk(%struct.TYPE_5__* %38)
  %40 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %41 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %40, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %43 = call i32 @vdc_free_tx_ring(%struct.vdc_port* %42)
  %44 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %45 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %44, i32 0, i32 0
  %46 = call i32 @vio_ldc_free(%struct.TYPE_4__* %45)
  %47 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_set_drvdata(i32* %48, i32* null)
  %50 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %51 = call i32 @kfree(%struct.vdc_port* %50)
  br label %52

52:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.vdc_port* @dev_get_drvdata(i32*) #1

declare dso_local i32 @blk_mq_stop_hw_queues(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_5__*) #1

declare dso_local i32 @cleanup_queue(i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_5__*) #1

declare dso_local i32 @vdc_free_tx_ring(%struct.vdc_port*) #1

declare dso_local i32 @vio_ldc_free(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.vdc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
