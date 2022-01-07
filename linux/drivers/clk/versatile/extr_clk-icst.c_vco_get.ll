; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_vco_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_vco_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_icst = type { i64, i32, i32 }
%struct.icst_vco = type { i32, i32, i32 }

@ICST_INTEGRATOR_AP_CM = common dso_local global i64 0, align 8
@INTEGRATOR_AP_CM_BITS = common dso_local global i32 0, align 4
@ICST_INTEGRATOR_AP_SYS = common dso_local global i64 0, align 8
@INTEGRATOR_AP_SYS_BITS = common dso_local global i32 0, align 4
@ICST_INTEGRATOR_AP_PCI = common dso_local global i64 0, align 8
@INTEGRATOR_AP_PCI_25_33_MHZ = common dso_local global i32 0, align 4
@ICST_INTEGRATOR_CP_CM_CORE = common dso_local global i64 0, align 8
@ICST_INTEGRATOR_CP_CM_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_icst*, %struct.icst_vco*)* @vco_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vco_get(%struct.clk_icst* %0, %struct.icst_vco* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_icst*, align 8
  %5 = alloca %struct.icst_vco*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_icst* %0, %struct.clk_icst** %4, align 8
  store %struct.icst_vco* %1, %struct.icst_vco** %5, align 8
  %9 = load %struct.clk_icst*, %struct.clk_icst** %4, align 8
  %10 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clk_icst*, %struct.clk_icst** %4, align 8
  %13 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @regmap_read(i32 %11, i32 %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %132

20:                                               ; preds = %2
  %21 = load %struct.clk_icst*, %struct.clk_icst** %4, align 8
  %22 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ICST_INTEGRATOR_AP_CM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @INTEGRATOR_AP_CM_BITS, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %31 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %33 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %32, i32 0, i32 1
  store i32 22, i32* %33, align 4
  %34 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %35 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %132

36:                                               ; preds = %20
  %37 = load %struct.clk_icst*, %struct.clk_icst** %4, align 8
  %38 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ICST_INTEGRATOR_AP_SYS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @INTEGRATOR_AP_SYS_BITS, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %47 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %49 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %48, i32 0, i32 1
  store i32 46, i32* %49, align 4
  %50 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %51 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %50, i32 0, i32 2
  store i32 3, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %132

52:                                               ; preds = %36
  %53 = load %struct.clk_icst*, %struct.clk_icst** %4, align 8
  %54 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ICST_INTEGRATOR_AP_PCI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @INTEGRATOR_AP_PCI_25_33_MHZ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 17, i32 14
  %70 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %71 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 22, i32 14
  %76 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %77 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %79 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %132

80:                                               ; preds = %52
  %81 = load %struct.clk_icst*, %struct.clk_icst** %4, align 8
  %82 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ICST_INTEGRATOR_CP_CM_CORE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 255
  %89 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %90 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %92 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %91, i32 0, i32 1
  store i32 22, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 7
  %96 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %97 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %132

98:                                               ; preds = %80
  %99 = load %struct.clk_icst*, %struct.clk_icst** %4, align 8
  %100 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ICST_INTEGRATOR_CP_CM_MEM, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load i32, i32* %6, align 4
  %106 = ashr i32 %105, 12
  %107 = and i32 %106, 255
  %108 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %109 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %111 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %110, i32 0, i32 1
  store i32 22, i32* %111, align 4
  %112 = load i32, i32* %6, align 4
  %113 = ashr i32 %112, 20
  %114 = and i32 %113, 7
  %115 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %116 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %3, align 4
  br label %132

117:                                              ; preds = %98
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, 511
  %120 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %121 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  %123 = ashr i32 %122, 9
  %124 = and i32 %123, 127
  %125 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %126 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  %128 = ashr i32 %127, 16
  %129 = and i32 %128, 3
  %130 = load %struct.icst_vco*, %struct.icst_vco** %5, align 8
  %131 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %117, %104, %86, %58, %42, %26, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
