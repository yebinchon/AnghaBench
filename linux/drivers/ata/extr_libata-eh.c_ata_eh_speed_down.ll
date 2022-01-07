; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_speed_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_speed_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, i64, i64, i32 }
%struct.ata_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ATA_EH_SPDN_NCQ_OFF = common dso_local global i32 0, align 4
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NCQ disabled due to excessive errors\0A\00", align 1
@ATA_EH_SPDN_SPEED_DOWN = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@ata_eh_speed_down.dma_dnxfer_sel = internal constant [2 x i32] [i32 130, i32 131], align 4
@ata_eh_speed_down.pio_dnxfer_sel = internal constant [2 x i32] [i32 128, i32 129], align 4
@ATA_SHIFT_PIO = common dso_local global i64 0, align 8
@ATA_EH_SPDN_FALLBACK_TO_PIO = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i64 0, align 8
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_DNXFER_FORCE_PIO = common dso_local global i32 0, align 4
@ATA_EH_SPDN_KEEP_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32, i32)* @ata_eh_speed_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_speed_down(%struct.ata_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_link*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = call %struct.ata_link* @ata_dev_phys_link(%struct.ata_device* %13)
  store %struct.ata_link* %14, %struct.ata_link** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ata_eh_categorize_error(i32 %15, i32 %16, i32* %9)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

20:                                               ; preds = %3
  %21 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ata_ering_record(i32* %22, i32 %23, i32 %24)
  %26 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %27 = call i32 @ata_eh_speed_down_verdict(%struct.ata_device* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ATA_EH_SPDN_NCQ_OFF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %20
  %33 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %37 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %46 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %51 = call i32 @ata_dev_warn(%struct.ata_device* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %148

52:                                               ; preds = %32, %20
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @ATA_EH_SPDN_SPEED_DOWN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %52
  %58 = load %struct.ata_link*, %struct.ata_link** %8, align 8
  %59 = call i64 @sata_down_spd_limit(%struct.ata_link* %58, i32 0)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @ATA_EH_RESET, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %148

65:                                               ; preds = %57
  %66 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %67 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %72 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %78 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* @ata_eh_speed_down.dma_dnxfer_sel, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  br label %90

83:                                               ; preds = %70
  %84 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %85 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* @ata_eh_speed_down.pio_dnxfer_sel, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %83, %76
  %91 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %92 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @ata_down_xfermask_limit(%struct.ata_device* %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @ATA_EH_RESET, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  br label %148

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104, %52
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @ATA_EH_SPDN_FALLBACK_TO_PIO, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %147

110:                                              ; preds = %105
  %111 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 2
  br i1 %114, label %115, label %147

115:                                              ; preds = %110
  %116 = load %struct.ata_link*, %struct.ata_link** %8, align 8
  %117 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ATA_CBL_SATA, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %115
  %124 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %125 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %123, %115
  %130 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %131 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %137 = load i32, i32* @ATA_DNXFER_FORCE_PIO, align 4
  %138 = call i64 @ata_down_xfermask_limit(%struct.ata_device* %136, i32 %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %142 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* @ATA_EH_RESET, align 4
  %144 = load i32, i32* %11, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %11, align 4
  br label %148

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %129, %123, %110, %105
  store i32 0, i32* %4, align 4
  br label %159

148:                                              ; preds = %140, %99, %61, %44
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @ATA_EH_SPDN_KEEP_ERRORS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %155 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %154, i32 0, i32 4
  %156 = call i32 @ata_ering_clear(i32* %155)
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %147, %19
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.ata_link* @ata_dev_phys_link(%struct.ata_device*) #1

declare dso_local i64 @ata_eh_categorize_error(i32, i32, i32*) #1

declare dso_local i32 @ata_ering_record(i32*, i32, i32) #1

declare dso_local i32 @ata_eh_speed_down_verdict(%struct.ata_device*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

declare dso_local i64 @sata_down_spd_limit(%struct.ata_link*, i32) #1

declare dso_local i64 @ata_down_xfermask_limit(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_ering_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
