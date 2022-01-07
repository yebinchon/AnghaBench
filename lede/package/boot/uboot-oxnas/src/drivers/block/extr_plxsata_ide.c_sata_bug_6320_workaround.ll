; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_sata_bug_6320_workaround.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_sata_bug_6320_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SATA_DM_DBG1 = common dso_local global i64 0, align 8
@SATA_CORE_PORT1_DATA_DIR = common dso_local global i64 0, align 8
@SATA_CORE_PORT0_DATA_DIR = common dso_local global i64 0, align 8
@SATA_DATACOUNT_PORT1 = common dso_local global i64 0, align 8
@SATA_DATACOUNT_PORT0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"SATA read fixup, only transfered %d quads, sector_quads_remaining %d, port %d\0A\00", align 1
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@SATA_DATA_MUX_RAM1 = common dso_local global i64 0, align 8
@SATA_DATA_MUX_RAM0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @sata_bug_6320_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_bug_6320_workaround(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i64, i64* @SATA_DM_DBG1, align 8
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @SATA_CORE_PORT1_DATA_DIR, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @SATA_CORE_PORT0_DATA_DIR, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = and i64 %13, %21
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* @SATA_DATACOUNT_PORT1, align 8
  br label %32

30:                                               ; preds = %20
  %31 = load i64, i64* @SATA_DATACOUNT_PORT0, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  %34 = inttoptr i64 %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 127
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 128, %42
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @ATA_SECT_SIZE, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @SATA_DATA_MUX_RAM1, align 8
  br label %64

62:                                               ; preds = %52
  %63 = load i64, i64* @SATA_DATA_MUX_RAM0, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 8
  %69 = srem i32 %68, 2048
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %66, i64 %70
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %64, %49, %45
  ret void
}

declare dso_local i32 @debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
