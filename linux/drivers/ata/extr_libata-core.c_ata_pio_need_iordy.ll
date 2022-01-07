; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_pio_need_iordy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_pio_need_iordy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@ATA_PFLAG_RESETTING = common dso_local global i32 0, align 4
@ATA_FLAG_NO_IORDY = common dso_local global i32 0, align 4
@XFER_PIO_5 = common dso_local global i64 0, align 8
@XFER_PIO_6 = common dso_local global i64 0, align 8
@XFER_PIO_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pio_need_iordy(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %4 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %5 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATA_PFLAG_RESETTING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATA_FLAG_NO_IORDY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %61

27:                                               ; preds = %15
  %28 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ata_id_is_cfa(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XFER_PIO_5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %41 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XFER_PIO_6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %33
  store i32 0, i32* %2, align 4
  br label %61

46:                                               ; preds = %39, %27
  %47 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %48 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XFER_PIO_2, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %61

53:                                               ; preds = %46
  %54 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %55 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ata_id_has_iordy(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %59, %52, %45, %26, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @ata_id_is_cfa(i32) #1

declare dso_local i64 @ata_id_has_iordy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
