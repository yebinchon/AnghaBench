; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_scr_write.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_scr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sata_regs_base = common dso_local global i64** null, align 8
@SATA_LINK_DATA = common dso_local global i32 0, align 4
@SATA_STD_ASYNC_REGS_OFF = common dso_local global i64 0, align 8
@SATA_LINK_WR_ADDR = common dso_local global i32 0, align 4
@MAX_SRC_WRITE_LOOPS = common dso_local global i32 0, align 4
@SATA_LINK_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"scr_write() Timed out of wait for write completion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @scr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scr_write(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64**, i64*** @sata_regs_base, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64*, i64** %9, i64 %11
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* @SATA_LINK_DATA, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  store i64 %8, i64* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 %17, 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @SATA_STD_ASYNC_REGS_OFF, align 8
  %21 = add i64 %19, %20
  %22 = load i64**, i64*** @sata_regs_base, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64*, i64** %22, i64 %24
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* @SATA_LINK_WR_ADDR, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %21, i64* %29, align 8
  %30 = load i32, i32* @MAX_SRC_WRITE_LOOPS, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %46, %3
  %32 = load i64**, i64*** @sata_regs_base, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* @SATA_LINK_CONTROL, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, 1
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %50

44:                                               ; preds = %31
  %45 = call i32 @udelay(i32 10)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %31, label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
