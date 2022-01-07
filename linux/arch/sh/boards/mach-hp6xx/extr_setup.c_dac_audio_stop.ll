; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-hp6xx/extr_setup.c_dac_audio_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-hp6xx/extr_setup.c_dac_audio_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac_audio_pdata = type { i32 }

@HD64461_GPADR = common dso_local global i32 0, align 4
@HD64461_GPADR_SPEAKER = common dso_local global i32 0, align 4
@PKDR = common dso_local global i32 0, align 4
@PKDR_SPEAKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dac_audio_pdata*)* @dac_audio_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac_audio_stop(%struct.dac_audio_pdata* %0) #0 {
  %2 = alloca %struct.dac_audio_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dac_audio_pdata* %0, %struct.dac_audio_pdata** %2, align 8
  %5 = load i32, i32* @HD64461_GPADR, align 4
  %6 = call i32 @inw(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @HD64461_GPADR_SPEAKER, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @HD64461_GPADR, align 4
  %12 = call i32 @outw(i32 %10, i32 %11)
  %13 = load i32, i32* @PKDR, align 4
  %14 = call i32 @inb(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PKDR_SPEAKER, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PKDR, align 4
  %20 = call i32 @outb(i32 %18, i32 %19)
  %21 = load %struct.dac_audio_pdata*, %struct.dac_audio_pdata** %2, align 8
  %22 = getelementptr inbounds %struct.dac_audio_pdata, %struct.dac_audio_pdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sh_dac_output(i32 0, i32 %23)
  %25 = load %struct.dac_audio_pdata*, %struct.dac_audio_pdata** %2, align 8
  %26 = getelementptr inbounds %struct.dac_audio_pdata, %struct.dac_audio_pdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sh_dac_disable(i32 %27)
  ret void
}

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @sh_dac_output(i32, i32) #1

declare dso_local i32 @sh_dac_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
