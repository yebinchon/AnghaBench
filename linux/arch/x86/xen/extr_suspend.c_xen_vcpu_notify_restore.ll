; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_suspend.c_xen_vcpu_notify_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_suspend.c_xen_vcpu_notify_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_SPEC_CTRL = common dso_local global i32 0, align 4
@MSR_IA32_SPEC_CTRL = common dso_local global i32 0, align 4
@spec_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xen_vcpu_notify_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_vcpu_notify_restore(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i64 (...) @xen_pv_domain()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @X86_FEATURE_SPEC_CTRL, align 4
  %7 = call i64 @boot_cpu_has(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %11 = load i32, i32* @spec_ctrl, align 4
  %12 = call i32 @this_cpu_read(i32 %11)
  %13 = call i32 @wrmsrl(i32 %10, i32 %12)
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = call i64 (...) @smp_processor_id()
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @tick_resume_local()
  br label %20

20:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @xen_pv_domain(...) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @tick_resume_local(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
