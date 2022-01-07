; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_target_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_target_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_lpc_dev = type { i32, i64 }
%struct.lpc_cycle_para = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LPC_REG_CMD_OP = common dso_local global i64 0, align 8
@LPC_PEROP_WAITCNT = common dso_local global i32 0, align 4
@FG_INCRADDR_LPC = common dso_local global i32 0, align 4
@LPC_REG_CMD_SAMEADDR = common dso_local global i64 0, align 8
@LPC_MAX_WAITCNT = common dso_local global i32 0, align 4
@LPC_REG_OP_LEN = common dso_local global i64 0, align 8
@LPC_REG_CMD = common dso_local global i64 0, align 8
@LPC_REG_ADDR = common dso_local global i64 0, align 8
@LPC_REG_WDATA = common dso_local global i64 0, align 8
@LPC_REG_STARTUP_SIGNAL_START = common dso_local global i32 0, align 4
@LPC_REG_STARTUP_SIGNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_lpc_dev*, %struct.lpc_cycle_para*, i64, i8*, i64)* @hisi_lpc_target_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_lpc_target_out(%struct.hisi_lpc_dev* %0, %struct.lpc_cycle_para* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_lpc_dev*, align 8
  %8 = alloca %struct.lpc_cycle_para*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.hisi_lpc_dev* %0, %struct.hisi_lpc_dev** %7, align 8
  store %struct.lpc_cycle_para* %1, %struct.lpc_cycle_para** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.lpc_cycle_para*, %struct.lpc_cycle_para** %8, align 8
  %23 = icmp ne %struct.lpc_cycle_para* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %26 = icmp ne %struct.hisi_lpc_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %18, %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %95

30:                                               ; preds = %24
  %31 = load i64, i64* @LPC_REG_CMD_OP, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i32, i32* @LPC_PEROP_WAITCNT, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.lpc_cycle_para*, %struct.lpc_cycle_para** %8, align 8
  %34 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FG_INCRADDR_LPC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* @LPC_REG_CMD_SAMEADDR, align 8
  %41 = load i64, i64* %14, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %14, align 8
  %43 = load i32, i32* @LPC_MAX_WAITCNT, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %39, %30
  %45 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %51 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LPC_REG_OP_LEN, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i64 %49, i64 %54)
  %56 = load i64, i64* %14, align 8
  %57 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %58 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LPC_REG_CMD, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i64 %56, i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LPC_REG_ADDR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel_relaxed(i64 %63, i64 %68)
  %70 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %71 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LPC_REG_WDATA, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @writesb(i64 %74, i8* %75, i64 %76)
  %78 = load i32, i32* @LPC_REG_STARTUP_SIGNAL_START, align 4
  %79 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %80 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LPC_REG_STARTUP_SIGNAL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %86 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @wait_lpc_idle(i64 %87, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %91 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %44, %27
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @writesb(i64, i8*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_lpc_idle(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
