; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_st33zp24_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_st33zp24_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st33zp24_phy_ops = type { i32 (i8*, i64, i32*, i32)* }
%struct.device = type { i32 }
%struct.tpm_chip = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.st33zp24_dev = type { i32, i8*, %struct.st33zp24_phy_ops*, i64, i32, i64 }

@st33zp24_tpm = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TIS_SHORT_TIMEOUT = common dso_local global i32 0, align 4
@TIS_LONG_TIMEOUT = common dso_local global i32 0, align 4
@LOCALITY0 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@tpm_ioserirq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TPM SERIRQ management\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"TPM SERIRQ signals %d not available\0A\00", align 1
@TPM_INTF_CMD_READY_INT = common dso_local global i32 0, align 4
@TPM_INTF_STS_VALID_INT = common dso_local global i32 0, align 4
@TPM_INTF_DATA_AVAIL_INT = common dso_local global i32 0, align 4
@TPM_INT_ENABLE = common dso_local global i64 0, align 8
@TPM_GLOBAL_INT_ENABLE = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"TPM initialization fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st33zp24_probe(i8* %0, %struct.st33zp24_phy_ops* %1, %struct.device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.st33zp24_phy_ops*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tpm_chip*, align 8
  %15 = alloca %struct.st33zp24_dev*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.st33zp24_phy_ops* %1, %struct.st33zp24_phy_ops** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = call %struct.tpm_chip* @tpmm_chip_alloc(%struct.device* %16, i32* @st33zp24_tpm)
  store %struct.tpm_chip* %17, %struct.tpm_chip** %14, align 8
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %19 = call i64 @IS_ERR(%struct.tpm_chip* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %23 = call i32 @PTR_ERR(%struct.tpm_chip* %22)
  store i32 %23, i32* %6, align 4
  br label %152

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.st33zp24_dev* @devm_kzalloc(%struct.device* %25, i32 48, i32 %26)
  store %struct.st33zp24_dev* %27, %struct.st33zp24_dev** %15, align 8
  %28 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %29 = icmp ne %struct.st33zp24_dev* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %152

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %36 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.st33zp24_phy_ops*, %struct.st33zp24_phy_ops** %8, align 8
  %38 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %39 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %38, i32 0, i32 2
  store %struct.st33zp24_phy_ops* %37, %struct.st33zp24_phy_ops** %39, align 8
  %40 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %41 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %40, i32 0, i32 0
  %42 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %43 = call i32 @dev_set_drvdata(i32* %41, %struct.st33zp24_dev* %42)
  %44 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %45 = call i8* @msecs_to_jiffies(i32 %44)
  %46 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %47 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @TIS_LONG_TIMEOUT, align 4
  %49 = call i8* @msecs_to_jiffies(i32 %48)
  %50 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %51 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %53 = call i8* @msecs_to_jiffies(i32 %52)
  %54 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %55 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %57 = call i8* @msecs_to_jiffies(i32 %56)
  %58 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %59 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @LOCALITY0, align 8
  %61 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %62 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %144

65:                                               ; preds = %33
  %66 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %67 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %66, i32 0, i32 4
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %70 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %72 = call i64 @request_locality(%struct.tpm_chip* %71)
  %73 = load i64, i64* @LOCALITY0, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %147

78:                                               ; preds = %65
  %79 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %80 = call i32 @clear_interruption(%struct.st33zp24_dev* %79)
  %81 = load %struct.device*, %struct.device** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @tpm_ioserirq_handler, align 4
  %84 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %85 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %86 = call i32 @devm_request_irq(%struct.device* %81, i32 %82, i32 %83, i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.tpm_chip* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %91 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %90, i32 0, i32 0
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %147

94:                                               ; preds = %78
  %95 = load i32, i32* @TPM_INTF_CMD_READY_INT, align 4
  %96 = load i32, i32* @TPM_INTF_STS_VALID_INT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @TPM_INTF_DATA_AVAIL_INT, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %103 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %102, i32 0, i32 2
  %104 = load %struct.st33zp24_phy_ops*, %struct.st33zp24_phy_ops** %103, align 8
  %105 = getelementptr inbounds %struct.st33zp24_phy_ops, %struct.st33zp24_phy_ops* %104, i32 0, i32 0
  %106 = load i32 (i8*, i64, i32*, i32)*, i32 (i8*, i64, i32*, i32)** %105, align 8
  %107 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %108 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* @TPM_INT_ENABLE, align 8
  %111 = call i32 %106(i8* %109, i64 %110, i32* %13, i32 1)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %94
  br label %147

115:                                              ; preds = %94
  %116 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  store i32 %116, i32* %13, align 4
  %117 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %118 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %117, i32 0, i32 2
  %119 = load %struct.st33zp24_phy_ops*, %struct.st33zp24_phy_ops** %118, align 8
  %120 = getelementptr inbounds %struct.st33zp24_phy_ops, %struct.st33zp24_phy_ops* %119, i32 0, i32 0
  %121 = load i32 (i8*, i64, i32*, i32)*, i32 (i8*, i64, i32*, i32)** %120, align 8
  %122 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %123 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i64, i64* @TPM_INT_ENABLE, align 8
  %126 = add nsw i64 %125, 3
  %127 = call i32 %121(i8* %124, i64 %126, i32* %13, i32 1)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  br label %147

131:                                              ; preds = %115
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %134 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %136 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %137 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %15, align 8
  %141 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @disable_irq_nosync(i32 %142)
  br label %144

144:                                              ; preds = %131, %33
  %145 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %146 = call i32 @tpm_chip_register(%struct.tpm_chip* %145)
  store i32 %146, i32* %6, align 4
  br label %152

147:                                              ; preds = %130, %114, %89, %75
  %148 = load %struct.tpm_chip*, %struct.tpm_chip** %14, align 8
  %149 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %148, i32 0, i32 0
  %150 = call i32 @dev_info(i32* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %147, %144, %30, %21
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.tpm_chip* @tpmm_chip_alloc(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.tpm_chip*) #1

declare dso_local %struct.st33zp24_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.st33zp24_dev*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @request_locality(%struct.tpm_chip*) #1

declare dso_local i32 @clear_interruption(%struct.st33zp24_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.tpm_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @tpm_chip_register(%struct.tpm_chip*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
