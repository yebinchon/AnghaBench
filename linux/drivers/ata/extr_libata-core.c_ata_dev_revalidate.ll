; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i64, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i32 0, align 4
@ATA_DEV_ZAC = common dso_local global i32 0, align 4
@ATA_DEV_SEMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"class mismatch %u != %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"n_sectors mismatch %llu != %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"new n_sectors matches native, probably late HPA unlock, n_sectors updated\0A\00", align 1
@ATA_HORKAGE_BROKEN_HPA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"old n_sectors matches native, probably late HPA lock, will try to unlock HPA\0A\00", align 1
@ATA_DFLAG_UNLOCK_HPA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"revalidation failed (errno=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_dev_revalidate(%struct.ata_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %18 = call i32 @ata_dev_enabled(%struct.ata_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %156

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ata_class_enabled(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ATA_DEV_ATA, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATA_DEV_ATAPI, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ATA_DEV_ZAC, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ATA_DEV_SEMB, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %45 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %46 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ata_dev_info(%struct.ata_device* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %151

52:                                               ; preds = %39, %35, %31, %27, %23
  %53 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ata_dev_reread_id(%struct.ata_device* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %151

59:                                               ; preds = %52
  %60 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %61 = call i32 @ata_dev_configure(%struct.ata_device* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %151

65:                                               ; preds = %59
  %66 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %67 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ATA_DEV_ATA, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %76 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %71, %65
  store i32 0, i32* %4, align 4
  br label %156

81:                                               ; preds = %74
  %82 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %85 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %83, i64 %86)
  %88 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %89 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %81
  %94 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %95 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %101 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %107 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %106, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %156

108:                                              ; preds = %99, %93, %81
  %109 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %110 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %108
  %115 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %116 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %114
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %126 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %124
  %132 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %133 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %132, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @ATA_DFLAG_UNLOCK_HPA, align 4
  %135 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %136 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %10, align 4
  br label %144

141:                                              ; preds = %124, %120, %114, %108
  %142 = load i32, i32* @ENODEV, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %141, %131
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %147 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %150 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %64, %58, %43
  %152 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @ata_dev_err(%struct.ata_device* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %151, %105, %80, %20
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i64 @ata_class_enabled(i32) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, i32, i32) #1

declare dso_local i32 @ata_dev_reread_id(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_configure(%struct.ata_device*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, ...) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
