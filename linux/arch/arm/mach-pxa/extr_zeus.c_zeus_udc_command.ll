; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_zeus.c_zeus_udc_command.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_zeus.c_zeus_udc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"zeus: disconnecting USB client\0A\00", align 1
@UP2OCR_HXOE = common dso_local global i32 0, align 4
@UP2OCR_HXS = common dso_local global i32 0, align 4
@UP2OCR_DMPDE = common dso_local global i32 0, align 4
@UP2OCR_DPPDE = common dso_local global i32 0, align 4
@UP2OCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"zeus: connecting USB client\0A\00", align 1
@UP2OCR_DPPUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @zeus_udc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zeus_udc_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %18 [
    i32 128, label %4
    i32 129, label %13
  ]

4:                                                ; preds = %1
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @UP2OCR_HXOE, align 4
  %7 = load i32, i32* @UP2OCR_HXS, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @UP2OCR_DMPDE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @UP2OCR_DPPDE, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* @UP2OCR, align 4
  br label %18

13:                                               ; preds = %1
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @UP2OCR_HXOE, align 4
  %16 = load i32, i32* @UP2OCR_DPPUE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* @UP2OCR, align 4
  br label %18

18:                                               ; preds = %1, %13, %4
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
