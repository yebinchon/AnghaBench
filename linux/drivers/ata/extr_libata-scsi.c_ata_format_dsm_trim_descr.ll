; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_format_dsm_trim_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_format_dsm_trim_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i64 }

@ATA_SCSI_RBUF_SIZE = common dso_local global i64 0, align 8
@ata_scsi_rbuf_lock = common dso_local global i32 0, align 4
@ata_scsi_rbuf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_cmnd*, i64, i32, i64)* @ata_format_dsm_trim_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ata_format_dsm_trim_descr(%struct.scsi_cmnd* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load %struct.scsi_device*, %struct.scsi_device** %17, align 8
  store %struct.scsi_device* %18, %struct.scsi_device** %9, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @ATA_SCSI_RBUF_SIZE, align 8
  %24 = icmp ugt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @ATA_SCSI_RBUF_SIZE, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @ATA_SCSI_RBUF_SIZE, align 8
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %30, %4
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @spin_lock_irqsave(i32* @ata_scsi_rbuf_lock, i64 %33)
  %35 = load i64, i64* @ata_scsi_rbuf, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @memset(i32* %38, i32 0, i64 %39)
  br label %41

41:                                               ; preds = %66, %32
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = icmp sgt i64 %47, 65535
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i64 [ 65535, %49 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 48
  %56 = or i32 %46, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @__cpu_to_le64(i32 %57)
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %13, align 8
  %62 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %62, align 4
  %63 = load i64, i64* %8, align 8
  %64 = icmp sle i64 %63, 65535
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %71

66:                                               ; preds = %52
  %67 = load i64, i64* %8, align 8
  %68 = sub nsw i64 %67, 65535
  store i64 %68, i64* %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 65535
  store i32 %70, i32* %7, align 4
  br label %41

71:                                               ; preds = %65, %41
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = call i32 @scsi_sglist(%struct.scsi_cmnd* %72)
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %75 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %74)
  %76 = load i32*, i32** %12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @sg_copy_from_buffer(i32 %73, i32 %75, i32* %76, i64 %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* @ata_scsi_rbuf_lock, i64 %79)
  %81 = load i64, i64* %11, align 8
  ret i64 %81
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @__cpu_to_le64(i32) #1

declare dso_local i64 @sg_copy_from_buffer(i32, i32, i32*, i64) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
