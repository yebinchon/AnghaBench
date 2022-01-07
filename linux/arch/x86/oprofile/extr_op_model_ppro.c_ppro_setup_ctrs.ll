; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_ppro.c_ppro_setup_ctrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_ppro.c_ppro_setup_ctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.op_x86_model_spec = type { i32 }
%struct.op_msrs = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%union.cpuid10_eax = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@X86_FEATURE_ARCH_PERFMON = common dso_local global i32 0, align 4
@cpu_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@counter_width = common dso_local global i64 0, align 8
@num_counters = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@counter_config = common dso_local global %struct.TYPE_10__* null, align 8
@reset_value = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_x86_model_spec*, %struct.op_msrs*)* @ppro_setup_ctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppro_setup_ctrs(%struct.op_x86_model_spec* %0, %struct.op_msrs* %1) #0 {
  %3 = alloca %struct.op_x86_model_spec*, align 8
  %4 = alloca %struct.op_msrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cpuid10_eax, align 8
  store %struct.op_x86_model_spec* %0, %struct.op_x86_model_spec** %3, align 8
  store %struct.op_msrs* %1, %struct.op_msrs** %4, align 8
  %8 = load i32, i32* @X86_FEATURE_ARCH_PERFMON, align 4
  %9 = call i64 @boot_cpu_has(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = call i32 @cpuid_eax(i32 10)
  %13 = bitcast %union.cpuid10_eax* %7 to i32*
  store i32 %12, i32* %13, align 8
  %14 = bitcast %union.cpuid10_eax* %7 to %struct.TYPE_7__*
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cpu_info, i32 0, i32 1), align 4
  %20 = call i32 @__this_cpu_read(i32 %19)
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cpu_info, i32 0, i32 0), align 4
  %24 = call i32 @__this_cpu_read(i32 %23)
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %37, label %26

26:                                               ; preds = %22, %18, %11
  %27 = load i64, i64* @counter_width, align 8
  %28 = bitcast %union.cpuid10_eax* %7 to %struct.TYPE_7__*
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = bitcast %union.cpuid10_eax* %7 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* @counter_width, align 8
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %22
  br label %38

38:                                               ; preds = %37, %2
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %97, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @num_counters, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %100

43:                                               ; preds = %39
  %44 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %45 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %97

54:                                               ; preds = %43
  %55 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %56 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @rdmsrl(i64 %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @op_x86_warn_in_use(i32 %70)
  br label %72

72:                                               ; preds = %69, %54
  %73 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %74 = getelementptr inbounds %struct.op_x86_model_spec, %struct.op_x86_model_spec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %79 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @wrmsrl(i64 %85, i32 %86)
  %88 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %89 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @wrmsrl(i64 %95, i32 -1)
  br label %97

97:                                               ; preds = %72, %53
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %39

100:                                              ; preds = %39
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %188, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @num_counters, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %191

105:                                              ; preds = %101
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** @counter_config, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %182

113:                                              ; preds = %105
  %114 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %115 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %182

123:                                              ; preds = %113
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** @counter_config, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** @reset_value, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  %134 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %135 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32*, i32** @reset_value, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 0, %146
  %148 = call i32 @wrmsrl(i64 %141, i32 %147)
  %149 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %150 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @rdmsrl(i64 %156, i32 %157)
  %159 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %160 = getelementptr inbounds %struct.op_x86_model_spec, %struct.op_x86_model_spec* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %5, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %5, align 4
  %164 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** @counter_config, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %167
  %169 = call i32 @op_x86_get_ctrl(%struct.op_x86_model_spec* %164, %struct.TYPE_10__* %168)
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  %172 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %173 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %172, i32 0, i32 0
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @wrmsrl(i64 %179, i32 %180)
  br label %187

182:                                              ; preds = %113, %105
  %183 = load i32*, i32** @reset_value, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %182, %123
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %101

191:                                              ; preds = %101
  ret void
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @rdmsrl(i64, i32) #1

declare dso_local i32 @op_x86_warn_in_use(i32) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

declare dso_local i32 @op_x86_get_ctrl(%struct.op_x86_model_spec*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
