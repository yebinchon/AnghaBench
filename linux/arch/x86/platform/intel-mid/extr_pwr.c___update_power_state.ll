; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c___update_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c___update_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr = type { i32 }

@CMD_SET_CFG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mid_pwr*, i32, i32, i32)* @__update_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__update_power_state(%struct.mid_pwr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mid_pwr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mid_pwr* %0, %struct.mid_pwr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mid_pwr*, %struct.mid_pwr** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mid_pwr_get_state(%struct.mid_pwr* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %16, %17
  %19 = and i32 %18, 3
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

24:                                               ; preds = %4
  %25 = load %struct.mid_pwr*, %struct.mid_pwr** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 3, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = call i32 @mid_pwr_set_state(%struct.mid_pwr* %25, i32 %26, i32 %35)
  %37 = load %struct.mid_pwr*, %struct.mid_pwr** %6, align 8
  %38 = load i32, i32* @CMD_SET_CFG, align 4
  %39 = call i32 @mid_pwr_wait_for_cmd(%struct.mid_pwr* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %59

44:                                               ; preds = %24
  %45 = load %struct.mid_pwr*, %struct.mid_pwr** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mid_pwr_get_state(%struct.mid_pwr* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %48, %49
  %51 = and i32 %50, 3
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55, %42, %23
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @mid_pwr_get_state(%struct.mid_pwr*, i32) #1

declare dso_local i32 @mid_pwr_set_state(%struct.mid_pwr*, i32, i32) #1

declare dso_local i32 @mid_pwr_wait_for_cmd(%struct.mid_pwr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
