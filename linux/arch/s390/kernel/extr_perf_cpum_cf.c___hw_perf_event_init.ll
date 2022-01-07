; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event, %struct.perf_event_attr }
%struct.hw_perf_event = type { i64, i32 }
%struct.perf_event_attr = type { i32, i64, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@cpumf_generic_events_user = common dso_local global i64* null, align 8
@cpumf_generic_events_basic = common dso_local global i64* null, align 8
@PERF_CPUM_CF_MAX_CTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@num_events = common dso_local global i32 0, align 4
@pmc_reserve_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  store %struct.perf_event_attr* %10, %struct.perf_event_attr** %4, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %99 [
    i32 128, label %16
    i32 129, label %38
  ]

16:                                               ; preds = %1
  %17 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %18 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21, %16
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %164

34:                                               ; preds = %26
  %35 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %36 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  br label %102

38:                                               ; preds = %1
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = call i32 @is_sampling_event(%struct.perf_event* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %164

45:                                               ; preds = %38
  %46 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %45
  %54 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %55 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i64, i64* %8, align 8
  %60 = load i64*, i64** @cpumf_generic_events_user, align 8
  %61 = call i64 @ARRAY_SIZE(i64* %60)
  %62 = icmp uge i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %164

66:                                               ; preds = %58
  %67 = load i64*, i64** @cpumf_generic_events_user, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %8, align 8
  br label %98

71:                                               ; preds = %53, %45
  %72 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %73 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %78 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %164

84:                                               ; preds = %76, %71
  %85 = load i64, i64* %8, align 8
  %86 = load i64*, i64** @cpumf_generic_events_basic, align 8
  %87 = call i64 @ARRAY_SIZE(i64* %86)
  %88 = icmp uge i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %164

92:                                               ; preds = %84
  %93 = load i64*, i64** @cpumf_generic_events_basic, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %66
  br label %102

99:                                               ; preds = %1
  %100 = load i32, i32* @ENOENT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %164

102:                                              ; preds = %98, %34
  %103 = load i64, i64* %8, align 8
  %104 = icmp eq i64 %103, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %164

108:                                              ; preds = %102
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @PERF_CPUM_CF_MAX_CTR, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %164

115:                                              ; preds = %108
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @get_counter_set(i64 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  switch i32 %118, label %129 [
    i32 135, label %119
    i32 130, label %119
    i32 134, label %119
    i32 133, label %119
    i32 131, label %119
    i32 132, label %126
  ]

119:                                              ; preds = %115, %115, %115, %115, %115
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %122 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %125 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %129

126:                                              ; preds = %115
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %164

129:                                              ; preds = %115, %119
  %130 = call i32 @atomic_inc_not_zero(i32* @num_events)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %129
  %133 = call i32 @mutex_lock(i32* @pmc_reserve_mutex)
  %134 = call i64 @atomic_read(i32* @num_events)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = call i64 (...) @__kernel_cpumcf_begin()
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* @EBUSY, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %144

142:                                              ; preds = %136, %132
  %143 = call i32 @atomic_inc(i32* @num_events)
  br label %144

144:                                              ; preds = %142, %139
  %145 = call i32 @mutex_unlock(i32* @pmc_reserve_mutex)
  br label %146

146:                                              ; preds = %144, %129
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %164

151:                                              ; preds = %146
  %152 = load i32, i32* @hw_perf_event_destroy, align 4
  %153 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %154 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %156 = call i32 @validate_ctr_auth(%struct.hw_perf_event* %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %151
  %160 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %161 = call i32 @validate_ctr_version(%struct.hw_perf_event* %160)
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %159, %151
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %149, %126, %112, %105, %99, %89, %81, %63, %42, %31
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @get_counter_set(i64) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @__kernel_cpumcf_begin(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @validate_ctr_auth(%struct.hw_perf_event*) #1

declare dso_local i32 @validate_ctr_version(%struct.hw_perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
