; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_do_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_do_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_gpt_priv = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@MPC52xx_GPT_MODE_MS_MASK = common dso_local global i32 0, align 4
@MPC52xx_GPT_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@MPC52xx_GPT_MODE_MS_GPIO = common dso_local global i32 0, align 4
@MPC52xx_GPT_MODE_COUNTER_ENABLE = common dso_local global i32 0, align 4
@MPC52xx_GPT_MODE_IRQ_EN = common dso_local global i32 0, align 4
@MPC52xx_GPT_MODE_WDT_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"calculation error; prescale:%x clocks:%llx\0A\00", align 1
@MPC52xx_GPT_IS_WDT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc52xx_gpt_priv*, i32, i32, i32)* @mpc52xx_gpt_do_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_gpt_do_start(%struct.mpc52xx_gpt_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpc52xx_gpt_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.mpc52xx_gpt_priv* %0, %struct.mpc52xx_gpt_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MPC52xx_GPT_MODE_MS_MASK, align 4
  %16 = load i32, i32* @MPC52xx_GPT_MODE_CONTINUOUS, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @MPC52xx_GPT_MODE_MS_GPIO, align 4
  %19 = load i32, i32* @MPC52xx_GPT_MODE_COUNTER_ENABLE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* @MPC52xx_GPT_MODE_IRQ_EN, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @MPC52xx_GPT_MODE_WDT_EN, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %38

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @MPC52xx_GPT_MODE_CONTINUOUS, align 4
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %39, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @do_div(i32 %45, i32 1000000000)
  %47 = load i32, i32* %12, align 4
  %48 = icmp ugt i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %116

52:                                               ; preds = %38
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 16
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @do_div(i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %59, 65535
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %116

67:                                               ; preds = %52
  %68 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %69 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %68, i32 0, i32 1
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @raw_spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @MPC52xx_GPT_IS_WDT, align 4
  %76 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %77 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %95

80:                                               ; preds = %67
  %81 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %82 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MPC52xx_GPT_IS_WDT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %89 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %88, i32 0, i32 1
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @raw_spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %116

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %97 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 %100, 16
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @out_be32(i32* %99, i32 %103)
  %105 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %106 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @clrsetbits_be32(i32* %108, i32 %109, i32 %110)
  %112 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %6, align 8
  %113 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %112, i32 0, i32 1
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @raw_spin_unlock_irqrestore(i32* %113, i64 %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %95, %87, %61, %49
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @clrsetbits_be32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
