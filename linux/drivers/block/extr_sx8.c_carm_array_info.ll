; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_array_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_array_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i64, i32, i32 }
%struct.carm_msg_ioctl = type { i8*, i8*, i64, i8*, i8* }
%struct.carm_request = type { i64, i8*, i8* }
%struct.request = type { i32 }

@REQ_OP_DRV_OUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CARM_MSG_ARRAY = common dso_local global i8* null, align 8
@CARM_ARRAY_INFO = common dso_local global i8* null, align 8
@HST_DEV_SCAN_START = common dso_local global i64 0, align 8
@HST_DEV_SCAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"blk_execute_rq_nowait, tag == %u\0A\00", align 1
@HST_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, i32)* @carm_array_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_array_info(%struct.carm_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.carm_msg_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.carm_request*, align 8
  %10 = alloca %struct.request*, align 8
  %11 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %13 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REQ_OP_DRV_OUT, align 4
  %16 = call %struct.request* @blk_mq_alloc_request(i32 %14, i32 %15, i32 0)
  store %struct.request* %16, %struct.request** %10, align 8
  %17 = load %struct.request*, %struct.request** %10, align 8
  %18 = call i64 @IS_ERR(%struct.request* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  br label %106

23:                                               ; preds = %2
  %24 = load %struct.request*, %struct.request** %10, align 8
  %25 = call %struct.carm_request* @blk_mq_rq_to_pdu(%struct.request* %24)
  store %struct.carm_request* %25, %struct.carm_request** %9, align 8
  %26 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %27 = load %struct.request*, %struct.request** %10, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.carm_msg_ioctl* @carm_ref_msg(%struct.carm_host* %26, i32 %29)
  store %struct.carm_msg_ioctl* %30, %struct.carm_msg_ioctl** %6, align 8
  %31 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %32 = load %struct.request*, %struct.request** %10, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @carm_ref_msg_dma(%struct.carm_host* %31, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 4
  store i64 %37, i64* %7, align 8
  %38 = load i8*, i8** @CARM_MSG_ARRAY, align 8
  %39 = load %struct.carm_request*, %struct.carm_request** %9, align 8
  %40 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @CARM_ARRAY_INFO, align 8
  %42 = load %struct.carm_request*, %struct.carm_request** %9, align 8
  %43 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = call i32 @carm_lookup_bucket(i32 44)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.carm_request*, %struct.carm_request** %9, align 8
  %52 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %54 = call i32 @memset(%struct.carm_msg_ioctl* %53, i32 0, i32 40)
  %55 = load i8*, i8** @CARM_MSG_ARRAY, align 8
  %56 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %57 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @CARM_ARRAY_INFO, align 8
  %59 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %60 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %64 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.request*, %struct.request** %10, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @TAG_ENCODE(i32 %67)
  %69 = call i8* @cpu_to_le32(i64 %68)
  %70 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %71 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i8* @cpu_to_le32(i64 %72)
  %74 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %75 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %77 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %76, i32 0, i32 1
  %78 = call i32 @spin_lock_irq(i32* %77)
  %79 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %80 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @HST_DEV_SCAN_START, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %23
  %85 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %86 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HST_DEV_SCAN, align 8
  %89 = icmp eq i64 %87, %88
  br label %90

90:                                               ; preds = %84, %23
  %91 = phi i1 [ true, %23 ], [ %89, %84 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %95 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock_irq(i32* %95)
  %97 = load %struct.request*, %struct.request** %10, align 8
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %102 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.request*, %struct.request** %10, align 8
  %105 = call i32 @blk_execute_rq_nowait(i32 %103, i32* null, %struct.request* %104, i32 1, i32* null)
  store i32 0, i32* %3, align 4
  br label %117

106:                                              ; preds = %20
  %107 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %108 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %107, i32 0, i32 1
  %109 = call i32 @spin_lock_irq(i32* %108)
  %110 = load i64, i64* @HST_ERROR, align 8
  %111 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %112 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %114 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %113, i32 0, i32 1
  %115 = call i32 @spin_unlock_irq(i32* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %106, %90
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.request* @blk_mq_alloc_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local %struct.carm_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local %struct.carm_msg_ioctl* @carm_ref_msg(%struct.carm_host*, i32) #1

declare dso_local i64 @carm_ref_msg_dma(%struct.carm_host*, i32) #1

declare dso_local i32 @carm_lookup_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.carm_msg_ioctl*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @TAG_ENCODE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
