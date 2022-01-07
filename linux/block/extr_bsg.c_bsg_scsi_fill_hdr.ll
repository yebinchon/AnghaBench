; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_scsi_fill_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_scsi_fill_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.sg_io_v4 = type { i64, i32, i64, i64 }
%struct.scsi_request = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"BIDI support in bsg has been removed.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.sg_io_v4*, i32)* @bsg_scsi_fill_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_scsi_fill_hdr(%struct.request* %0, %struct.sg_io_v4* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.sg_io_v4*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_request*, align 8
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.sg_io_v4* %1, %struct.sg_io_v4** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call %struct.scsi_request* @scsi_req(%struct.request* %9)
  store %struct.scsi_request* %10, %struct.scsi_request** %8, align 8
  %11 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %12 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %17 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @pr_warn_once(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %15, %3
  %25 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %26 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %29 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %31 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BLK_MAX_CDB, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %37 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kzalloc(i64 %38, i32 %39)
  %41 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %42 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %44 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %78

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %53 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %56 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @uptr64(i32 %57)
  %59 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %60 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @copy_from_user(i32 %54, i32 %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %78

67:                                               ; preds = %51
  %68 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %69 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @blk_verify_command(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %74, %64, %47, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i64 @copy_from_user(i32, i32, i64) #1

declare dso_local i32 @uptr64(i32) #1

declare dso_local i64 @blk_verify_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
