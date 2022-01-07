; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_filter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@X86_BR_ALL = common dso_local global i32 0, align 4
@X86_BR_TYPE_SAVE = common dso_local global i32 0, align 4
@X86_BR_NONE = common dso_local global i32 0, align 4
@X86_BR_ANYTX = common dso_local global i32 0, align 4
@X86_BR_IN_TX = common dso_local global i32 0, align 4
@X86_BR_NO_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @intel_pmu_lbr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_lbr_filter(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @X86_BR_ALL, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @X86_BR_ALL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @X86_BR_TYPE_SAVE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @X86_BR_TYPE_SAVE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %194

25:                                               ; preds = %18, %1
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %123, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %126

33:                                               ; preds = %26
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  %42 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %43 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %53 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @branch_type(i64 %50, i64 %51, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @X86_BR_NONE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %33
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @X86_BR_ANYTX, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %71 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @X86_BR_IN_TX, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %87

83:                                               ; preds = %69
  %84 = load i32, i32* @X86_BR_NO_TX, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %64, %33
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @X86_BR_NONE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92, %88
  %99 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %100 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  store i32 1, i32* %9, align 4
  br label %106

106:                                              ; preds = %98, %92
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @X86_BR_TYPE_SAVE, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @X86_BR_TYPE_SAVE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @common_branch_type(i32 %113)
  %115 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %116 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 8
  br label %122

122:                                              ; preds = %112, %106
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %26

126:                                              ; preds = %26
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %194

130:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %191, %189, %130
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %134 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %194

138:                                              ; preds = %131
  %139 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %140 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %191, label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %158, %148
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  %153 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %154 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %150
  %159 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %160 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %164
  %166 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %167 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = bitcast %struct.TYPE_4__* %165 to i8*
  %173 = bitcast %struct.TYPE_4__* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 40, i1 false)
  br label %150

174:                                              ; preds = %150
  %175 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %176 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %181 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %174
  br label %131

190:                                              ; preds = %174
  br label %191

191:                                              ; preds = %190, %138
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %131

194:                                              ; preds = %24, %129, %131
  ret void
}

declare dso_local i32 @branch_type(i64, i64, i32) #1

declare dso_local i32 @common_branch_type(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
