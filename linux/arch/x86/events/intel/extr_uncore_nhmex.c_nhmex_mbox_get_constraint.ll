; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@EXTRA_REG_NONE = common dso_local global i32 0, align 4
@EXTRA_REG_NHMEX_M_ZDP_CTL_FVC = common dso_local global i32 0, align 4
@uncore_constraint_empty = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_mbox_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @nhmex_mbox_get_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.hw_perf_event_extra* %14, %struct.hw_perf_event_extra** %6, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.hw_perf_event_extra* %17, %struct.hw_perf_event_extra** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__BITS_VALUE(i32 %23, i32 0, i32 8)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__BITS_VALUE(i32 %28, i32 1, i32 8)
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %182, %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %75, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  %36 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %37 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %49
  store i32 255, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %39, %35
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %75

58:                                               ; preds = %51
  %59 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @__BITS_VALUE(i32 %64, i32 %65, i32 32)
  %67 = call i32 @nhmex_mbox_get_shared_reg(%struct.intel_uncore_box* %59, i32 %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %141

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 1, %71
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %70, %57
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %32

78:                                               ; preds = %32
  %79 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %80 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @EXTRA_REG_NONE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %78
  %85 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %86 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %90 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88, %84
  %94 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %95 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %96 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %99 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @nhmex_mbox_get_shared_reg(%struct.intel_uncore_box* %94, i32 %97, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  br label %141

104:                                              ; preds = %93, %88, %78
  %105 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %106 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %140, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 255
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %116 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @__BITS_VALUE(i32 %117, i32 0, i32 8)
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nhmex_mbox_alter_er(%struct.perf_event* %121, i32 %123, i32 1)
  br label %125

125:                                              ; preds = %120, %112, %108
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %128 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %132 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @EXTRA_REG_NONE, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %125
  %137 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %138 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %137, i32 0, i32 2
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %125
  br label %140

140:                                              ; preds = %139, %104
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %207

141:                                              ; preds = %103, %69
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 255
  br i1 %144, label %145, label %188

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %188, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %188

154:                                              ; preds = %149
  %155 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %156 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @__BITS_VALUE(i32 %157, i32 1, i32 8)
  %159 = icmp ne i32 %158, 255
  %160 = zext i1 %159 to i32
  %161 = call i32 @BUG_ON(i32 %160)
  %162 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, %162
  store i32 %165, i32* %163, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  %169 = srem i32 %168, 4
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %171
  store i32 %174, i32* %172, align 4
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %178 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @__BITS_VALUE(i32 %179, i32 0, i32 8)
  %181 = icmp ne i32 %176, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %154
  %183 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @nhmex_mbox_alter_er(%struct.perf_event* %183, i32 %185, i32 0)
  store i32 %186, i32* %11, align 4
  br label %31

187:                                              ; preds = %154
  br label %188

188:                                              ; preds = %187, %149, %145, %141
  %189 = load i32, i32* %10, align 4
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %193, i32 %195)
  br label %197

197:                                              ; preds = %192, %188
  %198 = load i32, i32* %10, align 4
  %199 = and i32 %198, 2
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %202, i32 %204)
  br label %206

206:                                              ; preds = %201, %197
  store %struct.event_constraint* @uncore_constraint_empty, %struct.event_constraint** %3, align 8
  br label %207

207:                                              ; preds = %206, %140
  %208 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %208
}

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i64 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @nhmex_mbox_get_shared_reg(%struct.intel_uncore_box*, i32, i32) #1

declare dso_local i32 @nhmex_mbox_alter_er(%struct.perf_event*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
