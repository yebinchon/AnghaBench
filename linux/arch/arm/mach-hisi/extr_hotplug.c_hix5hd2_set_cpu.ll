; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_hix5hd2_set_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_hix5hd2_set_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrl_base = common dso_local global i64 0, align 8
@HIX5HD2_PERI_PMC0 = common dso_local global i64 0, align 8
@PMC0_CPU1_WAIT_MTCOMS_ACK = common dso_local global i32 0, align 4
@PMC0_CPU1_POWERDOWN = common dso_local global i32 0, align 4
@PMC0_CPU1_PMC_ENABLE = common dso_local global i32 0, align 4
@HIX5HD2_PERI_CRG20 = common dso_local global i64 0, align 8
@CRG20_CPU1_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hix5hd2_set_cpu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* @ctrl_base, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = call i32 (...) @hix5hd2_hotplug_init()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 (...) @BUG()
  br label %13

13:                                               ; preds = %11, %8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i64, i64* @ctrl_base, align 8
  %19 = load i64, i64* @HIX5HD2_PERI_PMC0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @PMC0_CPU1_WAIT_MTCOMS_ACK, align 4
  %23 = load i32, i32* @PMC0_CPU1_POWERDOWN, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @PMC0_CPU1_PMC_ENABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* @ctrl_base, align 8
  %33 = load i64, i64* @HIX5HD2_PERI_PMC0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 %31, i64 %34)
  %36 = load i64, i64* @ctrl_base, align 8
  %37 = load i64, i64* @HIX5HD2_PERI_CRG20, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl_relaxed(i64 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @CRG20_CPU1_RESET, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* @ctrl_base, align 8
  %46 = load i64, i64* @HIX5HD2_PERI_CRG20, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 %44, i64 %47)
  br label %80

49:                                               ; preds = %14
  %50 = load i64, i64* @ctrl_base, align 8
  %51 = load i64, i64* @HIX5HD2_PERI_PMC0, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl_relaxed(i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @PMC0_CPU1_PMC_ENABLE, align 4
  %55 = load i32, i32* @PMC0_CPU1_POWERDOWN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @PMC0_CPU1_WAIT_MTCOMS_ACK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i64, i64* @ctrl_base, align 8
  %65 = load i64, i64* @HIX5HD2_PERI_PMC0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 %63, i64 %66)
  %68 = load i64, i64* @ctrl_base, align 8
  %69 = load i64, i64* @HIX5HD2_PERI_CRG20, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl_relaxed(i64 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @CRG20_CPU1_RESET, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* @ctrl_base, align 8
  %77 = load i64, i64* @HIX5HD2_PERI_CRG20, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %49, %17
  ret void
}

declare dso_local i32 @hix5hd2_hotplug_init(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
