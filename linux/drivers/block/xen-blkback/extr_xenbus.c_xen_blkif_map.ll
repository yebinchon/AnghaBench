; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32, %struct.TYPE_6__, i64, %struct.xen_blkif* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.xen_blkif = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.blkif_sring = type opaque
%struct.blkif_x86_32_sring = type opaque
%struct.blkif_x86_64_sring = type { i32 }

@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@xen_blkif_be_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"blkif-backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif_ring*, i32*, i32, i32)* @xen_blkif_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_blkif_map(%struct.xen_blkif_ring* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_blkif_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xen_blkif*, align 8
  %12 = alloca %struct.blkif_sring*, align 8
  %13 = alloca %struct.blkif_x86_32_sring*, align 8
  %14 = alloca %struct.blkif_x86_64_sring*, align 8
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %16 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %15, i32 0, i32 3
  %17 = load %struct.xen_blkif*, %struct.xen_blkif** %16, align 8
  store %struct.xen_blkif* %17, %struct.xen_blkif** %11, align 8
  %18 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %19 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %114

23:                                               ; preds = %4
  %24 = load %struct.xen_blkif*, %struct.xen_blkif** %11, align 8
  %25 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %32 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %31, i32 0, i32 2
  %33 = call i32 @xenbus_map_ring_valloc(i32 %28, i32* %29, i32 %30, i64* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %114

38:                                               ; preds = %23
  %39 = load %struct.xen_blkif*, %struct.xen_blkif** %11, align 8
  %40 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %83 [
    i32 130, label %42
    i32 129, label %56
    i32 128, label %70
  ]

42:                                               ; preds = %38
  %43 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %44 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.blkif_sring*
  store %struct.blkif_sring* %46, %struct.blkif_sring** %12, align 8
  %47 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %48 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load %struct.blkif_sring*, %struct.blkif_sring** %12, align 8
  %51 = bitcast %struct.blkif_sring* %50 to %struct.blkif_x86_64_sring*
  %52 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 %52, %53
  %55 = call i32 @BACK_RING_INIT(i32* %49, %struct.blkif_x86_64_sring* %51, i32 %54)
  br label %85

56:                                               ; preds = %38
  %57 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %58 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.blkif_x86_32_sring*
  store %struct.blkif_x86_32_sring* %60, %struct.blkif_x86_32_sring** %13, align 8
  %61 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %62 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.blkif_x86_32_sring*, %struct.blkif_x86_32_sring** %13, align 8
  %65 = bitcast %struct.blkif_x86_32_sring* %64 to %struct.blkif_x86_64_sring*
  %66 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul i32 %66, %67
  %69 = call i32 @BACK_RING_INIT(i32* %63, %struct.blkif_x86_64_sring* %65, i32 %68)
  br label %85

70:                                               ; preds = %38
  %71 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %72 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.blkif_x86_64_sring*
  store %struct.blkif_x86_64_sring* %74, %struct.blkif_x86_64_sring** %14, align 8
  %75 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %76 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.blkif_x86_64_sring*, %struct.blkif_x86_64_sring** %14, align 8
  %79 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %80 = load i32, i32* %8, align 4
  %81 = mul i32 %79, %80
  %82 = call i32 @BACK_RING_INIT(i32* %77, %struct.blkif_x86_64_sring* %78, i32 %81)
  br label %85

83:                                               ; preds = %38
  %84 = call i32 (...) @BUG()
  br label %85

85:                                               ; preds = %83, %70, %56, %42
  %86 = load %struct.xen_blkif*, %struct.xen_blkif** %11, align 8
  %87 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @xen_blkif_be_int, align 4
  %91 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %92 = call i32 @bind_interdomain_evtchn_to_irqhandler(i32 %88, i32 %89, i32 %90, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.xen_blkif_ring* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %85
  %96 = load %struct.xen_blkif*, %struct.xen_blkif** %11, align 8
  %97 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %102 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @xenbus_unmap_ring_vfree(i32 %100, i64 %103)
  %105 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %106 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %114

110:                                              ; preds = %85
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %113 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %95, %36, %22
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @xenbus_map_ring_valloc(i32, i32*, i32, i64*) #1

declare dso_local i32 @BACK_RING_INIT(i32*, %struct.blkif_x86_64_sring*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @bind_interdomain_evtchn_to_irqhandler(i32, i32, i32, i32, i8*, %struct.xen_blkif_ring*) #1

declare dso_local i32 @xenbus_unmap_ring_vfree(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
