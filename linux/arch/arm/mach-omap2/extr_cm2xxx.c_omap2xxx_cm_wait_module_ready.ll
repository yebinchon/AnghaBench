; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c_omap2xxx_cm_wait_module_ready.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c_omap2xxx_cm_wait_module_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@omap2xxx_cm_idlest_offs = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_MODULE_READY_TIME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2xxx_cm_wait_module_ready(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32*, i32** @omap2xxx_cm_idlest_offs, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %54

24:                                               ; preds = %16
  %25 = load i32*, i32** @omap2xxx_cm_idlest_offs, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @omap2_cm_read_mod_reg(i32 %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* @MAX_MODULE_READY_TIME, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @omap_test_timeout(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MAX_MODULE_READY_TIME, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %24
  br label %52

49:                                               ; preds = %24
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %5, align 4
  ret i32 %55
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
