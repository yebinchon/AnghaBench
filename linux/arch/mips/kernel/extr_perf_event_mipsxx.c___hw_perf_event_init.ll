; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.mips_perf_event* (i64)* }
%struct.mips_perf_event = type { i32 }
%struct.perf_event = type { {}*, %struct.perf_event*, %struct.perf_event_attr, %struct.hw_perf_event }
%struct.perf_event_attr = type { i64, i64, i32, i32, i32 }
%struct.hw_perf_event = type { i32, i64, i32, i64, i64, i32, i32 }

@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@PERF_COUNT_HW_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i64 0, align 8
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@raw_event_mutex = common dso_local global i32 0, align 4
@mipspmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MIPS_PERFCTRL_IE = common dso_local global i32 0, align 4
@MIPS_PERFCTRL_U = common dso_local global i32 0, align 4
@MIPS_PERFCTRL_K = common dso_local global i32 0, align 4
@MIPS_PERFCTRL_EXL = common dso_local global i32 0, align 4
@MIPS_PERFCTRL_S = common dso_local global i32 0, align 4
@M_PERFCTL_CONFIG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.mips_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  store %struct.perf_event_attr* %9, %struct.perf_event_attr** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 3
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  %12 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PERF_COUNT_HW_MAX, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %190

28:                                               ; preds = %18
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.mips_perf_event* @mipspmu_map_general_event(i64 %32)
  store %struct.mips_perf_event* %33, %struct.mips_perf_event** %6, align 8
  br label %67

34:                                               ; preds = %1
  %35 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.mips_perf_event* @mipspmu_map_cache_event(i64 %45)
  store %struct.mips_perf_event* %46, %struct.mips_perf_event** %6, align 8
  br label %66

47:                                               ; preds = %34
  %48 = load i64, i64* @PERF_TYPE_RAW, align 8
  %49 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = call i32 @mutex_lock(i32* @raw_event_mutex)
  %56 = load %struct.mips_perf_event* (i64)*, %struct.mips_perf_event* (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 1), align 8
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.mips_perf_event* %56(i64 %60)
  store %struct.mips_perf_event* %61, %struct.mips_perf_event** %6, align 8
  br label %65

62:                                               ; preds = %47
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %190

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.mips_perf_event*, %struct.mips_perf_event** %6, align 8
  %69 = call i64 @IS_ERR(%struct.mips_perf_event* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i64, i64* @PERF_TYPE_RAW, align 8
  %73 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %74 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @mutex_unlock(i32* @raw_event_mutex)
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.mips_perf_event*, %struct.mips_perf_event** %6, align 8
  %82 = call i32 @PTR_ERR(%struct.mips_perf_event* %81)
  store i32 %82, i32* %2, align 4
  br label %190

83:                                               ; preds = %67
  %84 = load i32, i32* @MIPS_PERFCTRL_IE, align 4
  %85 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %86 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mips_perf_event*, %struct.mips_perf_event** %6, align 8
  %88 = call i32 @mipspmu_perf_event_encode(%struct.mips_perf_event* %87)
  %89 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %90 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @PERF_TYPE_RAW, align 8
  %92 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = call i32 @mutex_unlock(i32* @raw_event_mutex)
  br label %99

99:                                               ; preds = %97, %83
  %100 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %101 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @MIPS_PERFCTRL_U, align 4
  %106 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %107 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %112 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @MIPS_PERFCTRL_K, align 4
  %117 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %118 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* @MIPS_PERFCTRL_EXL, align 4
  %122 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %123 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %115, %110
  %127 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %128 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @MIPS_PERFCTRL_S, align 4
  %133 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %134 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %126
  %138 = load i32, i32* @M_PERFCTL_CONFIG_MASK, align 4
  %139 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %140 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %144 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %143, i32 0, i32 0
  store i32 -1, i32* %144, align 8
  %145 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %146 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %148 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %137
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 0), align 8
  %153 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %154 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %156 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %159 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %161 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %160, i32 0, i32 2
  %162 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %163 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @local64_set(i32* %161, i64 %164)
  br label %166

166:                                              ; preds = %151, %137
  store i32 0, i32* %7, align 4
  %167 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %168 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %167, i32 0, i32 1
  %169 = load %struct.perf_event*, %struct.perf_event** %168, align 8
  %170 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %171 = icmp ne %struct.perf_event* %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %174 = call i32 @validate_group(%struct.perf_event* %173)
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %172, %166
  %176 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %177 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %176, i32 0, i32 0
  %178 = bitcast {}** %177 to i32 (%struct.perf_event*)**
  store i32 (%struct.perf_event*)* @hw_perf_event_destroy, i32 (%struct.perf_event*)** %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %183 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %182, i32 0, i32 0
  %184 = bitcast {}** %183 to i32 (%struct.perf_event*)**
  %185 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %184, align 8
  %186 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %187 = call i32 %185(%struct.perf_event* %186)
  br label %188

188:                                              ; preds = %181, %175
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %80, %62, %25
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.mips_perf_event* @mipspmu_map_general_event(i64) #1

declare dso_local %struct.mips_perf_event* @mipspmu_map_cache_event(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.mips_perf_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.mips_perf_event*) #1

declare dso_local i32 @mipspmu_perf_event_encode(%struct.mips_perf_event*) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i32 @validate_group(%struct.perf_event*) #1

declare dso_local i32 @hw_perf_event_destroy(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
