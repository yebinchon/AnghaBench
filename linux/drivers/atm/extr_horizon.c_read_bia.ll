; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_read_bia.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_read_bia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONTROL_0_REG = common dso_local global i32 0, align 4
@SEEPROM_CS = common dso_local global i32 0, align 4
@SEEPROM_SK = common dso_local global i32 0, align 4
@SEEPROM_DI = common dso_local global i32 0, align 4
@SEEPROM_DO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @read_bia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_bia(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @CONTROL_0_REG, align 4
  %12 = call i32 @rd_regl(i32* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  store i32 6, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %13 = load i32, i32* @SEEPROM_CS, align 4
  %14 = load i32, i32* @SEEPROM_SK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SEEPROM_DI, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @WRITE_IT_WAIT(i32* %21, i32 %22)
  %24 = load i32, i32* @SEEPROM_CS, align 4
  %25 = load i32, i32* @SEEPROM_DI, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @CLOCK_IT(i32* %29, i32 %30)
  %32 = load i32, i32* @SEEPROM_DI, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @CLOCK_IT(i32* %35, i32 %36)
  %38 = load i32, i32* @SEEPROM_DI, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @CLOCK_IT(i32* %42, i32 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %67, %2
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %46, 6
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @SEEPROM_DI, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %61

56:                                               ; preds = %48
  %57 = load i32, i32* @SEEPROM_DI, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @CLOCK_IT(i32* %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %45

70:                                               ; preds = %45
  %71 = load i32, i32* @SEEPROM_DI, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %94, %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp ult i32 %76, 16
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @CLOCK_IT(i32* %81, i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @CONTROL_0_REG, align 4
  %86 = call i32 @rd_regl(i32* %84, i32 %85)
  %87 = load i32, i32* @SEEPROM_DO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, 32768
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %78
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load i32, i32* @SEEPROM_SK, align 4
  %99 = load i32, i32* @SEEPROM_CS, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @WRITE_IT_WAIT(i32* %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @rd_regl(i32*, i32) #1

declare dso_local i32 @WRITE_IT_WAIT(i32*, i32) #1

declare dso_local i32 @CLOCK_IT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
