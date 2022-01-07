; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it821x.c_it821x_dev_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it821x.c_it821x_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32*, i32, i32 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_ID_PROD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Integrated Technology Express\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%sRAID%d volume\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Bootable \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(%dK stripe)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ATA_HORKAGE_DIAGNOSTIC = common dso_local global i32 0, align 4
@ATA_HORKAGE_BROKEN_HPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @it821x_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_dev_config(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %5 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @ATA_ID_PROD, align 4
  %14 = trunc i64 %7 to i32
  %15 = call i32 @ata_id_c_string(i32* %12, i8* %9, i32 %13, i32 %14)
  %16 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 255
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 1
  store i32 255, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = call i64 @strstr(i8* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 147
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %36 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %37 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 129
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ata_dev_info(%struct.ata_device* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %40)
  %42 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 129
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %26
  %49 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %50 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 146
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48, %26
  %56 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %23
  %58 = load i32, i32* @ATA_HORKAGE_DIAGNOSTIC, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %61 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @ATA_HORKAGE_BROKEN_HPA, align 4
  %65 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %66 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_id_c_string(i32*, i8*, i32, i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, i8*, i32) #2

declare dso_local i32 @pr_cont(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
