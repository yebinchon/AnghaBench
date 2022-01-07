; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_stats.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"vdma_stats: CONFIG: %08x\0A\00", align 1
@JAZZ_R4030_CONFIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"R4030 translation table base: %08x\0A\00", align 1
@JAZZ_R4030_TRSTBL_BASE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"R4030 translation table limit: %08x\0A\00", align 1
@JAZZ_R4030_TRSTBL_LIM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"vdma_stats: INV_ADDR: %08x\0A\00", align 1
@JAZZ_R4030_INV_ADDR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"vdma_stats: R_FAIL_ADDR: %08x\0A\00", align 1
@JAZZ_R4030_R_FAIL_ADDR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"vdma_stats: M_FAIL_ADDR: %08x\0A\00", align 1
@JAZZ_R4030_M_FAIL_ADDR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"vdma_stats: IRQ_SOURCE: %08x\0A\00", align 1
@JAZZ_R4030_IRQ_SOURCE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"vdma_stats: I386_ERROR: %08x\0A\00", align 1
@JAZZ_R4030_I386_ERROR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"vdma_chnl_modes:   \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%04x \00", align 1
@JAZZ_R4030_CHNL_MODE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"vdma_chnl_enables: \00", align 1
@JAZZ_R4030_CHNL_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdma_stats() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @JAZZ_R4030_CONFIG, align 8
  %3 = call i64 @r4030_read_reg32(i64 %2)
  %4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %3)
  %5 = load i64, i64* @JAZZ_R4030_TRSTBL_BASE, align 8
  %6 = call i64 @r4030_read_reg32(i64 %5)
  %7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %6)
  %8 = load i64, i64* @JAZZ_R4030_TRSTBL_LIM, align 8
  %9 = call i64 @r4030_read_reg32(i64 %8)
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* @JAZZ_R4030_INV_ADDR, align 8
  %12 = call i64 @r4030_read_reg32(i64 %11)
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* @JAZZ_R4030_R_FAIL_ADDR, align 8
  %15 = call i64 @r4030_read_reg32(i64 %14)
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* @JAZZ_R4030_M_FAIL_ADDR, align 8
  %18 = call i64 @r4030_read_reg32(i64 %17)
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* @JAZZ_R4030_IRQ_SOURCE, align 8
  %21 = call i64 @r4030_read_reg32(i64 %20)
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* @JAZZ_R4030_I386_ERROR, align 8
  %24 = call i64 @r4030_read_reg32(i64 %23)
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %24)
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %39, %0
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i64, i64* @JAZZ_R4030_CHNL_MODE, align 8
  %32 = load i32, i32* %1, align 4
  %33 = shl i32 %32, 5
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i64 @r4030_read_reg32(i64 %35)
  %37 = trunc i64 %36 to i32
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %27

42:                                               ; preds = %27
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %57, %42
  %46 = load i32, i32* %1, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %50 = load i32, i32* %1, align 4
  %51 = shl i32 %50, 5
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i64 @r4030_read_reg32(i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %45

60:                                               ; preds = %45
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @r4030_read_reg32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
