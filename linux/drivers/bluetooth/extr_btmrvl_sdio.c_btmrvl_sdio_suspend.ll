; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.btmrvl_sdio_card = type { %struct.TYPE_5__*, %struct.btmrvl_private* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.btmrvl_private = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: suspend: PM flags = 0x%x\00", align 1
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: cannot remain alive while suspended\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"card or priv structure is not valid\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"sdio_func is not specified\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: SDIO suspend\00", align 1
@HS_ACTIVATED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"HS not activated, suspend failed!\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"suspend with MMC_PM_KEEP_POWER\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"suspend without MMC_PM_KEEP_POWER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @btmrvl_sdio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_suspend(%struct.device* %0) #0 {
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
  br i1 %12, label %13, label %43

13:                                               ; preds = %1
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = call i32 @sdio_get_host_pm_caps(%struct.sdio_func* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = call i32 @sdio_func_id(%struct.sdio_func* %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %26 = call i32 @sdio_func_id(%struct.sdio_func* %25)
  %27 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %160

30:                                               ; preds = %13
  %31 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %32 = call %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %31)
  store %struct.btmrvl_sdio_card* %32, %struct.btmrvl_sdio_card** %5, align 8
  %33 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %34 = icmp ne %struct.btmrvl_sdio_card* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %37 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %36, i32 0, i32 1
  %38 = load %struct.btmrvl_private*, %struct.btmrvl_private** %37, align 8
  %39 = icmp ne %struct.btmrvl_private* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %30
  %41 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %160

42:                                               ; preds = %35
  br label %45

43:                                               ; preds = %1
  %44 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %160

45:                                               ; preds = %42
  %46 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %47 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %52 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %59 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %63 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @enable_irq(i64 %66)
  %68 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %69 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @enable_irq_wake(i64 %72)
  br label %74

74:                                               ; preds = %57, %50, %45
  %75 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %76 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %75, i32 0, i32 1
  %77 = load %struct.btmrvl_private*, %struct.btmrvl_private** %76, align 8
  store %struct.btmrvl_private* %77, %struct.btmrvl_private** %6, align 8
  %78 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %79 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %83 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.hci_dev*, %struct.hci_dev** %84, align 8
  store %struct.hci_dev* %85, %struct.hci_dev** %8, align 8
  %86 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %91 = call i32 @hci_suspend_dev(%struct.hci_dev* %90)
  %92 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %93 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HS_ACTIVATED, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %137

99:                                               ; preds = %74
  %100 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %101 = call i64 @btmrvl_enable_hs(%struct.btmrvl_private* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %99
  %104 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %106 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %109, label %129

109:                                              ; preds = %103
  %110 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %111 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %118 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @disable_irq_wake(i64 %121)
  %123 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %124 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @disable_irq(i64 %127)
  br label %129

129:                                              ; preds = %116, %109, %103
  %130 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %131 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load i32, i32* @EBUSY, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %160

136:                                              ; preds = %99
  br label %137

137:                                              ; preds = %136, %74
  %138 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %139 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %143 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  %147 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @HS_ACTIVATED, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %137
  %154 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %155 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %156 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %157 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %155, i32 %156)
  store i32 %157, i32* %2, align 4
  br label %160

158:                                              ; preds = %137
  %159 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %153, %129, %43, %40, %24
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @enable_irq_wake(i64) #1

declare dso_local i32 @hci_suspend_dev(%struct.hci_dev*) #1

declare dso_local i64 @btmrvl_enable_hs(%struct.btmrvl_private*) #1

declare dso_local i32 @disable_irq_wake(i64) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @sdio_set_host_pm_flags(%struct.sdio_func*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
