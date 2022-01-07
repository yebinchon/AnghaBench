; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660-stub.c_hi3660_stub_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660-stub.c_hi3660_stub_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.clk_hw = type { i32 }
%struct.hi3660_stub_clk = type { i64*, i64, i64 }

@MHZ = common dso_local global i64 0, align 8
@stub_clk_chan = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"set rate msg[0]=0x%x msg[1]=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @hi3660_stub_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_stub_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hi3660_stub_clk*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.hi3660_stub_clk* @to_stub_clk(%struct.clk_hw* %8)
  store %struct.hi3660_stub_clk* %9, %struct.hi3660_stub_clk** %7, align 8
  %10 = load %struct.hi3660_stub_clk*, %struct.hi3660_stub_clk** %7, align 8
  %11 = getelementptr inbounds %struct.hi3660_stub_clk, %struct.hi3660_stub_clk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hi3660_stub_clk*, %struct.hi3660_stub_clk** %7, align 8
  %14 = getelementptr inbounds %struct.hi3660_stub_clk, %struct.hi3660_stub_clk* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %12, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MHZ, align 8
  %19 = udiv i64 %17, %18
  %20 = load %struct.hi3660_stub_clk*, %struct.hi3660_stub_clk** %7, align 8
  %21 = getelementptr inbounds %struct.hi3660_stub_clk, %struct.hi3660_stub_clk* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %19, i64* %23, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stub_clk_chan, i32 0, i32 1, i32 0), align 4
  %25 = load %struct.hi3660_stub_clk*, %struct.hi3660_stub_clk** %7, align 8
  %26 = getelementptr inbounds %struct.hi3660_stub_clk, %struct.hi3660_stub_clk* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hi3660_stub_clk*, %struct.hi3660_stub_clk** %7, align 8
  %31 = getelementptr inbounds %struct.hi3660_stub_clk, %struct.hi3660_stub_clk* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stub_clk_chan, i32 0, i32 0), align 4
  %37 = load %struct.hi3660_stub_clk*, %struct.hi3660_stub_clk** %7, align 8
  %38 = getelementptr inbounds %struct.hi3660_stub_clk, %struct.hi3660_stub_clk* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @mbox_send_message(i32 %36, i64* %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stub_clk_chan, i32 0, i32 0), align 4
  %42 = call i32 @mbox_client_txdone(i32 %41, i32 0)
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.hi3660_stub_clk*, %struct.hi3660_stub_clk** %7, align 8
  %45 = getelementptr inbounds %struct.hi3660_stub_clk, %struct.hi3660_stub_clk* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  ret i32 0
}

declare dso_local %struct.hi3660_stub_clk* @to_stub_clk(%struct.clk_hw*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @mbox_send_message(i32, i64*) #1

declare dso_local i32 @mbox_client_txdone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
