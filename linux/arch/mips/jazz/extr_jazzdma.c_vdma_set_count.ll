; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_set_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_set_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdma_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"vdma_set_count: channel %d, count %08x\0A\00", align 1
@JAZZ_R4030_CHNL_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdma_set_count(i32 %0, i32 %1) #0 {
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
  %10 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = load i64, i64* @JAZZ_R4030_CHNL_COUNT, align 8
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 5
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @r4030_write_reg32(i64 %16, i32 %17)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @r4030_write_reg32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
