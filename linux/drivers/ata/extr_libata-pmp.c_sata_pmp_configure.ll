; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_3__ }

@SATA_PMP_MAX_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid nr_ports\00", align 1
@ATA_FLAG_AN = common dso_local global i32 0, align 4
@SATA_PMP_GSCR_FEAT = common dso_local global i64 0, align 8
@SATA_PMP_FEAT_NOTIFY = common dso_local global i32 0, align 4
@ATA_DFLAG_AN = common dso_local global i32 0, align 4
@SATA_PMP_GSCR_ERROR_EN = common dso_local global i32 0, align 4
@SERR_PHYRDY_CHG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to write GSCR_ERROR_EN\00", align 1
@PMP_GSCR_SII_POL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to read Sil3x26 Private Register\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to write Sil3x26 Private Register\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Port Multiplier %s, 0x%04x:0x%04x r%d, %d ports, feat 0x%x/0x%x\0A\00", align 1
@SATA_PMP_GSCR_FEAT_EN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [102 x i8] c"Asynchronous notification not supported, hotplug won't work on fan-out ports. Use warm-plug instead.\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"failed to configure Port Multiplier (%s, Emask=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32)* @sata_pmp_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_configure(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  store %struct.ata_port* %19, %struct.ata_port** %6, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @sata_pmp_gscr_vendor(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @sata_pmp_gscr_devid(i32* %25)
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @sata_pmp_gscr_ports(i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SATA_PMP_MAX_PORTS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %136

38:                                               ; preds = %31
  %39 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ATA_FLAG_AN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* @SATA_PMP_GSCR_FEAT, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SATA_PMP_FEAT_NOTIFY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* @ATA_DFLAG_AN, align 4
  %55 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %45, %38
  %60 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %61 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* @SATA_PMP_GSCR_ERROR_EN, align 4
  %64 = load i32, i32* @SERR_PHYRDY_CHG, align 4
  %65 = call i32 @sata_pmp_write(%struct.TYPE_3__* %62, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %136

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 4245
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 14118
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 14374
  br i1 %79, label %80, label %104

80:                                               ; preds = %77, %74
  %81 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %82 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %81, i32 0, i32 1
  %83 = load i32, i32* @PMP_GSCR_SII_POL, align 4
  %84 = call i32 @sata_pmp_read(%struct.TYPE_3__* %82, i32 %83, i32* %14)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %136

90:                                               ; preds = %80
  %91 = load i32, i32* %14, align 4
  %92 = and i32 %91, -2
  store i32 %92, i32* %14, align 4
  %93 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %94 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %93, i32 0, i32 1
  %95 = load i32, i32* @PMP_GSCR_SII_POL, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @sata_pmp_write(%struct.TYPE_3__* %94, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %136

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %77, %71
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %104
  %108 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @sata_pmp_spec_rev_str(i32* %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @sata_pmp_gscr_rev(i32* %113)
  %115 = load i32, i32* %12, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i64, i64* @SATA_PMP_GSCR_FEAT_EN, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = load i64, i64* @SATA_PMP_GSCR_FEAT, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_info(%struct.ata_device* %108, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %114, i32 %115, i32 %119, i32 %123)
  %125 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %126 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ATA_DFLAG_AN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %107
  %132 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %133 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_info(%struct.ata_device* %132, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %107
  br label %135

135:                                              ; preds = %134, %104
  store i32 0, i32* %3, align 4
  br label %142

136:                                              ; preds = %100, %87, %68, %35
  %137 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @ata_dev_err(%struct.ata_device* %137, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i8* %138, i32 %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %136, %135
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @sata_pmp_gscr_vendor(i32*) #1

declare dso_local i32 @sata_pmp_gscr_devid(i32*) #1

declare dso_local i32 @sata_pmp_gscr_ports(i32*) #1

declare dso_local i32 @sata_pmp_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @sata_pmp_read(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, ...) #1

declare dso_local i32 @sata_pmp_spec_rev_str(i32*) #1

declare dso_local i32 @sata_pmp_gscr_rev(i32*) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
