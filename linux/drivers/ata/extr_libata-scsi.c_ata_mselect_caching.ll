; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_mselect_caching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_mselect_caching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_taskfile }
%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i64, i32 }

@CACHE_MPAGE_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@SETFEATURES_WC_ON = common dso_local global i32 0, align 4
@SETFEATURES_WC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, i32*, i32, i32*)* @ata_mselect_caching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_mselect_caching(%struct.ata_queued_cmd* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ata_taskfile*, align 8
  %11 = alloca %struct.ata_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 1
  store %struct.ata_taskfile* %18, %struct.ata_taskfile** %10, align 8
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %19, i32 0, i32 0
  %21 = load %struct.ata_device*, %struct.ata_device** %20, align 8
  store %struct.ata_device* %21, %struct.ata_device** %11, align 8
  %22 = load i32, i32* @CACHE_MPAGE_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CACHE_MPAGE_LEN, align 4
  %28 = sub nsw i32 %27, 2
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CACHE_MPAGE_LEN, align 4
  %33 = sub nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @CACHE_MPAGE_LEN, align 4
  %40 = sub nsw i32 %39, 2
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %110

45:                                               ; preds = %4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.ata_device*, %struct.ata_device** %11, align 8
  %51 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ata_msense_caching(i32 %52, i32* %25, i32 0)
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %81, %45
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @CACHE_MPAGE_LEN, align 4
  %57 = sub nsw i32 %56, 2
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %81

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %25, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %68, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %110

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %62
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %54

84:                                               ; preds = %54
  %85 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %86 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.ata_taskfile*, %struct.ata_taskfile** %10, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* @ATA_PROT_NODATA, align 4
  %93 = load %struct.ata_taskfile*, %struct.ata_taskfile** %10, align 8
  %94 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %10, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @ATA_CMD_SET_FEATURES, align 4
  %98 = load %struct.ata_taskfile*, %struct.ata_taskfile** %10, align 8
  %99 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %84
  %103 = load i32, i32* @SETFEATURES_WC_ON, align 4
  br label %106

104:                                              ; preds = %84
  %105 = load i32, i32* @SETFEATURES_WC_OFF, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.ata_taskfile*, %struct.ata_taskfile** %10, align 8
  %109 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %110

110:                                              ; preds = %106, %75, %42
  %111 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_msense_caching(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
