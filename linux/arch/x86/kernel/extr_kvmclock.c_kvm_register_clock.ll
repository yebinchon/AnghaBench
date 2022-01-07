; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvmclock.c_kvm_register_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvmclock.c_kvm_register_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vsyscall_time_info = type { i32 }

@msr_kvm_system_time = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"kvm-clock: cpu %d, msr %llx, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kvm_register_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_register_clock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pvclock_vsyscall_time_info*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call %struct.pvclock_vsyscall_time_info* (...) @this_cpu_hvclock()
  store %struct.pvclock_vsyscall_time_info* %5, %struct.pvclock_vsyscall_time_info** %3, align 8
  %6 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %3, align 8
  %7 = icmp ne %struct.pvclock_vsyscall_time_info* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %3, align 8
  %11 = getelementptr inbounds %struct.pvclock_vsyscall_time_info, %struct.pvclock_vsyscall_time_info* %10, i32 0, i32 0
  %12 = call i32 @slow_virt_to_phys(i32* %11)
  %13 = sext i32 %12 to i64
  %14 = or i64 %13, 1
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @msr_kvm_system_time, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @wrmsrl(i32 %16, i32 %17)
  %19 = call i32 (...) @smp_processor_id()
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.pvclock_vsyscall_time_info* @this_cpu_hvclock(...) #1

declare dso_local i32 @slow_virt_to_phys(i32*) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
