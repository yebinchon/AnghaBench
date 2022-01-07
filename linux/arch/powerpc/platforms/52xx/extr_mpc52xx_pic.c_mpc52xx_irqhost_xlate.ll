; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_pic.c_mpc52xx_irqhost_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_pic.c_mpc52xx_irqhost_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@MPC52xx_IRQ_L1_OFFSET = common dso_local global i32 0, align 4
@MPC52xx_IRQ_L1_MASK = common dso_local global i32 0, align 4
@MPC52xx_IRQ_L2_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@mpc52xx_map_senses = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"return %x, l1=%d, l2=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i64*, i32, i32*, i32*)* @mpc52xx_irqhost_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_irqhost_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i64* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %65

21:                                               ; preds = %6
  %22 = load i64*, i64** %10, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i64*, i64** %10, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i64*, i64** %10, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 3
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @MPC52xx_IRQ_L1_OFFSET, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @MPC52xx_IRQ_L1_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @MPC52xx_IRQ_L2_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %17, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %48 = load i32*, i32** %13, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @mpc52xx_is_extirq(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %21
  %54 = load i32*, i32** @mpc52xx_map_senses, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %21
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %20
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i64 @mpc52xx_is_extirq(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
