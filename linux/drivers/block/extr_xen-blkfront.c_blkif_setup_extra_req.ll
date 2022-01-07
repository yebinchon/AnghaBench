; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_setup_extra_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_setup_extra_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkif_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkif_request*, %struct.blkif_request*)* @blkif_setup_extra_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkif_setup_extra_req(%struct.blkif_request* %0, %struct.blkif_request* %1) #0 {
  %3 = alloca %struct.blkif_request*, align 8
  %4 = alloca %struct.blkif_request*, align 8
  %5 = alloca i32, align 4
  store %struct.blkif_request* %0, %struct.blkif_request** %3, align 8
  store %struct.blkif_request* %1, %struct.blkif_request** %4, align 8
  %6 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %7 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %12 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %13 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %20 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 8
  %23 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %24 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %29 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sdiv i32 %30, 512
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %27, %32
  %34 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %35 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i64 %33, i64* %37, align 8
  %38 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %39 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %44 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %48 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %51 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
