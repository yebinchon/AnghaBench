; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_scsi_check_proto.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_scsi_check_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_io_v4 = type { i64, i64 }

@BSG_PROTOCOL_SCSI = common dso_local global i64 0, align 8
@BSG_SUB_PROTOCOL_SCSI_CMD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sg_io_v4*)* @bsg_scsi_check_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_scsi_check_proto(%struct.sg_io_v4* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sg_io_v4*, align 8
  store %struct.sg_io_v4* %0, %struct.sg_io_v4** %3, align 8
  %4 = load %struct.sg_io_v4*, %struct.sg_io_v4** %3, align 8
  %5 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BSG_PROTOCOL_SCSI, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.sg_io_v4*, %struct.sg_io_v4** %3, align 8
  %11 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BSG_SUB_PROTOCOL_SCSI_CMD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
