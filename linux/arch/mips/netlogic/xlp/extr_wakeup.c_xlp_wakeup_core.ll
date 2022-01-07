; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_wakeup.c_xlp_wakeup_core.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_wakeup.c_xlp_wakeup_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_CORE_DFS_DIS_CTRL = common dso_local global i32 0, align 4
@SYS_9XX_CPU_NONCOHERENT_MODE = common dso_local global i32 0, align 4
@SYS_9XX_CPU_RESET = common dso_local global i32 0, align 4
@SYS_CPU_RESET = common dso_local global i32 0, align 4
@SYS_CPU_NONCOHERENT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @xlp_wakeup_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_wakeup_core(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @cpu_is_xlpii()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SYS_CORE_DFS_DIS_CTRL, align 4
  %19 = call i32 @nlm_read_sys_reg(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SYS_CORE_DFS_DIS_CTRL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @nlm_write_sys_reg(i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %16, %3
  %29 = call i64 (...) @cpu_is_xlp9xx()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SYS_9XX_CPU_NONCOHERENT_MODE, align 4
  %34 = call i32 @nlm_read_sys_reg(i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SYS_9XX_CPU_NONCOHERENT_MODE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @nlm_write_sys_reg(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %28
  %44 = call i64 (...) @cpu_is_xlp9xx()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SYS_9XX_CPU_RESET, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @SYS_CPU_RESET, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @nlm_read_sys_reg(i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @nlm_write_sys_reg(i32 %59, i32 %60, i32 %61)
  %63 = call i64 (...) @cpu_is_xlp9xx()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %86

66:                                               ; preds = %50
  store i32 100000, i32* %10, align 4
  br label %67

67:                                               ; preds = %80, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SYS_CPU_NONCOHERENT_MODE, align 4
  %70 = call i32 @nlm_read_sys_reg(i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %10, align 4
  %79 = icmp sgt i32 %78, 0
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i1 [ false, %71 ], [ %79, %76 ]
  br i1 %81, label %67, label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %65
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @cpu_is_xlpii(...) #1

declare dso_local i32 @nlm_read_sys_reg(i32, i32) #1

declare dso_local i32 @nlm_write_sys_reg(i32, i32, i32) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
