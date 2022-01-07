; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_type_to_vecpri.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_type_to_vecpri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@VECPRI_SENSE_EDGE = common dso_local global i32 0, align 4
@VECPRI_POLARITY_POSITIVE = common dso_local global i32 0, align 4
@VECPRI_POLARITY_NEGATIVE = common dso_local global i32 0, align 4
@VECPRI_SENSE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ehv_pic_type_to_vecpri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehv_pic_type_to_vecpri(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %26 [
    i32 130, label %7
    i32 131, label %13
    i32 132, label %13
    i32 129, label %19
    i32 128, label %25
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @VECPRI_SENSE_EDGE, align 4
  %9 = call i32 @EHV_PIC_INFO(i32 %8)
  %10 = load i32, i32* @VECPRI_POLARITY_POSITIVE, align 4
  %11 = call i32 @EHV_PIC_INFO(i32 %10)
  %12 = or i32 %9, %11
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @VECPRI_SENSE_EDGE, align 4
  %15 = call i32 @EHV_PIC_INFO(i32 %14)
  %16 = load i32, i32* @VECPRI_POLARITY_NEGATIVE, align 4
  %17 = call i32 @EHV_PIC_INFO(i32 %16)
  %18 = or i32 %15, %17
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @VECPRI_SENSE_LEVEL, align 4
  %21 = call i32 @EHV_PIC_INFO(i32 %20)
  %22 = load i32, i32* @VECPRI_POLARITY_POSITIVE, align 4
  %23 = call i32 @EHV_PIC_INFO(i32 %22)
  %24 = or i32 %21, %23
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %1, %25
  %27 = load i32, i32* @VECPRI_SENSE_LEVEL, align 4
  %28 = call i32 @EHV_PIC_INFO(i32 %27)
  %29 = load i32, i32* @VECPRI_POLARITY_NEGATIVE, align 4
  %30 = call i32 @EHV_PIC_INFO(i32 %29)
  %31 = or i32 %28, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %19, %13, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @EHV_PIC_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
