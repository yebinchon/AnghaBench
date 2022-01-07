; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-pcm043.c_pcm043_ac97_warm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-pcm043.c_pcm043_ac97_warm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@MX35_PAD_STXFS4__GPIO2_31 = common dso_local global i32 0, align 4
@MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS = common dso_local global i32 0, align 4
@AC97_GPIO_TXFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SSI\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get GPIO_TXFS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @pcm043_ac97_warm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm043_ac97_warm_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %6 = load i32, i32* @MX35_PAD_STXFS4__GPIO2_31, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @AC97_GPIO_TXFS, align 4
  %9 = call i32 @gpio_request(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mxc_iomux_v3_setup_pad(i32 %16)
  %18 = load i32, i32* @AC97_GPIO_TXFS, align 4
  %19 = call i32 @gpio_direction_output(i32 %18, i32 1)
  %20 = call i32 @udelay(i32 2)
  %21 = load i32, i32* @AC97_GPIO_TXFS, align 4
  %22 = call i32 @gpio_set_value(i32 %21, i32 0)
  %23 = load i32, i32* @AC97_GPIO_TXFS, align 4
  %24 = call i32 @gpio_free(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mxc_iomux_v3_setup_pad(i32 %25)
  br label %27

27:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mxc_iomux_v3_setup_pad(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
