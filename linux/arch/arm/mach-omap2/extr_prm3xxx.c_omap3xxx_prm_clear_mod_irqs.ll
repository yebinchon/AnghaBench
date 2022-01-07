; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm3xxx.c_omap3xxx_prm_clear_mod_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm3xxx.c_omap3xxx_prm_clear_mod_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP3430ES2_PM_WKST3 = common dso_local global i32 0, align 4
@PM_WKST1 = common dso_local global i32 0, align 4
@OMAP3430ES2_CM_FCLKEN3 = common dso_local global i32 0, align 4
@CM_FCLKEN1 = common dso_local global i32 0, align 4
@CM_ICLKEN3 = common dso_local global i32 0, align 4
@CM_ICLKEN1 = common dso_local global i32 0, align 4
@OMAP3430ES2_PM_MPUGRPSEL3 = common dso_local global i32 0, align 4
@OMAP3430_PM_MPUGRPSEL = common dso_local global i32 0, align 4
@OMAP3430ES2_USBHOST_MOD = common dso_local global i32 0, align 4
@OMAP3430ES2_EN_USBHOST2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @omap3xxx_prm_clear_mod_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3xxx_prm_clear_mod_irqs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @OMAP3430ES2_PM_WKST3, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @PM_WKST1, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @OMAP3430ES2_CM_FCLKEN3, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @CM_FCLKEN1, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @CM_ICLKEN3, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @CM_ICLKEN1, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @OMAP3430ES2_PM_MPUGRPSEL3, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @OMAP3430_PM_MPUGRPSEL, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @omap2_prm_read_mod_reg(i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @omap2_prm_read_mod_reg(i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %111

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @omap2_cm_read_mod_reg(i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @omap2_cm_read_mod_reg(i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %85, %61
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @omap2_cm_set_mod_reg_bits(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32, i32* @OMAP3430ES2_EN_USBHOST2_SHIFT, align 4
  %82 = shl i32 1, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %80, %71
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @omap2_cm_set_mod_reg_bits(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @omap2_prm_write_mod_reg(i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @omap2_prm_read_mod_reg(i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %68

102:                                              ; preds = %68
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @omap2_cm_write_mod_reg(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @omap2_cm_write_mod_reg(i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %102, %46
  %112 = load i32, i32* %15, align 4
  ret i32 %112
}

declare dso_local i32 @omap2_prm_read_mod_reg(i32, i32) #1

declare dso_local i32 @omap2_cm_read_mod_reg(i32, i32) #1

declare dso_local i32 @omap2_cm_set_mod_reg_bits(i32, i32, i32) #1

declare dso_local i32 @omap2_prm_write_mod_reg(i32, i32, i32) #1

declare dso_local i32 @omap2_cm_write_mod_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
