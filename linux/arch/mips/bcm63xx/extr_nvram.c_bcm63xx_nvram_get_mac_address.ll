; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_nvram.c_bcm63xx_nvram_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_nvram.c_bcm63xx_nvram_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mac_addr_used = common dso_local global i32 0, align 4
@nvram = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"not enough mac addresses\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to fetch mac address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm63xx_nvram_get_mac_address(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %7 = load i32, i32* @mac_addr_used, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nvram, i32 0, i32 0), align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load i64*, i64** %3, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nvram, i32 0, i32 1), align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @memcpy(i64* %15, i32 %16, i32 %17)
  %19 = load i64*, i64** %3, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = getelementptr inbounds i64, i64* %23, i64 -1
  store i64* %24, i64** %4, align 8
  %25 = load i32, i32* @mac_addr_used, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %59, %14
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i64*, i64** %3, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = getelementptr inbounds i64, i64* %34, i64 -1
  store i64* %35, i64** %6, align 8
  br label %36

36:                                               ; preds = %47, %30
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %51

44:                                               ; preds = %36
  %45 = load i64*, i64** %6, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 -1
  store i64* %46, i64** %6, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i64*, i64** %6, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = icmp ne i64* %48, %49
  br i1 %50, label %36, label %51

51:                                               ; preds = %47, %43
  %52 = load i64*, i64** %6, align 8
  %53 = load i64*, i64** %4, align 8
  %54 = icmp eq i64* %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %51
  br label %26

60:                                               ; preds = %26
  %61 = load i32, i32* @mac_addr_used, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @mac_addr_used, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %55, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
