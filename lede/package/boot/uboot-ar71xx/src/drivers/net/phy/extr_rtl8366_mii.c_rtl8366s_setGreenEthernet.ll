; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setGreenEthernet.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setGreenEthernet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtl8366s_setGreenEthernet.greenSettings = private unnamed_addr constant [6 x [2 x i32]] [[2 x i32] [i32 48731, i32 13568], [2 x i32] [i32 48732, i32 47477], [2 x i32] [i32 48733, i32 47545], [2 x i32] [i32 48759, i32 42240], [2 x i32] [i32 48760, i32 23160], [2 x i32] [i32 48761, i32 25720]], align 16
@RTL8366S_MODEL_ID_REG = common dso_local global i32 0, align 4
@RTL8366S_PHY_ACCESS_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366S_PHY_CTRL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"rtl8366s_initChip: unsupported chip found!\0A\00", align 1
@RTL8366S_PHY_NO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366s_setGreenEthernet(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x [2 x i32]], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = bitcast [6 x [2 x i32]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x [2 x i32]]* @__const.rtl8366s_setGreenEthernet.greenSettings to i8*), i64 48, i1 false)
  %11 = load i32, i32* @RTL8366S_MODEL_ID_REG, align 4
  %12 = call i64 @rtl8366_readRegister(i32 %11, i32* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %63 [
    i32 0, label %17
    i32 128, label %46
  ]

17:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i32, i32* @RTL8366S_PHY_ACCESS_CTRL_REG, align 4
  %23 = load i32, i32* @RTL8366S_PHY_CTRL_WRITE, align 4
  %24 = call i32 @rtl8366_writeRegister(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %87

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %9, i64 0, i64 %29
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %9, i64 0, i64 %34
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rtl8366_writeRegister(i32 %32, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %87

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %18

45:                                               ; preds = %18
  br label %65

46:                                               ; preds = %15
  %47 = load i32, i32* @RTL8366S_PHY_ACCESS_CTRL_REG, align 4
  %48 = load i32, i32* @RTL8366S_PHY_CTRL_WRITE, align 4
  %49 = call i32 @rtl8366_writeRegister(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %87

52:                                               ; preds = %46
  %53 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %9, i64 0, i64 0
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %9, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtl8366_writeRegister(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %87

62:                                               ; preds = %52
  br label %65

63:                                               ; preds = %15
  %64 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %87

65:                                               ; preds = %62, %45
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @rtl8366s_setGreenFeature(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %87

71:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %83, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @RTL8366S_PHY_NO_MAX, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @rtl8366s_setPowerSaving(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 -1, i32* %3, align 4
  br label %87

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %72

86:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %81, %70, %63, %61, %51, %40, %26, %14
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rtl8366_readRegister(i32, i32*) #2

declare dso_local i32 @rtl8366_writeRegister(i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i64 @rtl8366s_setGreenFeature(i32, i32) #2

declare dso_local i64 @rtl8366s_setPowerSaving(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
