; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Shutting down %s ...\0A\00", align 1
@MTIP_DDF_INIT_DONE_BIT = common dso_local global i32 0, align 4
@rssd_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_block_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_shutdown(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %3 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %4 = call i32 @mtip_hw_shutdown(%struct.driver_data* %3)
  %5 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %6 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %1
  %10 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_info(i32* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @MTIP_DDF_INIT_DONE_BIT, align 4
  %21 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %22 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %21, i32 0, i32 4
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %9
  %26 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %27 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @del_gendisk(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %25, %9
  %31 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @blk_cleanup_queue(i32* %40)
  %42 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %43 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %42, i32 0, i32 3
  %44 = call i32 @blk_mq_free_tag_set(i32* %43)
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %47 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @put_disk(%struct.TYPE_5__* %48)
  %50 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %51 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %50, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %53 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %45, %1
  %55 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %56 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ida_free(i32* @rssd_index_ida, i32 %57)
  ret i32 0
}

declare dso_local i32 @mtip_hw_shutdown(%struct.driver_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_5__*) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_5__*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
