; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_debugfs.c_kvm_arch_create_vcpu_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_debugfs.c_kvm_arch_create_vcpu_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"tsc-offset\00", align 1
@vcpu_tsc_offset_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"lapic_timer_advance_ns\00", align 1
@vcpu_timer_advance_ns_fops = common dso_local global i32 0, align 4
@kvm_has_tsc_control = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"tsc-scaling-ratio\00", align 1
@vcpu_tsc_scaling_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"tsc-scaling-ratio-frac-bits\00", align 1
@vcpu_tsc_scaling_frac_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_create_vcpu_debugfs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 292, i32 %5, %struct.kvm_vcpu* %6, i32* @vcpu_tsc_offset_fops)
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %14, %struct.kvm_vcpu* %15, i32* @vcpu_timer_advance_ns_fops)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i64, i64* @kvm_has_tsc_control, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %23, %struct.kvm_vcpu* %24, i32* @vcpu_tsc_scaling_fops)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %28, %struct.kvm_vcpu* %29, i32* @vcpu_tsc_scaling_frac_fops)
  br label %31

31:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.kvm_vcpu*, i32*) #1

declare dso_local i64 @lapic_in_kernel(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
