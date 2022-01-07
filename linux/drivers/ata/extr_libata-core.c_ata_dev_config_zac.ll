; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_zac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_zac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_port = type { i32* }

@U32_MAX = common dso_local global i8* null, align 8
@ATA_DEV_ZAC = common dso_local global i64 0, align 8
@ATA_DFLAG_ZAC = common dso_local global i32 0, align 4
@ATA_LOG_ZONED_INFORMATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ATA Zoned Information Log not supported\0A\00", align 1
@ATA_LOG_IDENTIFY_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_dev_config_zac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dev_config_zac(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %3, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i8*, i8** @U32_MAX, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @U32_MAX, align 8
  %22 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @U32_MAX, align 8
  %25 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATA_DEV_ZAC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @ATA_DFLAG_ZAC, align 4
  %34 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %51

38:                                               ; preds = %1
  %39 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ata_id_zoned_cap(i32 %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @ATA_DFLAG_ZAC, align 4
  %46 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ATA_DFLAG_ZAC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %127

59:                                               ; preds = %51
  %60 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %61 = load i32, i32* @ATA_LOG_ZONED_INFORMATION, align 4
  %62 = call i32 @ata_identify_page_supported(%struct.ata_device* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %66 = call i32 @ata_dev_warn(%struct.ata_device* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %127

67:                                               ; preds = %59
  %68 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %69 = load i32, i32* @ATA_LOG_IDENTIFY_DEVICE, align 4
  %70 = load i32, i32* @ATA_LOG_ZONED_INFORMATION, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @ata_read_log_page(%struct.ata_device* %68, i32 %69, i32 %70, i32* %71, i32 1)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %127, label %75

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  %78 = call i32 @get_unaligned_le64(i32* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 63
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 1
  %85 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %86 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %75
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 24
  %90 = call i32 @get_unaligned_le64(i32* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 63
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %99 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 32
  %103 = call i32 @get_unaligned_le64(i32* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = ashr i32 %104, 63
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %107, %100
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 40
  %116 = call i32 @get_unaligned_le64(i32* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 63
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %125 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %120, %113
  br label %127

127:                                              ; preds = %58, %64, %126, %67
  ret void
}

declare dso_local i32 @ata_id_zoned_cap(i32) #1

declare dso_local i32 @ata_identify_page_supported(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

declare dso_local i32 @ata_read_log_page(%struct.ata_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @get_unaligned_le64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
