; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pvclock.c_pvclock_read_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pvclock.c_pvclock_read_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vcpu_time_info = type { i32 }

@valid_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvclock_read_flags(%struct.pvclock_vcpu_time_info* %0) #0 {
  %2 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pvclock_vcpu_time_info* %0, %struct.pvclock_vcpu_time_info** %2, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %2, align 8
  %7 = call i32 @pvclock_read_begin(%struct.pvclock_vcpu_time_info* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %2, align 8
  %9 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %5
  %12 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pvclock_read_retry(%struct.pvclock_vcpu_time_info* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %5, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @valid_flags, align 4
  %19 = and i32 %17, %18
  ret i32 %19
}

declare dso_local i32 @pvclock_read_begin(%struct.pvclock_vcpu_time_info*) #1

declare dso_local i64 @pvclock_read_retry(%struct.pvclock_vcpu_time_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
