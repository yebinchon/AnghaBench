; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_ill_acc.c_ill_acc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_ill_acc.c_ill_acc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@REG_ILL_ACC_ADDR = common dso_local global i32 0, align 4
@REG_ILL_ACC_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"illegal %s access from %s - addr:0x%08x offset:%d len:%d\0A\00", align 1
@ILL_ACC_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@ill_acc_ids = common dso_local global i32* null, align 8
@ILL_ACC_ID_S = common dso_local global i32 0, align 4
@ILL_ACC_ID_M = common dso_local global i32 0, align 4
@ILL_ACC_OFF_S = common dso_local global i32 0, align 4
@ILL_ACC_OFF_M = common dso_local global i32 0, align 4
@ILL_ACC_LEN_M = common dso_local global i32 0, align 4
@ILL_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ill_acc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ill_acc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.device*
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load i32, i32* @REG_ILL_ACC_ADDR, align 4
  %11 = call i32 @rt_memc_r32(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @REG_ILL_ACC_TYPE, align 4
  %13 = call i32 @rt_memc_r32(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ILL_ACC_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32*, i32** @ill_acc_ids, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ILL_ACC_ID_S, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @ILL_ACC_ID_M, align 4
  %26 = and i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ILL_ACC_OFF_S, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @ILL_ACC_OFF_M, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ILL_ACC_LEN_M, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %29, i32 %30, i32 %35, i32 %38)
  %40 = load i32, i32* @ILL_INT_STATUS, align 4
  %41 = load i32, i32* @REG_ILL_ACC_TYPE, align 4
  %42 = call i32 @rt_memc_w32(i32 %40, i32 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @rt_memc_r32(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rt_memc_w32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
