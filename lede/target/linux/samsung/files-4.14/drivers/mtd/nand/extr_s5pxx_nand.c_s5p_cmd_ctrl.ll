; ModuleID = '/home/carl/AnghaBench/lede/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5p_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5p_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.s5p_nand_host* }
%struct.s5p_nand_host = type { i64 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@S5P_NFCMD = common dso_local global i64 0, align 8
@S5P_NFADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @s5p_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.s5p_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  store %struct.nand_chip* %11, %struct.nand_chip** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %13, align 8
  store %struct.s5p_nand_host* %14, %struct.s5p_nand_host** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NAND_CMD_NONE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %40

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NAND_CLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %8, align 8
  %27 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S5P_NFCMD, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writeb(i32 %25, i64 %30)
  br label %40

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %8, align 8
  %35 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @S5P_NFADDR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writeb(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %18, %32, %24
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
