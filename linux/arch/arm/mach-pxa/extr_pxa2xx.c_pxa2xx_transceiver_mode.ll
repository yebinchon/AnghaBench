; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa2xx.c_pxa2xx_transceiver_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa2xx.c_pxa2xx_transceiver_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IR_OFF = common dso_local global i32 0, align 4
@pxa2xx_mfp_off = common dso_local global i32 0, align 4
@IR_SIRMODE = common dso_local global i32 0, align 4
@pxa2xx_mfp_sir = common dso_local global i32 0, align 4
@IR_FIRMODE = common dso_local global i32 0, align 4
@pxa2xx_mfp_fir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa2xx_transceiver_mode(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IR_OFF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @pxa2xx_mfp_off, align 4
  %11 = load i32, i32* @pxa2xx_mfp_off, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @pxa2xx_mfp_config(i32 %10, i32 %12)
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IR_SIRMODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @pxa2xx_mfp_sir, align 4
  %21 = load i32, i32* @pxa2xx_mfp_sir, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @pxa2xx_mfp_config(i32 %20, i32 %22)
  br label %37

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IR_FIRMODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @pxa2xx_mfp_fir, align 4
  %31 = load i32, i32* @pxa2xx_mfp_fir, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @pxa2xx_mfp_config(i32 %30, i32 %32)
  br label %36

34:                                               ; preds = %24
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %9
  ret void
}

declare dso_local i32 @pxa2xx_mfp_config(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
