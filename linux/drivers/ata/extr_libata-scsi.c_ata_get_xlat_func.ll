; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_get_xlat_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_get_xlat_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }

@ata_scsi_rw_xlat = common dso_local global i32* null, align 8
@ata_scsi_write_same_xlat = common dso_local global i32* null, align 8
@ata_scsi_flush_xlat = common dso_local global i32* null, align 8
@ata_scsi_verify_xlat = common dso_local global i32* null, align 8
@ata_scsi_pass_thru = common dso_local global i32* null, align 8
@ata_scsi_var_len_cdb_xlat = common dso_local global i32* null, align 8
@ata_scsi_mode_select_xlat = common dso_local global i32* null, align 8
@ata_scsi_zbc_in_xlat = common dso_local global i32* null, align 8
@ata_scsi_zbc_out_xlat = common dso_local global i32* null, align 8
@ATA_DFLAG_TRUSTED = common dso_local global i32 0, align 4
@ata_scsi_security_inout_xlat = common dso_local global i32* null, align 8
@ata_scsi_start_stop_xlat = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ata_device*, i32)* @ata_get_xlat_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ata_get_xlat_func(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %42 [
    i32 141, label %7
    i32 143, label %7
    i32 142, label %7
    i32 131, label %7
    i32 133, label %7
    i32 132, label %7
    i32 130, label %9
    i32 137, label %11
    i32 135, label %18
    i32 134, label %18
    i32 147, label %20
    i32 146, label %20
    i32 136, label %22
    i32 145, label %24
    i32 144, label %24
    i32 129, label %26
    i32 128, label %28
    i32 140, label %30
    i32 139, label %30
    i32 138, label %40
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2
  %8 = load i32*, i32** @ata_scsi_rw_xlat, align 8
  store i32* %8, i32** %3, align 8
  br label %43

9:                                                ; preds = %2
  %10 = load i32*, i32** @ata_scsi_write_same_xlat, align 8
  store i32* %10, i32** %3, align 8
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %13 = call i32 @ata_try_flush_cache(%struct.ata_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32*, i32** @ata_scsi_flush_xlat, align 8
  store i32* %16, i32** %3, align 8
  br label %43

17:                                               ; preds = %11
  br label %42

18:                                               ; preds = %2, %2
  %19 = load i32*, i32** @ata_scsi_verify_xlat, align 8
  store i32* %19, i32** %3, align 8
  br label %43

20:                                               ; preds = %2, %2
  %21 = load i32*, i32** @ata_scsi_pass_thru, align 8
  store i32* %21, i32** %3, align 8
  br label %43

22:                                               ; preds = %2
  %23 = load i32*, i32** @ata_scsi_var_len_cdb_xlat, align 8
  store i32* %23, i32** %3, align 8
  br label %43

24:                                               ; preds = %2, %2
  %25 = load i32*, i32** @ata_scsi_mode_select_xlat, align 8
  store i32* %25, i32** %3, align 8
  br label %43

26:                                               ; preds = %2
  %27 = load i32*, i32** @ata_scsi_zbc_in_xlat, align 8
  store i32* %27, i32** %3, align 8
  br label %43

28:                                               ; preds = %2
  %29 = load i32*, i32** @ata_scsi_zbc_out_xlat, align 8
  store i32* %29, i32** %3, align 8
  br label %43

30:                                               ; preds = %2, %2
  %31 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ATA_DFLAG_TRUSTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** @ata_scsi_security_inout_xlat, align 8
  store i32* %39, i32** %3, align 8
  br label %43

40:                                               ; preds = %2
  %41 = load i32*, i32** @ata_scsi_start_stop_xlat, align 8
  store i32* %41, i32** %3, align 8
  br label %43

42:                                               ; preds = %2, %37, %17
  store i32* null, i32** %3, align 8
  br label %43

43:                                               ; preds = %42, %40, %38, %28, %26, %24, %22, %20, %18, %15, %9, %7
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @ata_try_flush_cache(%struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
