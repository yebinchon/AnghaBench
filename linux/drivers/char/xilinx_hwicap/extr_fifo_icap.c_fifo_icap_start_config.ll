; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_fifo_icap.c_fifo_icap_start_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_fifo_icap.c_fifo_icap_start_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwicap_drvdata = type { i32, i64 }

@XHI_CR_OFFSET = common dso_local global i64 0, align 8
@XHI_CR_WRITE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"configuration started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwicap_drvdata*)* @fifo_icap_start_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fifo_icap_start_config(%struct.hwicap_drvdata* %0) #0 {
  %2 = alloca %struct.hwicap_drvdata*, align 8
  store %struct.hwicap_drvdata* %0, %struct.hwicap_drvdata** %2, align 8
  %3 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @XHI_CR_OFFSET, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @XHI_CR_WRITE_MASK, align 4
  %9 = call i32 @out_be32(i64 %7, i32 %8)
  %10 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %2, align 8
  %11 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
