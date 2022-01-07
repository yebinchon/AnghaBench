; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_get_id_from_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_get_id_from_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_ring_info = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkfront_ring_info*)* @get_id_from_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_id_from_freelist(%struct.blkfront_ring_info* %0) #0 {
  %2 = alloca %struct.blkfront_ring_info*, align 8
  %3 = alloca i64, align 8
  store %struct.blkfront_ring_info* %0, %struct.blkfront_ring_info** %2, align 8
  %4 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %2, align 8
  %5 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %2, align 8
  %9 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @BLK_RING_SIZE(i32 %10)
  %12 = icmp uge i64 %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %2, align 8
  %16 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %2, align 8
  %26 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %2, align 8
  %28 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 268435438, i64* %35, align 8
  %36 = load i64, i64* %3, align 8
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @BLK_RING_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
