; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c___rb4xx_cpld_change_cfg.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c___rb4xx_cpld_change_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb4xx_cpld = type { i32 }

@CPLD_CFG_nLED5 = common dso_local global i32 0, align 4
@CPLD_CMD_LED5_ON = common dso_local global i32 0, align 4
@CPLD_CMD_LED5_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb4xx_cpld*, i32, i32)* @__rb4xx_cpld_change_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rb4xx_cpld_change_cfg(%struct.rb4xx_cpld* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rb4xx_cpld*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rb4xx_cpld* %0, %struct.rb4xx_cpld** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %5, align 8
  %11 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %5, align 8
  %20 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = xor i32 %21, %22
  %24 = and i32 %23, 255
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @rb4xx_cpld_write_cfg(%struct.rb4xx_cpld* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %5, align 8
  %37 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, i32* @CPLD_CFG_nLED5, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @CPLD_CMD_LED5_ON, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @CPLD_CMD_LED5_OFF, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @rb4xx_cpld_write_cmd(%struct.rb4xx_cpld* %45, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %5, align 8
  %63 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %57, %32
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @rb4xx_cpld_write_cfg(%struct.rb4xx_cpld*, i32) #1

declare dso_local i32 @rb4xx_cpld_write_cmd(%struct.rb4xx_cpld*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
