; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_stargate2.c_sg2_udc_command.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_stargate2.c_sg2_udc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UP2OCR_HXOE = common dso_local global i32 0, align 4
@UP2OCR_DPPUE = common dso_local global i32 0, align 4
@UP2OCR_DPPUBE = common dso_local global i32 0, align 4
@UP2OCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sg2_udc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg2_udc_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %21 [
    i32 129, label %4
    i32 128, label %12
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @UP2OCR_HXOE, align 4
  %6 = load i32, i32* @UP2OCR_DPPUE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @UP2OCR_DPPUBE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @UP2OCR, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @UP2OCR, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @UP2OCR_HXOE, align 4
  %14 = load i32, i32* @UP2OCR_DPPUE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @UP2OCR_DPPUBE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @UP2OCR, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @UP2OCR, align 4
  br label %21

21:                                               ; preds = %1, %12, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
