; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_free_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_free_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.gendisk*, %struct.TYPE_2__, i32* }
%struct.gendisk = type { i32, i32* }
%struct.TYPE_2__ = type { i64 }

@GENHD_FL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_free_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_free_disk(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %4 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %5 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %4, i32 0, i32 0
  %6 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  store %struct.gendisk* %6, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = icmp ne %struct.gendisk* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GENHD_FL_UP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %18 = call i32 @del_gendisk(%struct.gendisk* %17)
  br label %19

19:                                               ; preds = %16, %9, %1
  %20 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %21 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %26 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @blk_cleanup_queue(i32* %27)
  %29 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %30 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %32 = icmp ne %struct.gendisk* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %35 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %39 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %45 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %44, i32 0, i32 1
  %46 = call i32 @blk_mq_free_tag_set(%struct.TYPE_2__* %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %49 = call i32 @put_disk(%struct.gendisk* %48)
  %50 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %51 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %50, i32 0, i32 0
  store %struct.gendisk* null, %struct.gendisk** %51, align 8
  ret void
}

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_2__*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
