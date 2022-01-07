; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/i2c/busses/extr_i2c-cns3xxx.c_cns3xxx_i2c_adapter_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/i2c/busses/extr_i2c-cns3xxx.c_cns3xxx_i2c_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cns3xxx_i2c = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@I2C_CONTROLLER_REG = common dso_local global i64 0, align 8
@CNS3xxx_I2C_CLK = common dso_local global i32 0, align 4
@I2C_TIME_OUT_REG = common dso_local global i32 0, align 4
@I2C_TWI_OUT_DLY_REG = common dso_local global i32 0, align 4
@I2C_ACTION_DONE_FLAG = common dso_local global i32 0, align 4
@I2C_BUS_ERROR_FLAG = common dso_local global i32 0, align 4
@I2C_INTERRUPT_STATUS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cns3xxx_i2c*)* @cns3xxx_i2c_adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cns3xxx_i2c_adapter_init(%struct.cns3xxx_i2c* %0) #0 {
  %2 = alloca %struct.cns3xxx_i2c*, align 8
  %3 = alloca %struct.clk*, align 8
  store %struct.cns3xxx_i2c* %0, %struct.cns3xxx_i2c** %2, align 8
  %4 = load %struct.cns3xxx_i2c*, %struct.cns3xxx_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.cns3xxx_i2c, %struct.cns3xxx_i2c* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.clk* @devm_clk_get(i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %7, %struct.clk** %3, align 8
  %8 = load %struct.clk*, %struct.clk** %3, align 8
  %9 = icmp ne %struct.clk* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %35

15:                                               ; preds = %1
  store i64 0, i64* @I2C_CONTROLLER_REG, align 8
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = call i32 @clk_get_rate(%struct.clk* %16)
  %18 = load i32, i32* @CNS3xxx_I2C_CLK, align 4
  %19 = mul nsw i32 2, %18
  %20 = sdiv i32 %17, %19
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %21, 1023
  %23 = shl i32 %22, 8
  %24 = or i32 %23, 128
  %25 = or i32 %24, 127
  store i32 %25, i32* @I2C_TIME_OUT_REG, align 4
  %26 = load i32, i32* @I2C_TWI_OUT_DLY_REG, align 4
  %27 = or i32 %26, 3
  store i32 %27, i32* @I2C_TWI_OUT_DLY_REG, align 4
  %28 = call i32 (...) @CNS3xxx_I2C_ENABLE_INTR()
  %29 = load i32, i32* @I2C_ACTION_DONE_FLAG, align 4
  %30 = load i32, i32* @I2C_BUS_ERROR_FLAG, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @I2C_INTERRUPT_STATUS_REG, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @I2C_INTERRUPT_STATUS_REG, align 4
  %34 = call i32 (...) @CNS3xxx_I2C_ENABLE()
  br label %35

35:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.clk* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @CNS3xxx_I2C_ENABLE_INTR(...) #1

declare dso_local i32 @CNS3xxx_I2C_ENABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
