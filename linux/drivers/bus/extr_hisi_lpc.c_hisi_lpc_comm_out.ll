; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_comm_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_comm_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_lpc_dev = type { i32 }
%struct.lpc_cycle_para = type { i64, i32 }

@LPC_MAX_DWIDTH = common dso_local global i64 0, align 8
@FG_INCRADDR_LPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i64)* @hisi_lpc_comm_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_lpc_comm_out(i8* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.hisi_lpc_dev*, align 8
  %10 = alloca %struct.lpc_cycle_para, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.hisi_lpc_dev*
  store %struct.hisi_lpc_dev* %14, %struct.hisi_lpc_dev** %9, align 8
  %15 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %9, align 8
  %16 = icmp ne %struct.hisi_lpc_dev* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @LPC_MAX_DWIDTH, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %17, %4
  br label %41

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = bitcast i32* %7 to i8*
  store i8* %28, i8** %11, align 8
  %29 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @hisi_lpc_pio_to_addr(%struct.hisi_lpc_dev* %29, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i32, i32* @FG_INCRADDR_LPC, align 4
  %33 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %10, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @hisi_lpc_target_out(%struct.hisi_lpc_dev* %36, %struct.lpc_cycle_para* %10, i64 %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @hisi_lpc_pio_to_addr(%struct.hisi_lpc_dev*, i64) #1

declare dso_local i32 @hisi_lpc_target_out(%struct.hisi_lpc_dev*, %struct.lpc_cycle_para*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
