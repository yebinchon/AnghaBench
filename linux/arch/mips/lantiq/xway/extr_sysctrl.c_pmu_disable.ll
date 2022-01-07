; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_pmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_pmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"lantiq,ar10\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"lantiq,grx390\00", align 1
@g_pmu_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"deactivating PMU module failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @pmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_disable(%struct.clk* %0) #0 {
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
  br i1 %8, label %9, label %37

9:                                                ; preds = %6, %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.clk*, %struct.clk** %2, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PWDCR_DIS_XRX(i32 %15)
  %17 = call i32 @pmu_w32(i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %34, %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

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
  br label %34

34:                                               ; preds = %23, %19
  %35 = phi i1 [ false, %19 ], [ %33, %23 ]
  br i1 %35, label %18, label %36

36:                                               ; preds = %34
  br label %74

37:                                               ; preds = %6
  %38 = call i32 @spin_lock(i32* @g_pmu_lock)
  %39 = load %struct.clk*, %struct.clk** %2, align 8
  %40 = getelementptr inbounds %struct.clk, %struct.clk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PWDCR(i32 %41)
  %43 = call i32 @pmu_r32(i32 %42)
  %44 = load %struct.clk*, %struct.clk** %2, align 8
  %45 = getelementptr inbounds %struct.clk, %struct.clk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  %48 = load %struct.clk*, %struct.clk** %2, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PWDCR(i32 %50)
  %52 = call i32 @pmu_w32(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %70, %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.clk*, %struct.clk** %2, align 8
  %60 = getelementptr inbounds %struct.clk, %struct.clk* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PWDSR(i32 %61)
  %63 = call i32 @pmu_r32(i32 %62)
  %64 = load %struct.clk*, %struct.clk** %2, align 8
  %65 = getelementptr inbounds %struct.clk, %struct.clk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %58, %54
  %71 = phi i1 [ false, %54 ], [ %69, %58 ]
  br i1 %71, label %53, label %72

72:                                               ; preds = %70
  %73 = call i32 @spin_unlock(i32* @g_pmu_lock)
  br label %74

74:                                               ; preds = %72, %36
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  ret void
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @pmu_w32(i32, i32) #1

declare dso_local i32 @PWDCR_DIS_XRX(i32) #1

declare dso_local i32 @pmu_r32(i32) #1

declare dso_local i32 @PWDSR_XRX(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @PWDCR(i32) #1

declare dso_local i32 @PWDSR(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
