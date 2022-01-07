; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_axg-audio.c_axg_audio_reset_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_axg-audio.c_axg_audio_reset_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_audio_reset_data = type { i64, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axg_audio_reset_data*, i64, i32*, i32*)* @axg_audio_reset_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axg_audio_reset_reg_and_bit(%struct.axg_audio_reset_data* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.axg_audio_reset_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.axg_audio_reset_data* %0, %struct.axg_audio_reset_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.axg_audio_reset_data*, %struct.axg_audio_reset_data** %5, align 8
  %11 = getelementptr inbounds %struct.axg_audio_reset_data, %struct.axg_audio_reset_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @regmap_get_reg_stride(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @BITS_PER_BYTE, align 4
  %17 = mul i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = udiv i64 %14, %18
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %19, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.axg_audio_reset_data*, %struct.axg_audio_reset_data** %5, align 8
  %26 = getelementptr inbounds %struct.axg_audio_reset_data, %struct.axg_audio_reset_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @BITS_PER_BYTE, align 4
  %36 = mul i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = urem i64 %33, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  ret void
}

declare dso_local i32 @regmap_get_reg_stride(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
