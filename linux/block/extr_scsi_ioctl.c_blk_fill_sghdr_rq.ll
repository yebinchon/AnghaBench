; ModuleID = '/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_blk_fill_sghdr_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_blk_fill_sghdr_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64 }
%struct.request = type { i64 }
%struct.sg_io_hdr = type { i32, i32, i32 }
%struct.scsi_request = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BLK_DEFAULT_SG_TIMEOUT = common dso_local global i64 0, align 8
@BLK_MIN_SG_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.sg_io_hdr*, i32)* @blk_fill_sghdr_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_fill_sghdr_rq(%struct.request_queue* %0, %struct.request* %1, %struct.sg_io_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.sg_io_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.sg_io_hdr* %2, %struct.sg_io_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.request*, %struct.request** %7, align 8
  %12 = call %struct.scsi_request* @scsi_req(%struct.request* %11)
  store %struct.scsi_request* %12, %struct.scsi_request** %10, align 8
  %13 = load %struct.scsi_request*, %struct.scsi_request** %10, align 8
  %14 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %20 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @copy_from_user(i32 %15, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  %28 = load %struct.scsi_request*, %struct.scsi_request** %10, align 8
  %29 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @blk_verify_command(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %79

37:                                               ; preds = %27
  %38 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %39 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.scsi_request*, %struct.scsi_request** %10, align 8
  %42 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %44 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @msecs_to_jiffies(i32 %45)
  %47 = load %struct.request*, %struct.request** %7, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.request*, %struct.request** %7, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %37
  %54 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %55 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.request*, %struct.request** %7, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %37
  %60 = load %struct.request*, %struct.request** %7, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @BLK_DEFAULT_SG_TIMEOUT, align 8
  %66 = load %struct.request*, %struct.request** %7, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.request*, %struct.request** %7, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BLK_MIN_SG_TIMEOUT, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @BLK_MIN_SG_TIMEOUT, align 8
  %76 = load %struct.request*, %struct.request** %7, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %68
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %34, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i64 @blk_verify_command(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
