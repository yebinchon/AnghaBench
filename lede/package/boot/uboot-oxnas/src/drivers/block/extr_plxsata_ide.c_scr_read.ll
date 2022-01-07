; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_scr_read.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_scr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SATA_STD_ASYNC_REGS_OFF = common dso_local global i64 0, align 8
@sata_regs_base = common dso_local global i64** null, align 8
@SATA_LINK_RD_ADDR = common dso_local global i32 0, align 4
@MAX_SRC_READ_LOOPS = common dso_local global i32 0, align 4
@SATA_LINK_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"scr_read() Timed out of wait for read completion\0A\00", align 1
@SATA_LINK_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @scr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scr_read(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul i32 %6, 4
  %8 = zext i32 %7 to i64
  %9 = load i64, i64* @SATA_STD_ASYNC_REGS_OFF, align 8
  %10 = add i64 %8, %9
  %11 = load i64**, i64*** @sata_regs_base, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64*, i64** %11, i64 %13
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* @SATA_LINK_RD_ADDR, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 %10, i64* %18, align 8
  %19 = load i32, i32* @MAX_SRC_READ_LOOPS, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %35, %2
  %21 = load i64**, i64*** @sata_regs_base, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* @SATA_LINK_CONTROL, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, 1
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %39

33:                                               ; preds = %20
  %34 = call i32 @udelay(i32 10)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %20, label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i64**, i64*** @sata_regs_base, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64*, i64** %45, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* @SATA_LINK_DATA, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  ret i64 %53
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
