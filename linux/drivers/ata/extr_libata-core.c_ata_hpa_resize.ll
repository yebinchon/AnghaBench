; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_hpa_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_hpa_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i64, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_EHI_PRINTINFO = common dso_local global i32 0, align 4
@ata_ignore_hpa = common dso_local global i64 0, align 8
@ATA_DFLAG_UNLOCK_HPA = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_DEV_ZAC = common dso_local global i64 0, align 8
@ATA_HORKAGE_BROKEN_HPA = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"HPA support seems broken, skipping HPA handling\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"HPA detected: current %llu, native %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"native sectors (%llu) is smaller than sectors (%llu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"device aborted resize (%llu -> %llu), skipping HPA handling\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"failed to re-read IDENTIFY data after HPA resizing\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"HPA unlocked: %llu -> %llu, native %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_hpa_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_hpa_resize(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_eh_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.ata_eh_context* %14, %struct.ata_eh_context** %4, align 8
  %15 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %16 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ATA_EHI_PRINTINFO, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* @ata_ignore_hpa, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATA_DFLAG_UNLOCK_HPA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %1
  %31 = phi i1 [ true, %1 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ata_id_n_sectors(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %38 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATA_DEV_ATA, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %44 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ATA_DEV_ZAC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %67, label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %50 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ata_id_has_lba(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ata_id_hpa_enabled(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %62 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %54, %48, %42
  store i32 0, i32* %2, align 4
  br label %182

68:                                               ; preds = %60
  %69 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %70 = call i32 @ata_read_native_max_address(%struct.ata_device* %69, i64* %8)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @EACCES, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %83 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %85 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %86 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @EACCES, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %182

97:                                               ; preds = %68
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %100 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %99, i32 0, i32 4
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %135, label %107

107:                                              ; preds = %104, %97
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %107
  store i32 0, i32* %2, align 4
  br label %182

115:                                              ; preds = %110
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %7, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i32 (%struct.ata_device*, i8*, i64, i64, ...) @ata_dev_info(%struct.ata_device* %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %121, i64 %122)
  br label %134

124:                                              ; preds = %115
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %7, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %129, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %124
  br label %134

134:                                              ; preds = %133, %119
  store i32 0, i32* %2, align 4
  br label %182

135:                                              ; preds = %104
  %136 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @ata_set_max_sectors(%struct.ata_device* %136, i64 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @EACCES, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %135
  %144 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %8, align 8
  %147 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %144, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %145, i64 %146)
  %148 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %149 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %150 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  store i32 0, i32* %2, align 4
  br label %182

153:                                              ; preds = %135
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %2, align 4
  br label %182

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %161 = call i32 @ata_dev_reread_id(%struct.ata_device* %160, i32 0)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %166 = call i32 @ata_dev_err(%struct.ata_device* %165, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  br label %182

168:                                              ; preds = %159
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %173 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @ata_id_n_sectors(i32 %174)
  store i64 %175, i64* %10, align 8
  %176 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* %8, align 8
  %180 = call i32 (%struct.ata_device*, i8*, i64, i64, ...) @ata_dev_info(%struct.ata_device* %176, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %177, i64 %178, i64 %179)
  br label %181

181:                                              ; preds = %171, %168
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %164, %156, %143, %134, %114, %95, %67
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i64 @ata_id_n_sectors(i32) #1

declare dso_local i32 @ata_id_has_lba(i32) #1

declare dso_local i32 @ata_id_hpa_enabled(i32) #1

declare dso_local i32 @ata_read_native_max_address(%struct.ata_device*, i64*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, ...) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, i64, i64, ...) #1

declare dso_local i32 @ata_set_max_sectors(%struct.ata_device*, i64) #1

declare dso_local i32 @ata_dev_reread_id(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
