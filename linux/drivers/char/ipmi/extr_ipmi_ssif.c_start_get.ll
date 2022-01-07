; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@SSIF_IPMI_RESPONSE = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@SSIF_DEBUG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error from i2c_non_blocking_op(5)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssif_info*)* @start_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_get(%struct.ssif_info* %0) #0 {
  %2 = alloca %struct.ssif_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ssif_info* %0, %struct.ssif_info** %2, align 8
  %4 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %5 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %7 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %9 = load i32, i32* @I2C_SMBUS_READ, align 4
  %10 = load i32, i32* @SSIF_IPMI_RESPONSE, align 4
  %11 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %12 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I2C_SMBUS_BLOCK_DATA, align 4
  %15 = call i32 @ssif_i2c_send(%struct.ssif_info* %8, i32 (%struct.ssif_info*, i32, i32*, i32)* @msg_done_handler, i32 %9, i32 %10, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %20 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SSIF_DEBUG_MSG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %27 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %18
  %32 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @msg_done_handler(%struct.ssif_info* %32, i32 %34, i32* null, i32 0)
  br label %36

36:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @ssif_i2c_send(%struct.ssif_info*, i32 (%struct.ssif_info*, i32, i32*, i32)*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_done_handler(%struct.ssif_info*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
