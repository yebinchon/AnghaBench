; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_mselect_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_mselect_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device* }
%struct.ata_device = type { i32 }

@CONTROL_MPAGE_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATA_DFLAG_D_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, i32*, i32, i32*)* @ata_mselect_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_mselect_control(%struct.ata_queued_cmd* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ata_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 0
  %18 = load %struct.ata_device*, %struct.ata_device** %17, align 8
  store %struct.ata_device* %18, %struct.ata_device** %10, align 8
  %19 = load i32, i32* @CONTROL_MPAGE_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CONTROL_MPAGE_LEN, align 4
  %25 = sub nsw i32 %24, 2
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CONTROL_MPAGE_LEN, align 4
  %30 = sub nsw i32 %29, 2
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @CONTROL_MPAGE_LEN, align 4
  %37 = sub nsw i32 %36, 2
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %97

42:                                               ; preds = %4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %48 = call i32 @ata_msense_control(%struct.ata_device* %47, i32* %22, i32 0)
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %76, %42
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @CONTROL_MPAGE_LEN, align 4
  %52 = sub nsw i32 %51, 2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %76

58:                                               ; preds = %54
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %22, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %63, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load i32, i32* %14, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %97

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %49

79:                                               ; preds = %49
  %80 = load i32, i32* %13, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @ATA_DFLAG_D_SENSE, align 4
  %85 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %86 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %96

89:                                               ; preds = %79
  %90 = load i32, i32* @ATA_DFLAG_D_SENSE, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %93 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %83
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %97

97:                                               ; preds = %96, %70, %39
  %98 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_msense_control(%struct.ata_device*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
