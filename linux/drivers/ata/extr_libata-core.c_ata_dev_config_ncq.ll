; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATA_HORKAGE_NONCQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"NCQ (not used)\00", align 1
@ATA_FLAG_NCQ = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ = common dso_local global i32 0, align 4
@ATA_HORKAGE_BROKEN_FPDMA_AA = common dso_local global i32 0, align 4
@ATA_FLAG_FPDMA_AA = common dso_local global i32 0, align 4
@SETFEATURES_SATA_ENABLE = common dso_local global i32 0, align 4
@SATA_FPDMA_AA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to enable AA (error_mask=0x%x)\0A\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c", AA\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"NCQ (depth %d)%s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"NCQ (depth %d/%d)%s\00", align 1
@ATA_FLAG_FPDMA_AUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*, i64)* @ata_dev_config_ncq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_config_ncq(%struct.ata_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ata_port*, %struct.ata_port** %16, align 8
  store %struct.ata_port* %17, %struct.ata_port** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ata_id_queue_depth(i32 %20)
  store i32 %21, i32* %10, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %22 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ata_id_has_ncq(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  store i32 0, i32* %4, align 4
  br label %159

30:                                               ; preds = %3
  %31 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATA_HORKAGE_NONCQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

41:                                               ; preds = %30
  %42 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATA_FLAG_NCQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %57 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %58 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %48, %41
  %62 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %63 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ATA_HORKAGE_BROKEN_FPDMA_AA, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %106, label %68

68:                                               ; preds = %61
  %69 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %70 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ATA_FLAG_FPDMA_AA, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %68
  %76 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %77 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ata_id_has_fpdma_aa(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %83 = load i32, i32* @SETFEATURES_SATA_ENABLE, align 4
  %84 = load i32, i32* @SATA_FPDMA_AA, align 4
  %85 = call i32 @ata_dev_set_feature(%struct.ata_device* %82, i32 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @ata_dev_err(%struct.ata_device* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @AC_ERR_DEV, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* @ATA_HORKAGE_BROKEN_FPDMA_AA, align 4
  %97 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %98 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %159

103:                                              ; preds = %88
  br label %105

104:                                              ; preds = %81
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %75, %68, %61
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %111, i64 %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %113, i8* %114)
  br label %123

116:                                              ; preds = %106
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %117, i64 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %119, i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %116, %110
  %124 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %125 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ATA_FLAG_FPDMA_AUX, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %123
  %131 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %132 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @ata_id_has_ncq_send_and_recv(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %138 = call i32 @ata_dev_config_ncq_send_recv(%struct.ata_device* %137)
  br label %139

139:                                              ; preds = %136, %130
  %140 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %141 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @ata_id_has_ncq_non_data(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %147 = call i32 @ata_dev_config_ncq_non_data(%struct.ata_device* %146)
  br label %148

148:                                              ; preds = %145, %139
  %149 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %150 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ata_id_has_ncq_prio(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %156 = call i32 @ata_dev_config_ncq_prio(%struct.ata_device* %155)
  br label %157

157:                                              ; preds = %154, %148
  br label %158

158:                                              ; preds = %157, %123
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %95, %37, %27
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @ata_id_queue_depth(i32) #1

declare dso_local i32 @ata_id_has_ncq(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @ata_id_has_fpdma_aa(i32) #1

declare dso_local i32 @ata_dev_set_feature(%struct.ata_device*, i32, i32) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*, i32) #1

declare dso_local i64 @ata_id_has_ncq_send_and_recv(i32) #1

declare dso_local i32 @ata_dev_config_ncq_send_recv(%struct.ata_device*) #1

declare dso_local i64 @ata_id_has_ncq_non_data(i32) #1

declare dso_local i32 @ata_dev_config_ncq_non_data(%struct.ata_device*) #1

declare dso_local i64 @ata_id_has_ncq_prio(i32) #1

declare dso_local i32 @ata_dev_config_ncq_prio(%struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
