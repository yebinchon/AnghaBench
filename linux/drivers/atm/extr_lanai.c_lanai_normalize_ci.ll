; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_normalize_ci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_normalize_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32 }
%struct.atm_vcc = type { i32 }

@EADDRINUSE = common dso_local global i32 0, align 4
@ATM_NOT_RSV_VCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_dev*, %struct.atm_vcc*, i16*, i32*)* @lanai_normalize_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lanai_normalize_ci(%struct.lanai_dev* %0, %struct.atm_vcc* %1, i16* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lanai_dev*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  store %struct.lanai_dev* %0, %struct.lanai_dev** %6, align 8
  store %struct.atm_vcc* %1, %struct.atm_vcc** %7, align 8
  store i16* %2, i16** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i16*, i16** %8, align 8
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 0, label %15
  ]

13:                                               ; preds = %4
  %14 = load i16*, i16** %8, align 8
  store i16 0, i16* %14, align 2
  br label %15

15:                                               ; preds = %4, %13
  br label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EADDRINUSE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %71

19:                                               ; preds = %15
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %48 [
    i32 129, label %22
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* @ATM_NOT_RSV_VCI, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %41, %22
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lanai_dev*, %struct.lanai_dev** %6, align 8
  %29 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.lanai_dev*, %struct.lanai_dev** %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %37 = call i32 @vci_is_ok(%struct.lanai_dev* %33, i32 %35, %struct.atm_vcc* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %71

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load i32, i32* @EADDRINUSE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %71

48:                                               ; preds = %19
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lanai_dev*, %struct.lanai_dev** %6, align 8
  %52 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load %struct.lanai_dev*, %struct.lanai_dev** %6, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %64 = call i32 @vci_is_ok(%struct.lanai_dev* %60, i32 %62, %struct.atm_vcc* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59, %55, %48
  %67 = load i32, i32* @EADDRINUSE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %71

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %66, %45, %39, %16
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @vci_is_ok(%struct.lanai_dev*, i32, %struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
