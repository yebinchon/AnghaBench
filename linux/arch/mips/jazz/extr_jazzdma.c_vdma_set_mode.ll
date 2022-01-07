; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdma_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"vdma_set_mode: channel %d, mode 0x%x\0A\00", align 1
@JAZZ_R4030_CHNL_MODE = common dso_local global i32 0, align 4
@R4030_MODE_INTR_EN = common dso_local global i32 0, align 4
@R4030_MODE_WIDTH_16 = common dso_local global i32 0, align 4
@R4030_MODE_ATIME_80 = common dso_local global i32 0, align 4
@R4030_MODE_WIDTH_8 = common dso_local global i32 0, align 4
@R4030_MODE_ATIME_120 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VDMA: Audio DMA not supported yet.\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"VDMA: vdma_set_mode() called with unsupported channel %d!\0A\00", align 1
@JAZZ_R4030_CHNL_ENABLE = common dso_local global i32 0, align 4
@R4030_CHNL_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"VDMA: vdma_set_mode() called with unknown dma mode 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdma_set_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @vdma_debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 129, label %24
    i32 131, label %35
    i32 130, label %35
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @JAZZ_R4030_CHNL_MODE, align 4
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 %15, 5
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* @R4030_MODE_INTR_EN, align 4
  %19 = load i32, i32* @R4030_MODE_WIDTH_16, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @R4030_MODE_ATIME_80, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @r4030_write_reg32(i32 %17, i32 %22)
  br label %40

24:                                               ; preds = %11
  %25 = load i32, i32* @JAZZ_R4030_CHNL_MODE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 5
  %28 = add nsw i32 %25, %27
  %29 = load i32, i32* @R4030_MODE_INTR_EN, align 4
  %30 = load i32, i32* @R4030_MODE_WIDTH_8, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @R4030_MODE_ATIME_120, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @r4030_write_reg32(i32 %28, i32 %33)
  br label %40

35:                                               ; preds = %11, %11
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %40

37:                                               ; preds = %11
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %35, %24, %13
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %69 [
    i32 133, label %42
    i32 132, label %56
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @JAZZ_R4030_CHNL_ENABLE, align 4
  %44 = load i32, i32* %3, align 4
  %45 = shl i32 %44, 5
  %46 = add nsw i32 %43, %45
  %47 = load i32, i32* @JAZZ_R4030_CHNL_ENABLE, align 4
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 %48, 5
  %50 = add nsw i32 %47, %49
  %51 = call i32 @r4030_read_reg32(i32 %50)
  %52 = load i32, i32* @R4030_CHNL_WRITE, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @r4030_write_reg32(i32 %46, i32 %54)
  br label %72

56:                                               ; preds = %40
  %57 = load i32, i32* @JAZZ_R4030_CHNL_ENABLE, align 4
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 %58, 5
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* @JAZZ_R4030_CHNL_ENABLE, align 4
  %62 = load i32, i32* %3, align 4
  %63 = shl i32 %62, 5
  %64 = add nsw i32 %61, %63
  %65 = call i32 @r4030_read_reg32(i32 %64)
  %66 = load i32, i32* @R4030_CHNL_WRITE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @r4030_write_reg32(i32 %60, i32 %67)
  br label %72

69:                                               ; preds = %40
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %56, %42
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @r4030_write_reg32(i32, i32) #1

declare dso_local i32 @r4030_read_reg32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
