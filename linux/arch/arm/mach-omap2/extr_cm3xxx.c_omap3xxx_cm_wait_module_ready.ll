; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_cm_wait_module_ready.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_cm_wait_module_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@omap3xxx_cm_idlest_offs = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_MODULE_READY_TIME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @omap3xxx_cm_wait_module_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3xxx_cm_wait_module_ready(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** @omap3xxx_cm_idlest_offs, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %16
  %25 = load i32*, i32** @omap3xxx_cm_idlest_offs, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %13, align 4
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @omap2_cm_read_mod_reg(i32 %33, i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @MAX_MODULE_READY_TIME, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @omap_test_timeout(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @MAX_MODULE_READY_TIME, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  br label %51

48:                                               ; preds = %24
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 0, %47 ], [ %50, %48 ]
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @omap_test_timeout(i32, i32, i32) #1

declare dso_local i32 @omap2_cm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
