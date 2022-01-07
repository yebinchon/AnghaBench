; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_target_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_target_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_lpc_dev = type { i32, i64 }
%struct.lpc_cycle_para = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LPC_PEROP_WAITCNT = common dso_local global i32 0, align 4
@FG_INCRADDR_LPC = common dso_local global i32 0, align 4
@LPC_REG_CMD_SAMEADDR = common dso_local global i32 0, align 4
@LPC_MAX_WAITCNT = common dso_local global i32 0, align 4
@LPC_REG_OP_LEN = common dso_local global i64 0, align 8
@LPC_REG_CMD = common dso_local global i64 0, align 8
@LPC_REG_ADDR = common dso_local global i64 0, align 8
@LPC_REG_STARTUP_SIGNAL_START = common dso_local global i32 0, align 4
@LPC_REG_STARTUP_SIGNAL = common dso_local global i64 0, align 8
@LPC_REG_RDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_lpc_dev*, %struct.lpc_cycle_para*, i64, i8*, i64)* @hisi_lpc_target_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_lpc_target_in(%struct.hisi_lpc_dev* %0, %struct.lpc_cycle_para* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_lpc_dev*, align 8
  %8 = alloca %struct.lpc_cycle_para*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.hisi_lpc_dev* %0, %struct.hisi_lpc_dev** %7, align 8
  store %struct.lpc_cycle_para* %1, %struct.lpc_cycle_para** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.lpc_cycle_para*, %struct.lpc_cycle_para** %8, align 8
  %23 = icmp ne %struct.lpc_cycle_para* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.lpc_cycle_para*, %struct.lpc_cycle_para** %8, align 8
  %26 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %31 = icmp ne %struct.hisi_lpc_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %24, %21, %18, %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %108

35:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  %36 = load i32, i32* @LPC_PEROP_WAITCNT, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.lpc_cycle_para*, %struct.lpc_cycle_para** %8, align 8
  %38 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FG_INCRADDR_LPC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @LPC_REG_CMD_SAMEADDR, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @LPC_MAX_WAITCNT, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %50 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %55 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LPC_REG_OP_LEN, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i64 %53, i64 %58)
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %63 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LPC_REG_CMD, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i64 %61, i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %70 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LPC_REG_ADDR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel_relaxed(i64 %68, i64 %73)
  %75 = load i32, i32* @LPC_REG_STARTUP_SIGNAL_START, align 4
  %76 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %77 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @LPC_REG_STARTUP_SIGNAL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %83 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @wait_lpc_idle(i64 %84, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %48
  %90 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %91 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %108

95:                                               ; preds = %48
  %96 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %97 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @LPC_REG_RDATA, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i8*, i8** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @readsb(i64 %100, i8* %101, i64 %102)
  %104 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %105 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %104, i32 0, i32 0
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %95, %89, %32
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_lpc_idle(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @readsb(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
