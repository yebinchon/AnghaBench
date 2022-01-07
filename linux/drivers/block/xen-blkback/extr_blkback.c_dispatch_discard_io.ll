; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_dispatch_discard_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_dispatch_discard_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32, %struct.xen_blkif* }
%struct.xen_blkif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.block_device* }
%struct.block_device = type { i32 }
%struct.blkif_request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.phys_req = type { i64, i64 }

@BLKIF_RSP_OKAY = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"access denied: DISCARD [%llu->%llu] on dev=%04x\0A\00", align 1
@BLKIF_DISCARD_SECURE = common dso_local global i32 0, align 4
@BLKDEV_DISCARD_SECURE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"discard op failed, not supported\0A\00", align 1
@BLKIF_RSP_EOPNOTSUPP = common dso_local global i32 0, align 4
@BLKIF_RSP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif_ring*, %struct.blkif_request*)* @dispatch_discard_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_discard_io(%struct.xen_blkif_ring* %0, %struct.blkif_request* %1) #0 {
  %3 = alloca %struct.xen_blkif_ring*, align 8
  %4 = alloca %struct.blkif_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_blkif*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.phys_req, align 8
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %3, align 8
  store %struct.blkif_request* %1, %struct.blkif_request** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @BLKIF_RSP_OKAY, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %13 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %12, i32 0, i32 1
  %14 = load %struct.xen_blkif*, %struct.xen_blkif** %13, align 8
  store %struct.xen_blkif* %14, %struct.xen_blkif** %7, align 8
  %15 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %16 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.block_device*, %struct.block_device** %17, align 8
  store %struct.block_device* %18, %struct.block_device** %8, align 8
  %19 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %20 = call i32 @xen_blkif_get(%struct.xen_blkif* %19)
  %21 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %22 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %10, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %28 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %10, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %34 = load i32, i32* @REQ_OP_WRITE, align 4
  %35 = call i32 @xen_vbd_translate(%struct.phys_req* %10, %struct.xen_blkif* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %10, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %10, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %42, %44
  %46 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %47 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %45, i32 %49)
  br label %89

51:                                               ; preds = %2
  %52 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %53 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %57 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %51
  %62 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %63 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BLKIF_DISCARD_SECURE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* @BLKDEV_DISCARD_SECURE, align 8
  br label %73

72:                                               ; preds = %61, %51
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i64 [ %71, %70 ], [ 0, %72 ]
  store i64 %74, i64* %9, align 8
  %75 = load %struct.block_device*, %struct.block_device** %8, align 8
  %76 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %77 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %82 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @blkdev_issue_discard(%struct.block_device* %75, i64 %80, i64 %85, i32 %86, i64 %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %73, %38
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @BLKIF_RSP_EOPNOTSUPP, align 4
  store i32 %96, i32* %6, align 4
  br label %103

97:                                               ; preds = %89
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @BLKIF_RSP_ERROR, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %102, %94
  %104 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %105 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %106 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.blkif_request*, %struct.blkif_request** %4, align 8
  %111 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @make_response(%struct.xen_blkif_ring* %104, i32 %109, i32 %112, i32 %113)
  %115 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %116 = call i32 @xen_blkif_put(%struct.xen_blkif* %115)
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @xen_blkif_get(%struct.xen_blkif*) #1

declare dso_local i32 @xen_vbd_translate(%struct.phys_req*, %struct.xen_blkif*, i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i64, i32) #1

declare dso_local i32 @blkdev_issue_discard(%struct.block_device*, i64, i64, i32, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @make_response(%struct.xen_blkif_ring*, i32, i32, i32) #1

declare dso_local i32 @xen_blkif_put(%struct.xen_blkif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
