; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___gate_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___gate_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*)* @__gate_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gate_commit(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_data*, align 8
  %5 = alloca %struct.bcm_clk_gate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %4, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %10 = call i32 @gate_exists(%struct.bcm_clk_gate* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %16 = call i32 @gate_is_sw_controllable(%struct.bcm_clk_gate* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %21 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %22 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__ccu_read(%struct.ccu_data* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %26 = call i64 @gate_is_hw_controllable(%struct.bcm_clk_gate* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %30 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %34 = call i64 @gate_is_sw_managed(%struct.bcm_clk_gate* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %48 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %52 = call i64 @gate_is_sw_managed(%struct.bcm_clk_gate* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %56 = call i32 @gate_is_enabled(%struct.bcm_clk_gate* %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %60 = call i32 @gate_is_no_disable(%struct.bcm_clk_gate* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %71

66:                                               ; preds = %58, %54, %46
  %67 = load i32, i32* %7, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %73 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %74 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @__ccu_write(%struct.ccu_data* %72, i32 %75, i32 %76)
  %78 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %79 = call i64 @gate_is_sw_managed(%struct.bcm_clk_gate* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %92

82:                                               ; preds = %71
  %83 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %84 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %85 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %88 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @__ccu_wait_bit(%struct.ccu_data* %83, i32 %86, i32 %89, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %82, %81, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gate_exists(%struct.bcm_clk_gate*) #1

declare dso_local i32 @gate_is_sw_controllable(%struct.bcm_clk_gate*) #1

declare dso_local i32 @__ccu_read(%struct.ccu_data*, i32) #1

declare dso_local i64 @gate_is_hw_controllable(%struct.bcm_clk_gate*) #1

declare dso_local i64 @gate_is_sw_managed(%struct.bcm_clk_gate*) #1

declare dso_local i32 @gate_is_enabled(%struct.bcm_clk_gate*) #1

declare dso_local i32 @gate_is_no_disable(%struct.bcm_clk_gate*) #1

declare dso_local i32 @__ccu_write(%struct.ccu_data*, i32, i32) #1

declare dso_local i32 @__ccu_wait_bit(%struct.ccu_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
