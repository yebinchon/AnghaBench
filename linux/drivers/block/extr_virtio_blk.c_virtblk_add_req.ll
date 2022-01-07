; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_add_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_add_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.virtblk_req = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@VIRTIO_BLK_T_OUT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*, %struct.virtblk_req*, %struct.scatterlist*, i32)* @virtblk_add_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtblk_add_req(%struct.virtqueue* %0, %struct.virtblk_req* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.virtblk_req*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist, align 4
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca [3 x %struct.scatterlist*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %5, align 8
  store %struct.virtblk_req* %1, %struct.virtblk_req** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.virtblk_req*, %struct.virtblk_req** %6, align 8
  %15 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %14, i32 0, i32 1
  %16 = call i32 @sg_init_one(%struct.scatterlist* %9, %struct.TYPE_2__* %15, i32 4)
  %17 = load i32, i32* %12, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %12, align 4
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %11, i64 0, i64 %19
  store %struct.scatterlist* %9, %struct.scatterlist** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %4
  %24 = load %struct.virtblk_req*, %struct.virtblk_req** %6, align 8
  %25 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %29 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VIRTIO_BLK_T_OUT, align 4
  %32 = call i32 @cpu_to_virtio32(i32 %30, i32 %31)
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %11, i64 0, i64 %39
  store %struct.scatterlist* %36, %struct.scatterlist** %40, align 8
  br label %49

41:                                               ; preds = %23
  %42 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %13, align 4
  %46 = add i32 %43, %44
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %11, i64 0, i64 %47
  store %struct.scatterlist* %42, %struct.scatterlist** %48, align 8
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.virtblk_req*, %struct.virtblk_req** %6, align 8
  %52 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %51, i32 0, i32 0
  %53 = call i32 @sg_init_one(%struct.scatterlist* %10, %struct.TYPE_2__* %52, i32 4)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = add i32 %54, %55
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %11, i64 0, i64 %58
  store %struct.scatterlist* %10, %struct.scatterlist** %59, align 8
  %60 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %61 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %11, i64 0, i64 0
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.virtblk_req*, %struct.virtblk_req** %6, align 8
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i32 @virtqueue_add_sgs(%struct.virtqueue* %60, %struct.scatterlist** %61, i32 %62, i32 %63, %struct.virtblk_req* %64, i32 %65)
  ret i32 %66
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @cpu_to_virtio32(i32, i32) #1

declare dso_local i32 @virtqueue_add_sgs(%struct.virtqueue*, %struct.scatterlist**, i32, i32, %struct.virtblk_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
