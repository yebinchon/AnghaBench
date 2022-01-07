; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_stimer = type { i64, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu_hv_stimer*)* @stimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stimer_start(%struct.kvm_vcpu_hv_stimer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu_hv_stimer* %0, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %7 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %8 = call %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @get_time_ref_counter(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = call i32 (...) @ktime_get()
  store i32 %12, i32* %5, align 4
  %13 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %1
  %19 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @div64_u64_rem(i64 %34, i64 %37, i64* %6)
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  %45 = add nsw i64 %39, %44
  %46 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %29, %23
  br label %57

49:                                               ; preds = %18
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %49, %48
  %58 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %59 = call %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %4, align 8
  %66 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @trace_kvm_hv_stimer_start_periodic(i32 %61, i32 %64, i64 %65, i64 %68)
  %70 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %70, i32 0, i32 2
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = sub nsw i64 %75, %76
  %78 = mul nsw i64 100, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ktime_add_ns(i32 %72, i32 %79)
  %81 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %82 = call i32 @hrtimer_start(i32* %71, i32 %80, i32 %81)
  store i32 0, i32* %2, align 4
  br label %123

83:                                               ; preds = %1
  %84 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %96 = call i32 @stimer_mark_pending(%struct.kvm_vcpu_hv_stimer* %95, i32 0)
  store i32 0, i32* %2, align 4
  br label %123

97:                                               ; preds = %83
  %98 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %99 = call %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %4, align 8
  %106 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %107 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @trace_kvm_hv_stimer_start_one_shot(i32 %101, i32 %104, i64 %105, i64 %108)
  %110 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %110, i32 0, i32 2
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %4, align 8
  %117 = sub nsw i64 %115, %116
  %118 = mul nsw i64 100, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @ktime_add_ns(i32 %112, i32 %119)
  %121 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %122 = call i32 @hrtimer_start(i32* %111, i32 %120, i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %97, %94, %57
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i64 @get_time_ref_counter(i32) #1

declare dso_local %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @div64_u64_rem(i64, i64, i64*) #1

declare dso_local i32 @trace_kvm_hv_stimer_start_periodic(i32, i32, i64, i64) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @stimer_mark_pending(%struct.kvm_vcpu_hv_stimer*, i32) #1

declare dso_local i32 @trace_kvm_hv_stimer_start_one_shot(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
