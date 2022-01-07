; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_detect.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367B_RTL_MAGIC_ID_REG = common dso_local global i32 0, align 4
@RTL8367B_RTL_MAGIC_ID_VAL = common dso_local global i32 0, align 4
@RTL8367B_CHIP_NUMBER_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to read %s register\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"chip number\00", align 1
@RTL8367B_CHIP_VER_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"chip version\00", align 1
@RTL8367B_CHIP_MODE_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"chip mode\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"8367RB\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"8367R-VB\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"unknown chip num:%04x ver:%04x, mode:%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"RTL%s chip found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8367b_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_detect(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %10 = load i32, i32* @RTL8367B_RTL_MAGIC_ID_REG, align 4
  %11 = load i32, i32* @RTL8367B_RTL_MAGIC_ID_VAL, align 4
  %12 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %9, i32 %10, i32 %11)
  %13 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %14 = load i32, i32* @RTL8367B_CHIP_NUMBER_REG, align 4
  %15 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %13, i32 %14, i32* %5)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %20 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %68

24:                                               ; preds = %1
  %25 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %26 = load i32, i32* @RTL8367B_CHIP_VER_REG, align 4
  %27 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %25, i32 %26, i32* %6)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %32 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %24
  %37 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %38 = load i32, i32* @RTL8367B_CHIP_MODE_REG, align 4
  %39 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %37, i32 %38, i32* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %44 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %52 [
    i32 4096, label %50
    i32 4112, label %51
  ]

50:                                               ; preds = %48
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %62

51:                                               ; preds = %48
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %62

52:                                               ; preds = %48
  %53 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %54 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %51, %50
  %63 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %64 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @dev_info(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %52, %42, %30, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
