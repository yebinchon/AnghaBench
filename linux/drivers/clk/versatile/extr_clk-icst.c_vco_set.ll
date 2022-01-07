; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_vco_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_vco_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_icst = type { i32, i32, i32, i32 }
%struct.icst_vco = type { i32, i32, i32 }

@INTEGRATOR_AP_CM_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ICST error: tried to set bit 8 of VDW\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ICST error: tried to use VOD != 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ICST error: tried to use RDW != 22\0A\00", align 1
@INTEGRATOR_AP_SYS_BITS = common dso_local global i32 0, align 4
@INTEGRATOR_CP_CM_CORE_BITS = common dso_local global i32 0, align 4
@INTEGRATOR_CP_CM_MEM_BITS = common dso_local global i32 0, align 4
@VERSATILE_AUX_OSC_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ICST: new val = 0x%08x\0A\00", align 1
@VERSATILE_LOCK_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_icst*, i64, i32)* @vco_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vco_set(%struct.clk_icst* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icst_vco, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.clk_icst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %1, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %2, i32* %12, align 4
  %13 = bitcast %struct.icst_vco* %5 to i8*
  %14 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  store %struct.clk_icst* %0, %struct.clk_icst** %7, align 8
  %15 = load %struct.clk_icst*, %struct.clk_icst** %7, align 8
  %16 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %111 [
    i32 131, label %18
    i32 130, label %42
    i32 129, label %66
    i32 128, label %88
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @INTEGRATOR_AP_CM_BITS, align 4
  store i32 %19, i32* %8, align 4
  %20 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %18
  %30 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 22
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  br label %123

42:                                               ; preds = %3
  %43 = load i32, i32* @INTEGRATOR_AP_SYS_BITS, align 4
  store i32 %43, i32* %8, align 4
  %44 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 256
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  %54 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 46
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  br label %123

66:                                               ; preds = %3
  %67 = load i32, i32* @INTEGRATOR_CP_CM_CORE_BITS, align 4
  store i32 %67, i32* %8, align 4
  %68 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 %70, %73
  store i32 %74, i32* %9, align 4
  %75 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 256
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %66
  %82 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 22
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  br label %123

88:                                               ; preds = %3
  %89 = load i32, i32* @INTEGRATOR_CP_CM_MEM_BITS, align 4
  store i32 %89, i32* %8, align 4
  %90 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 255
  %93 = shl i32 %92, 12
  %94 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 20
  %97 = or i32 %93, %96
  store i32 %97, i32* %9, align 4
  %98 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 256
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %88
  %105 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 22
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %104
  br label %123

111:                                              ; preds = %3
  %112 = load i32, i32* @VERSATILE_AUX_OSC_BITS, align 4
  store i32 %112, i32* %8, align 4
  %113 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 9
  %118 = or i32 %114, %117
  %119 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %5, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 16
  %122 = or i32 %118, %121
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %111, %110, %87, %65, %41
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load %struct.clk_icst*, %struct.clk_icst** %7, align 8
  %127 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.clk_icst*, %struct.clk_icst** %7, align 8
  %130 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %133 = call i32 @regmap_write(i32 %128, i32 %131, i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %165

138:                                              ; preds = %123
  %139 = load %struct.clk_icst*, %struct.clk_icst** %7, align 8
  %140 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.clk_icst*, %struct.clk_icst** %7, align 8
  %143 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @regmap_update_bits(i32 %141, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %4, align 4
  br label %165

152:                                              ; preds = %138
  %153 = load %struct.clk_icst*, %struct.clk_icst** %7, align 8
  %154 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.clk_icst*, %struct.clk_icst** %7, align 8
  %157 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @regmap_write(i32 %155, i32 %158, i32 0)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %4, align 4
  br label %165

164:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %162, %150, %136
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
