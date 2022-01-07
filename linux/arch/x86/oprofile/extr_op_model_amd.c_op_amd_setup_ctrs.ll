; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_setup_ctrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_setup_ctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.op_x86_model_spec = type { i32 }
%struct.op_msrs = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@OP_MAX_COUNTER = common dso_local global i32 0, align 4
@counter_config = common dso_local global %struct.TYPE_7__* null, align 8
@reset_value = common dso_local global i64* null, align 8
@num_counters = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_x86_model_spec*, %struct.op_msrs*)* @op_amd_setup_ctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_amd_setup_ctrs(%struct.op_x86_model_spec* %0, %struct.op_msrs* %1) #0 {
  %3 = alloca %struct.op_x86_model_spec*, align 8
  %4 = alloca %struct.op_msrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.op_x86_model_spec* %0, %struct.op_x86_model_spec** %3, align 8
  store %struct.op_msrs* %1, %struct.op_msrs** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %47, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OP_MAX_COUNTER, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @counter_config, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %22 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @op_x86_virt_to_phys(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @counter_config, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** @reset_value, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %36, i64* %40, align 8
  br label %46

41:                                               ; preds = %20, %12
  %42 = load i64*, i64** @reset_value, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %8

50:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %109, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @num_counters, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %112

55:                                               ; preds = %51
  %56 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %57 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %109

66:                                               ; preds = %55
  %67 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %68 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @rdmsrl(i64 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @op_x86_warn_in_use(i32 %82)
  br label %84

84:                                               ; preds = %81, %66
  %85 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %86 = getelementptr inbounds %struct.op_x86_model_spec, %struct.op_x86_model_spec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %91 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @wrmsrl(i64 %97, i32 %98)
  %100 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %101 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @wrmsrl(i64 %107, i32 -1)
  br label %109

109:                                              ; preds = %84, %65
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %51

112:                                              ; preds = %51
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %177, %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @num_counters, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %180

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @op_x86_phys_to_virt(i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i64*, i64** @reset_value, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %117
  br label %177

127:                                              ; preds = %117
  %128 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %129 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** @reset_value, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = sub nsw i32 0, %141
  %143 = call i32 @wrmsrl(i64 %135, i32 %142)
  %144 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %145 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @rdmsrl(i64 %151, i32 %152)
  %154 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %155 = getelementptr inbounds %struct.op_x86_model_spec, %struct.op_x86_model_spec* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %5, align 4
  %159 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** @counter_config, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = call i32 @op_x86_get_ctrl(%struct.op_x86_model_spec* %159, %struct.TYPE_7__* %163)
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %5, align 4
  %167 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %168 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @wrmsrl(i64 %174, i32 %175)
  br label %177

177:                                              ; preds = %127, %126
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %113

180:                                              ; preds = %113
  ret void
}

declare dso_local i64 @op_x86_virt_to_phys(i32) #1

declare dso_local i32 @rdmsrl(i64, i32) #1

declare dso_local i32 @op_x86_warn_in_use(i32) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

declare dso_local i32 @op_x86_phys_to_virt(i32) #1

declare dso_local i32 @op_x86_get_ctrl(%struct.op_x86_model_spec*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
