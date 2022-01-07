; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_qdi65x0_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_qdi65x0_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.legacy_data* }
%struct.legacy_data = type { i32*, i64, i32, i64 }
%struct.ata_device = type { i64, i64, i32 }
%struct.ata_timing = type { i32, i32 }

@QDI6580 = common dso_local global i64 0, align 8
@QDI6500 = common dso_local global i64 0, align 8
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @qdi65x0_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdi65x0_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_timing, align 4
  %6 = alloca %struct.legacy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.legacy_data*, %struct.legacy_data** %13, align 8
  store %struct.legacy_data* %14, %struct.legacy_data** %6, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ata_timing_compute(%struct.ata_device* %15, i32 %18, %struct.ata_timing* %5, i32 30303, i32 1000)
  %20 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %21 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clamp_val(i32 %26, i32 1, i32 8)
  %28 = sub nsw i32 8, %27
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clamp_val(i32 %30, i32 3, i32 18)
  %32 = sub nsw i32 18, %31
  store i32 %32, i32* %8, align 4
  br label %42

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clamp_val(i32 %35, i32 2, i32 9)
  %37 = sub nsw i32 9, %36
  store i32 %37, i32* %7, align 4
  %38 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clamp_val(i32 %39, i32 0, i32 15)
  %41 = sub nsw i32 15, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %33, %24
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %44, %45
  %47 = or i32 %46, 8
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %50 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %57 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QDI6580, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %42
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %64 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %68 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 2, %69
  %71 = add i64 %66, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @outb(i32 %62, i32 %72)
  br label %85

74:                                               ; preds = %42
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %77 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %80 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 %78, %82
  %84 = call i32 @outb(i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %74, %61
  %86 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %87 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @QDI6500, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %93 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ATA_DEV_ATA, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %99 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 65520
  %102 = add nsw i32 %101, 3
  %103 = call i32 @outb(i32 95, i32 %102)
  br label %104

104:                                              ; preds = %97, %91, %85
  ret void
}

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
