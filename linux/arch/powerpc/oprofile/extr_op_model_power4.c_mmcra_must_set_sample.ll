; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_power4.c_mmcra_must_set_sample.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_power4.c_mmcra_must_set_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PVR_POWER4 = common dso_local global i32 0, align 4
@PVR_POWER4p = common dso_local global i32 0, align 4
@PVR_970 = common dso_local global i32 0, align 4
@PVR_970FX = common dso_local global i32 0, align 4
@PVR_970MP = common dso_local global i32 0, align 4
@PVR_970GX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mmcra_must_set_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcra_must_set_sample() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PVR_POWER4, align 4
  %3 = call i64 @pvr_version_is(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @PVR_POWER4p, align 4
  %7 = call i64 @pvr_version_is(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @PVR_970, align 4
  %11 = call i64 @pvr_version_is(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @PVR_970FX, align 4
  %15 = call i64 @pvr_version_is(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @PVR_970MP, align 4
  %19 = call i64 @pvr_version_is(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @PVR_970GX, align 4
  %23 = call i64 @pvr_version_is(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %13, %9, %5, %0
  store i32 1, i32* %1, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @pvr_version_is(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
