; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_resend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SSIF_IPMI_MULTI_PART_REQUEST_START = common dso_local global i32 0, align 4
@SSIF_IPMI_REQUEST = common dso_local global i32 0, align 4
@msg_written_handler = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@SSIF_DEBUG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error from i2c_non_blocking_op(4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssif_info*)* @start_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_resend(%struct.ssif_info* %0) #0 {
  %2 = alloca %struct.ssif_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ssif_info* %0, %struct.ssif_info** %2, align 8
  %5 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %6 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %8 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 32
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @SSIF_IPMI_MULTI_PART_REQUEST_START, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %14 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %17 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %19 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %22 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %24 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %23, i32 0, i32 5
  store i32 32, i32* %24, align 4
  %25 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %26 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 32, i32* %28, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %31 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @SSIF_IPMI_REQUEST, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %34 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %37 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %11
  %41 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %42 = load i32, i32* @msg_written_handler, align 4
  %43 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %46 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @I2C_SMBUS_BLOCK_DATA, align 4
  %49 = call i32 @ssif_i2c_send(%struct.ssif_info* %41, i32 %42, i32 %43, i32 %44, i32* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %40
  %53 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %54 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SSIF_DEBUG_MSG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.ssif_info*, %struct.ssif_info** %2, align 8
  %61 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %60, i32 0, i32 7
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %59, %52, %40
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ssif_i2c_send(%struct.ssif_info*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
