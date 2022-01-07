; ModuleID = '/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_blk_complete_sghdr_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_blk_complete_sghdr_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.sg_io_hdr = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.bio = type { i32 }
%struct.scsi_request = type { i32, i32, i64, i32 }

@SG_INFO_CHECK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.sg_io_hdr*, %struct.bio*)* @blk_complete_sghdr_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_complete_sghdr_rq(%struct.request* %0, %struct.sg_io_hdr* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.scsi_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = call %struct.scsi_request* @scsi_req(%struct.request* %11)
  store %struct.scsi_request* %12, %struct.scsi_request** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 255
  %17 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %20 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @status_byte(i32 %21)
  %23 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %26 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @msg_byte(i32 %27)
  %29 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %32 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @host_byte(i32 %33)
  %35 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %38 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @driver_byte(i32 %39)
  %41 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %43, i32 0, i32 5
  store i32 0, i32* %44, align 4
  %45 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %3
  %50 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %51 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %56 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54, %49, %3
  %60 = load i32, i32* @SG_INFO_CHECK, align 4
  %61 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %62 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %67 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %70 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %72 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %74 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %65
  %78 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %77
  %83 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %84 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %88 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @min(i32 %86, i64 %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %92 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.scsi_request*, %struct.scsi_request** %7, align 8
  %95 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @copy_to_user(i64 %93, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %82
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %103 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %107

104:                                              ; preds = %82
  %105 = load i32, i32* @EFAULT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %104, %100
  br label %108

108:                                              ; preds = %107, %77, %65
  %109 = load %struct.bio*, %struct.bio** %6, align 8
  %110 = call i32 @blk_rq_unmap_user(%struct.bio* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %113, %108
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i32 @status_byte(i32) #1

declare dso_local i32 @msg_byte(i32) #1

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @copy_to_user(i64, i32, i32) #1

declare dso_local i32 @blk_rq_unmap_user(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
