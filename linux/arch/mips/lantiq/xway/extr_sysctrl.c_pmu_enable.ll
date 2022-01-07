; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"lantiq,ar10\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"lantiq,grx390\00", align 1
@g_pmu_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"activating PMU module failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  store i32 1000000, i32* %3, align 4
  %4 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %6, %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.clk*, %struct.clk** %2, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PWDCR_EN_XRX(i32 %15)
  %17 = call i32 @pmu_w32(i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %35, %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.clk*, %struct.clk** %2, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PWDSR_XRX(i32 %26)
  %28 = call i32 @pmu_r32(i32 %27)
  %29 = load %struct.clk*, %struct.clk** %2, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %23, %19
  %36 = phi i1 [ false, %19 ], [ %34, %23 ]
  br i1 %36, label %18, label %37

37:                                               ; preds = %35
  br label %75

38:                                               ; preds = %6
  %39 = call i32 @spin_lock(i32* @g_pmu_lock)
  %40 = load %struct.clk*, %struct.clk** %2, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PWDCR(i32 %42)
  %44 = call i32 @pmu_r32(i32 %43)
  %45 = load %struct.clk*, %struct.clk** %2, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = load %struct.clk*, %struct.clk** %2, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PWDCR(i32 %52)
  %54 = call i32 @pmu_w32(i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %71, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.clk*, %struct.clk** %2, align 8
  %62 = getelementptr inbounds %struct.clk, %struct.clk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PWDSR(i32 %63)
  %65 = call i32 @pmu_r32(i32 %64)
  %66 = load %struct.clk*, %struct.clk** %2, align 8
  %67 = getelementptr inbounds %struct.clk, %struct.clk* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %60, %56
  %72 = phi i1 [ false, %56 ], [ %70, %60 ]
  br i1 %72, label %55, label %73

73:                                               ; preds = %71
  %74 = call i32 @spin_unlock(i32* @g_pmu_lock)
  br label %75

75:                                               ; preds = %73, %37
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  ret i32 0
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @pmu_w32(i32, i32) #1

declare dso_local i32 @PWDCR_EN_XRX(i32) #1

declare dso_local i32 @pmu_r32(i32) #1

declare dso_local i32 @PWDSR_XRX(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @PWDCR(i32) #1

declare dso_local i32 @PWDSR(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
