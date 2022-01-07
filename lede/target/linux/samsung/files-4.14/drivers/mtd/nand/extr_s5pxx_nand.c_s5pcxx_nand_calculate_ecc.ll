; ModuleID = '/home/carl/AnghaBench/lede/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.TYPE_2__, %struct.s5p_nand_host* }
%struct.TYPE_2__ = type { i32 }
%struct.s5p_nand_host = type { i64, i64 }

@S5P_NFCONT = common dso_local global i64 0, align 8
@S5P_NFCONT_MECCLOCK = common dso_local global i32 0, align 4
@S5P_NFECCSTAT = common dso_local global i64 0, align 8
@S5P_NFECCPRGECC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*)* @s5pcxx_nand_calculate_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcxx_nand_calculate_ecc(%struct.mtd_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.s5p_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  store %struct.nand_chip* %11, %struct.nand_chip** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %13, align 8
  store %struct.s5p_nand_host* %14, %struct.s5p_nand_host** %8, align 8
  %15 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %8, align 8
  %16 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @S5P_NFCONT, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @S5P_NFCONT_MECCLOCK, align 4
  %21 = call i32 @rwl(i64 %19, i32 0, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %35, %24
  %26 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %8, align 8
  %27 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S5P_NFECCSTAT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = and i32 %31, 33554432
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %8, align 8
  %38 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @S5P_NFECCPRGECC, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @readecc(i64 %41, i32* %42, i32 %46)
  br label %61

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %59, %48
  %50 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %8, align 8
  %51 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S5P_NFECCSTAT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  %56 = and i32 %55, 16777216
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %49

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %36
  ret i32 0
}

declare dso_local i32 @rwl(i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readecc(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
