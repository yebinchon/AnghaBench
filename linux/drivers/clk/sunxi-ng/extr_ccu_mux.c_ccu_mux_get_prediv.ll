; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_get_prediv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_get_prediv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i32, i64, i64 }
%struct.ccu_mux_internal = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CCU_FEATURE_FIXED_PREDIV = common dso_local global i32 0, align 4
@CCU_FEATURE_VARIABLE_PREDIV = common dso_local global i32 0, align 4
@CCU_FEATURE_ALL_PREDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_common*, %struct.ccu_mux_internal*, i32)* @ccu_mux_get_prediv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_mux_get_prediv(%struct.ccu_common* %0, %struct.ccu_mux_internal* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccu_common*, align 8
  %6 = alloca %struct.ccu_mux_internal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %5, align 8
  store %struct.ccu_mux_internal* %1, %struct.ccu_mux_internal** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %13 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %14 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CCU_FEATURE_FIXED_PREDIV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %3
  %20 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %21 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CCU_FEATURE_VARIABLE_PREDIV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %19
  %27 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %28 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CCU_FEATURE_ALL_PREDIV, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %165

34:                                               ; preds = %26, %19, %3
  %35 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %36 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CCU_FEATURE_ALL_PREDIV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %43 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %165

45:                                               ; preds = %34
  %46 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %47 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %50 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = call i32 @readl(i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %59 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %57, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %63 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %56, %45
  %70 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %71 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CCU_FEATURE_FIXED_PREDIV, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %104, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %80 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %86 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %85, i32 0, i32 5
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %84, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %83
  %95 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %96 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %95, i32 0, i32 5
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %94, %83
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %77

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %107, %69
  %109 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %110 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CCU_FEATURE_VARIABLE_PREDIV, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %163

115:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %159, %115
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %119 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %162

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %125 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %124, i32 0, i32 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %123, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %136 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %135, i32 0, i32 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %134, %142
  store i32 %143, i32* %12, align 4
  %144 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %145 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %144, i32 0, i32 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 1, %151
  %153 = sub nsw i32 %152, 1
  %154 = load i32, i32* %12, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %133, %122
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %116

162:                                              ; preds = %116
  br label %163

163:                                              ; preds = %162, %108
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %41, %33
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
