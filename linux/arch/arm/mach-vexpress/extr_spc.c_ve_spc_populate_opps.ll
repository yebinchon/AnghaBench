; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_populate_opps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_populate_opps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, %struct.ve_spc_opp** }
%struct.ve_spc_opp = type { i64, i64 }

@MAX_OPPS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@info = common dso_local global %struct.TYPE_2__* null, align 8
@A15_PERFVAL_BASE = common dso_local global i64 0, align 8
@A7_PERFVAL_BASE = common dso_local global i64 0, align 8
@SYSCFG_SCC = common dso_local global i32 0, align 4
@FREQ_MASK = common dso_local global i64 0, align 8
@MULT_FACTOR = common dso_local global i64 0, align 8
@VOLT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ve_spc_populate_opps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ve_spc_populate_opps(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ve_spc_opp*, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load i64, i64* @MAX_OPPS, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ve_spc_opp* @kcalloc(i64 %9, i32 16, i32 %10)
  store %struct.ve_spc_opp* %11, %struct.ve_spc_opp** %8, align 8
  %12 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %13 = icmp ne %struct.ve_spc_opp* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.ve_spc_opp**, %struct.ve_spc_opp*** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.ve_spc_opp*, %struct.ve_spc_opp** %21, i64 %22
  store %struct.ve_spc_opp* %18, %struct.ve_spc_opp** %23, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @cluster_is_a15(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i64, i64* @A15_PERFVAL_BASE, align 8
  br label %31

29:                                               ; preds = %17
  %30 = load i64, i64* @A7_PERFVAL_BASE, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  store i64 %32, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %59, %31
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @MAX_OPPS, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i32, i32* @SYSCFG_SCC, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @ve_spc_read_sys_cfg(i32 %38, i64 %39, i64* %4)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @FREQ_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* @MULT_FACTOR, align 8
  %48 = mul i64 %46, %47
  %49 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %50 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @VOLT_SHIFT, align 8
  %53 = lshr i64 %51, %52
  %54 = mul i64 %53, 1000
  %55 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %56 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %58

57:                                               ; preds = %37
  br label %66

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %5, align 8
  %64 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %65 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %64, i32 1
  store %struct.ve_spc_opp* %65, %struct.ve_spc_opp** %8, align 8
  br label %33

66:                                               ; preds = %57, %33
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %3, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %67, i64* %72, align 8
  %73 = load i64, i64* %6, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %66, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ve_spc_opp* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @cluster_is_a15(i64) #1

declare dso_local i64 @ve_spc_read_sys_cfg(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
