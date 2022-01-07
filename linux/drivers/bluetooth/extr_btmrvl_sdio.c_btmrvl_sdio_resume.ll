; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.btmrvl_sdio_card = type { %struct.TYPE_6__*, %struct.btmrvl_private* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.btmrvl_private = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 (%struct.btmrvl_private*)* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: resume: PM flags = 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"card or priv structure is not valid\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sdio_func is not specified\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"device already resumed\00", align 1
@HS_DEACTIVATED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: HS DEACTIVATED in resume!\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s: SDIO resume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @btmrvl_sdio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.btmrvl_sdio_card*, align 8
  %6 = alloca %struct.btmrvl_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %9)
  store %struct.sdio_func* %10, %struct.sdio_func** %4, align 8
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = icmp ne %struct.sdio_func* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = call i32 @sdio_get_host_pm_caps(%struct.sdio_func* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = call i32 @sdio_func_id(%struct.sdio_func* %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %21 = call %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %20)
  store %struct.btmrvl_sdio_card* %21, %struct.btmrvl_sdio_card** %5, align 8
  %22 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %23 = icmp ne %struct.btmrvl_sdio_card* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %26 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %25, i32 0, i32 1
  %27 = load %struct.btmrvl_private*, %struct.btmrvl_private** %26, align 8
  %28 = icmp ne %struct.btmrvl_private* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %13
  %30 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

31:                                               ; preds = %24
  br label %34

32:                                               ; preds = %1
  %33 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

34:                                               ; preds = %31
  %35 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %36 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %35, i32 0, i32 1
  %37 = load %struct.btmrvl_private*, %struct.btmrvl_private** %36, align 8
  store %struct.btmrvl_private* %37, %struct.btmrvl_private** %6, align 8
  %38 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %39 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

46:                                               ; preds = %34
  %47 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %48 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %47, i32 0, i32 2
  %49 = load i32 (%struct.btmrvl_private*)*, i32 (%struct.btmrvl_private*)** %48, align 8
  %50 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %51 = call i32 %49(%struct.btmrvl_private* %50)
  %52 = load i32, i32* @HS_DEACTIVATED, align 4
  %53 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %54 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %58 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.hci_dev*, %struct.hci_dev** %59, align 8
  store %struct.hci_dev* %60, %struct.hci_dev** %8, align 8
  %61 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %66 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %74 = call i32 @hci_resume_dev(%struct.hci_dev* %73)
  %75 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %76 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = icmp ne %struct.TYPE_6__* %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %46
  %80 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %81 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %79
  %87 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %88 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @disable_irq_wake(i64 %91)
  %93 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %94 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @disable_irq(i64 %97)
  %99 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %100 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %86
  %106 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %107 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @enable_irq(i64 %110)
  br label %112

112:                                              ; preds = %105, %86
  br label %113

113:                                              ; preds = %112, %79, %46
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %44, %32, %29
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_resume_dev(%struct.hci_dev*) #1

declare dso_local i32 @disable_irq_wake(i64) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @enable_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
