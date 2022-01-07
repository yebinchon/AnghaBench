; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_irq.c_au1300_gpic_settype.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_irq.c_au1300_gpic_settype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }

@GPIC_CFG_IC_LEVEL_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"high\00", align 1
@handle_level_irq = common dso_local global i32* null, align 8
@GPIC_CFG_IC_LEVEL_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@GPIC_CFG_IC_EDGE_RISE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"posedge\00", align 1
@handle_edge_irq = common dso_local global i32* null, align 8
@GPIC_CFG_IC_EDGE_FALL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"negedge\00", align 1
@GPIC_CFG_IC_EDGE_BOTH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"bothedge\00", align 1
@GPIC_CFG_IC_OFF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@au1300_gpic = common dso_local global i32 0, align 4
@ALCHEMY_GPIC_INT_BASE = common dso_local global i64 0, align 8
@GPIC_CFG_IC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @au1300_gpic_settype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1300_gpic_settype(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %28 [
    i32 130, label %10
    i32 129, label %13
    i32 131, label %16
    i32 132, label %19
    i32 133, label %22
    i32 128, label %25
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* @GPIC_CFG_IC_LEVEL_HIGH, align 8
  store i64 %11, i64* %6, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = load i32*, i32** @handle_level_irq, align 8
  store i32* %12, i32** %8, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load i64, i64* @GPIC_CFG_IC_LEVEL_LOW, align 8
  store i64 %14, i64* %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %15 = load i32*, i32** @handle_level_irq, align 8
  store i32* %15, i32** %8, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load i64, i64* @GPIC_CFG_IC_EDGE_RISE, align 8
  store i64 %17, i64* %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %18 = load i32*, i32** @handle_edge_irq, align 8
  store i32* %18, i32** %8, align 8
  br label %31

19:                                               ; preds = %2
  %20 = load i64, i64* @GPIC_CFG_IC_EDGE_FALL, align 8
  store i64 %20, i64* %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %21 = load i32*, i32** @handle_edge_irq, align 8
  store i32* %21, i32** %8, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load i64, i64* @GPIC_CFG_IC_EDGE_BOTH, align 8
  store i64 %23, i64* %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %24 = load i32*, i32** @handle_edge_irq, align 8
  store i32* %24, i32** %8, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load i64, i64* @GPIC_CFG_IC_OFF, align 8
  store i64 %26, i64* %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %27 = load i32*, i32** @handle_level_irq, align 8
  store i32* %27, i32** %8, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %25, %22, %19, %16, %13, %10
  %32 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @irq_set_chip_handler_name_locked(%struct.irq_data* %32, i32* @au1300_gpic, i32* %33, i8* %34)
  %36 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ALCHEMY_GPIC_INT_BASE, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i32, i32* @GPIC_CFG_IC_MASK, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @au1300_gpic_chgcfg(i64 %40, i32 %41, i64 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %31, %28
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @irq_set_chip_handler_name_locked(%struct.irq_data*, i32*, i32*, i8*) #1

declare dso_local i32 @au1300_gpic_chgcfg(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
