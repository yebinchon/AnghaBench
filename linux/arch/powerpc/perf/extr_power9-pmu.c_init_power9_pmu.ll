; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power9-pmu.c_init_power9_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power9-pmu.c_init_power9_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@SPRN_PVR = common dso_local global i32 0, align 4
@cur_cpu_spec = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"ppc64/power9\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PVR_POWER9_CUMULUS = common dso_local global i32 0, align 4
@p9_dd21_bl_ev = common dso_local global i8* null, align 8
@power9_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@p9_dd22_bl_ev = common dso_local global i8* null, align 8
@PPC_FEATURE2_EBB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_power9_pmu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @SPRN_PVR, align 4
  %5 = call i32 @mfspr(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_cpu_spec, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_cpu_spec, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcmp(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %0
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %62

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PVR_POWER9_CUMULUS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @PVR_CFG(i32 %25)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @PVR_MIN(i32 %29)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** @p9_dd21_bl_ev, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @power9_pmu, i32 0, i32 1), align 8
  %34 = load i8*, i8** @p9_dd21_bl_ev, align 8
  %35 = call i8* @ARRAY_SIZE(i8* %34)
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @power9_pmu, i32 0, i32 0), align 8
  br label %49

36:                                               ; preds = %28, %24
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @PVR_CFG(i32 %37)
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @PVR_MIN(i32 %41)
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** @p9_dd22_bl_ev, align 8
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @power9_pmu, i32 0, i32 1), align 8
  %46 = load i8*, i8** @p9_dd22_bl_ev, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @power9_pmu, i32 0, i32 0), align 8
  br label %48

48:                                               ; preds = %44, %40, %36
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %19
  %51 = call i32 @register_power_pmu(%struct.TYPE_4__* @power9_pmu)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* %1, align 4
  br label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @PPC_FEATURE2_EBB, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_cpu_spec, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %56, %54, %16
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @PVR_CFG(i32) #1

declare dso_local i32 @PVR_MIN(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @register_power_pmu(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
