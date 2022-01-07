; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_make_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_make_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32, i32, %struct.TYPE_4__*, %union.blkif_back_rings }
%struct.TYPE_4__ = type { i32 }
%union.blkif_back_rings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.blkif_response = type { i16, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif_ring*, i32, i16, i32)* @make_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_response(%struct.xen_blkif_ring* %0, i32 %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.xen_blkif_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkif_response*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.blkif_back_rings*, align 8
  %12 = alloca i32, align 4
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %13 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %14 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %13, i32 0, i32 1
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %18 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %17, i32 0, i32 3
  store %union.blkif_back_rings* %18, %union.blkif_back_rings** %11, align 8
  %19 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %20 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %48 [
    i32 130, label %24
    i32 129, label %32
    i32 128, label %40
  ]

24:                                               ; preds = %4
  %25 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %26 = bitcast %union.blkif_back_rings* %25 to %struct.TYPE_6__*
  %27 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %28 = bitcast %union.blkif_back_rings* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.blkif_response* @RING_GET_RESPONSE(%struct.TYPE_6__* %26, i32 %30)
  store %struct.blkif_response* %31, %struct.blkif_response** %9, align 8
  br label %50

32:                                               ; preds = %4
  %33 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %34 = bitcast %union.blkif_back_rings* %33 to %struct.TYPE_6__*
  %35 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %36 = bitcast %union.blkif_back_rings* %35 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.blkif_response* @RING_GET_RESPONSE(%struct.TYPE_6__* %34, i32 %38)
  store %struct.blkif_response* %39, %struct.blkif_response** %9, align 8
  br label %50

40:                                               ; preds = %4
  %41 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %42 = bitcast %union.blkif_back_rings* %41 to %struct.TYPE_6__*
  %43 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %44 = bitcast %union.blkif_back_rings* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.blkif_response* @RING_GET_RESPONSE(%struct.TYPE_6__* %42, i32 %46)
  store %struct.blkif_response* %47, %struct.blkif_response** %9, align 8
  br label %50

48:                                               ; preds = %4
  %49 = call i32 (...) @BUG()
  br label %50

50:                                               ; preds = %48, %40, %32, %24
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.blkif_response*, %struct.blkif_response** %9, align 8
  %53 = getelementptr inbounds %struct.blkif_response, %struct.blkif_response* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i16, i16* %7, align 2
  %55 = load %struct.blkif_response*, %struct.blkif_response** %9, align 8
  %56 = getelementptr inbounds %struct.blkif_response, %struct.blkif_response* %55, i32 0, i32 0
  store i16 %54, i16* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.blkif_response*, %struct.blkif_response** %9, align 8
  %59 = getelementptr inbounds %struct.blkif_response, %struct.blkif_response* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %61 = bitcast %union.blkif_back_rings* %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %union.blkif_back_rings*, %union.blkif_back_rings** %11, align 8
  %66 = bitcast %union.blkif_back_rings* %65 to %struct.TYPE_5__*
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(%struct.TYPE_5__* %66, i32 %67)
  %69 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %70 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %69, i32 0, i32 1
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %50
  %76 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %77 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @notify_remote_via_irq(i32 %78)
  br label %80

80:                                               ; preds = %75, %50
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.blkif_response* @RING_GET_RESPONSE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
