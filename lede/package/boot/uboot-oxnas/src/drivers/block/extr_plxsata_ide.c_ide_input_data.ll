; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_ide_input_data.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_ide_input_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disk_present = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"Timed out of wait for SATA device %d to have BUSY clear\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"oxnas_sata_output_data() Wait for ATA no-error timed-out\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Timed out of wait for DMA channel for SATA device %d to have in-progress clear\0A\00", align 1
@ATA_SECTORWORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_input_data(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @disk_present, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %52

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_select(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 2
  %20 = call i32 @dma_start_read(i32* %17, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @wait_not_busy(i32 %21, i32 30)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %14
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @wait_no_error(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @wait_dma_not_busy(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ATA_SECTORWORDS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = getelementptr inbounds i32, i32* %49, i64 -2
  %51 = call i32 @sata_bug_6320_workaround(i32 %45, i32* %50)
  br label %52

52:                                               ; preds = %13, %44, %40
  ret void
}

declare dso_local i32 @device_select(i32) #1

declare dso_local i32 @dma_start_read(i32*, i32) #1

declare dso_local i64 @wait_not_busy(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @wait_no_error(i32) #1

declare dso_local i32 @wait_dma_not_busy(i32) #1

declare dso_local i32 @sata_bug_6320_workaround(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
