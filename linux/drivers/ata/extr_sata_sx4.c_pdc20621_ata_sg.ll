; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc20621_ata_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc20621_ata_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDC_DIMM_APKT_PRD = common dso_local global i32 0, align 4
@PDC_20621_DIMM_BASE = common dso_local global i32 0, align 4
@PDC_20621_DIMM_DATA = common dso_local global i32 0, align 4
@PDC_DIMM_DATA_STEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ATA sg addr 0x%x, %d\0A\00", align 1
@ATA_PRD_EOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ATA PSG @ %x == (0x%x, 0x%x)\0A\00", align 1
@PDC_DIMM_WINDOW_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @pdc20621_ata_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc20621_ata_sg(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @PDC_DIMM_APKT_PRD, align 4
  %11 = ashr i32 %10, 2
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32, i32* @PDC_20621_DIMM_BASE, align 4
  %14 = load i32, i32* @PDC_20621_DIMM_DATA, align 4
  %15 = add i32 %13, %14
  %16 = load i32, i32* @PDC_DIMM_DATA_STEP, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 %16, %17
  %19 = add i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, i32, i32, ...) @VPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ATA_PRD_EOT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* @PDC_20621_DIMM_BASE, align 4
  %39 = load i32, i32* @PDC_DIMM_WINDOW_STEP, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %39, %40
  %42 = add i32 %38, %41
  %43 = load i32, i32* @PDC_DIMM_APKT_PRD, align 4
  %44 = add i32 %42, %43
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, i32, ...) @VPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49, i32 %55)
  ret void
}

declare dso_local i32 @VPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
