; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_mioa701.c_mioa701_sys_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_mioa701.c_mioa701_sys_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESUME_VECTOR_ADDR = common dso_local global i32 0, align 4
@RESUME_ENABLE_ADDR = common dso_local global i32 0, align 4
@RESUME_BT_ADDR = common dso_local global i32 0, align 4
@RESUME_UNKNOWN_ADDR = common dso_local global i32 0, align 4
@GPIO83_BT_ON = common dso_local global i32 0, align 4
@MFP_LPM_DRIVE_HIGH = common dso_local global i32 0, align 4
@MFP_LPM_DRIVE_LOW = common dso_local global i32 0, align 4
@BOOTSTRAP_WORDS = common dso_local global i32 0, align 4
@save_buffer = common dso_local global i32* null, align 8
@RESUME_ENABLE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mioa701_sys_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mioa701_sys_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @RESUME_VECTOR_ADDR, align 4
  %8 = call i32* @phys_to_virt(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @RESUME_ENABLE_ADDR, align 4
  %10 = call i32* @phys_to_virt(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* @RESUME_BT_ADDR, align 4
  %12 = call i32* @phys_to_virt(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @RESUME_UNKNOWN_ADDR, align 4
  %14 = call i32* @phys_to_virt(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* @GPIO83_BT_ON, align 4
  %16 = call i32 @gpio_get_value(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @GPIO83_BT_ON, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %0
  %25 = load i32, i32* @MFP_LPM_DRIVE_HIGH, align 4
  br label %28

26:                                               ; preds = %0
  %27 = load i32, i32* @MFP_LPM_DRIVE_LOW, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @pxa2xx_mfp_set_lpm(i32 %21, i32 %29)
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %45, %28
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @BOOTSTRAP_WORDS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** @save_buffer, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** @save_buffer, align 8
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @save_buffer, align 8
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @save_buffer, align 8
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @RESUME_ENABLE_VAL, align 4
  %71 = load i32*, i32** %4, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %74 = call i32 (...) @install_bootstrap()
  ret i32 0
}

declare dso_local i32* @phys_to_virt(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @pxa2xx_mfp_set_lpm(i32, i32) #1

declare dso_local i32 @install_bootstrap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
