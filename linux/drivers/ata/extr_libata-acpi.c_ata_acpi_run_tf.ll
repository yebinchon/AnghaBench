; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_run_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_run_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_acpi_gtf = type { i64* }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@KERN_INFO = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"rejected by device (Stat=0x%02x Err=0x%02x)\00", align 1
@KERN_ERR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"failed (Emask=0x%x Stat=0x%02x Err=0x%02x)\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"filtered out\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"ACPI cmd %02x/%02x:%02x:%02x:%02x:%02x:%02x (%s) %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf*)* @ata_acpi_run_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acpi_run_tf(%struct.ata_device* %0, %struct.ata_acpi_gtf* %1, %struct.ata_acpi_gtf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_acpi_gtf*, align 8
  %7 = alloca %struct.ata_acpi_gtf*, align 8
  %8 = alloca %struct.ata_taskfile*, align 8
  %9 = alloca %struct.ata_taskfile, align 4
  %10 = alloca %struct.ata_taskfile, align 4
  %11 = alloca %struct.ata_taskfile, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [60 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store %struct.ata_acpi_gtf* %1, %struct.ata_acpi_gtf** %6, align 8
  store %struct.ata_acpi_gtf* %2, %struct.ata_acpi_gtf** %7, align 8
  store %struct.ata_taskfile* null, %struct.ata_taskfile** %8, align 8
  %17 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %18 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %3
  %24 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %25 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %23
  %31 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %32 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %30
  %38 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %39 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %46 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %53 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %60 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %146

66:                                               ; preds = %58, %51, %44, %37, %30, %23, %3
  %67 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %68 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %69 = call i32 @ata_acpi_gtf_to_tf(%struct.ata_device* %67, %struct.ata_acpi_gtf* %68, %struct.ata_taskfile* %9)
  %70 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %7, align 8
  %71 = icmp ne %struct.ata_acpi_gtf* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %74 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %7, align 8
  %75 = call i32 @ata_acpi_gtf_to_tf(%struct.ata_device* %73, %struct.ata_acpi_gtf* %74, %struct.ata_taskfile* %10)
  store %struct.ata_taskfile* %10, %struct.ata_taskfile** %8, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %78 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %79 = call i32 @ata_acpi_filter_tf(%struct.ata_device* %77, %struct.ata_taskfile* %9, %struct.ata_taskfile* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %112, label %81

81:                                               ; preds = %76
  %82 = bitcast %struct.ata_taskfile* %11 to i8*
  %83 = bitcast %struct.ata_taskfile* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 28, i1 false)
  %84 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %85 = load i32, i32* @DMA_NONE, align 4
  %86 = call i32 @ata_exec_internal(%struct.ata_device* %84, %struct.ata_taskfile* %11, i32* null, i32 %85, i32* null, i32 0, i32 0)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  switch i32 %87, label %100 [
    i32 0, label %88
    i32 128, label %92
  ]

88:                                               ; preds = %81
  %89 = load i8*, i8** @KERN_DEBUG, align 8
  store i8* %89, i8** %13, align 8
  %90 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %111

92:                                               ; preds = %81
  %93 = load i8*, i8** @KERN_INFO, align 8
  store i8* %93, i8** %13, align 8
  %94 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %95 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %98)
  store i32 0, i32* %16, align 4
  br label %111

100:                                              ; preds = %81
  %101 = load i8*, i8** @KERN_ERR, align 8
  store i8* %101, i8** %13, align 8
  %102 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %103 = load i32, i32* %12, align 4
  %104 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %102, i32 60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %105, i32 %107)
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %100, %92, %88
  br label %116

112:                                              ; preds = %76
  %113 = load i8*, i8** @KERN_INFO, align 8
  store i8* %113, i8** %13, align 8
  %114 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %115 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %114, i32 60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @ata_get_cmd_descript(i32 %118)
  store i8* %119, i8** %14, align 8
  %120 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %14, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %116
  %139 = load i8*, i8** %14, align 8
  br label %141

140:                                              ; preds = %116
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i8* [ %139, %138 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %140 ]
  %143 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %144 = call i32 @ata_dev_printk(%struct.ata_device* %120, i8* %121, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %125, i32 %127, i32 %129, i32 %131, i32 %133, i32 %135, i8* %142, i8* %143)
  %145 = load i32, i32* %16, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %141, %65
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @ata_acpi_gtf_to_tf(%struct.ata_device*, %struct.ata_acpi_gtf*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_acpi_filter_tf(%struct.ata_device*, %struct.ata_taskfile*, %struct.ata_taskfile*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @ata_get_cmd_descript(i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
