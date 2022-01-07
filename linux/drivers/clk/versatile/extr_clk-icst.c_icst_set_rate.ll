; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_icst = type { i64, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.icst_vco = type { i32 }

@ICST_INTEGRATOR_AP_PCI = common dso_local global i64 0, align 8
@INTEGRATOR_AP_PCI_25_33_MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ICST: cannot set PCI frequency %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VERSATILE_LOCK_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @icst_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icst_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_icst*, align 8
  %9 = alloca %struct.icst_vco, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.icst_vco, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_icst* @to_icst(%struct.clk_hw* %13)
  store %struct.clk_icst* %14, %struct.clk_icst** %8, align 8
  %15 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %16 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ICST_INTEGRATOR_AP_PCI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 25000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %35

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 33000000
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @INTEGRATOR_AP_PCI_25_33_MHZ, align 4
  store i32 %28, i32* %10, align 4
  br label %34

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %105

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %37 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %40 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %43 = call i32 @regmap_write(i32 %38, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %105

48:                                               ; preds = %35
  %49 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %50 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %53 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INTEGRATOR_AP_PCI_25_33_MHZ, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @regmap_update_bits(i32 %51, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %105

62:                                               ; preds = %48
  %63 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %64 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %67 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regmap_write(i32 %65, i32 %68, i32 0)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %105

74:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %105

75:                                               ; preds = %3
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %81 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 %79, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %86 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @icst_hz_to_vco(%struct.TYPE_3__* %87, i64 %88)
  %90 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %12, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = bitcast %struct.icst_vco* %9 to i8*
  %92 = bitcast %struct.icst_vco* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 4, i1 false)
  %93 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %94 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @icst_hz(%struct.TYPE_3__* %95, i32 %97)
  %99 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %100 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %102 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vco_set(%struct.clk_icst* %101, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %84, %74, %72, %60, %46, %29
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.clk_icst* @to_icst(%struct.clk_hw*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @icst_hz_to_vco(%struct.TYPE_3__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icst_hz(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @vco_set(%struct.clk_icst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
