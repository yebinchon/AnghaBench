; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmentry_l1d_flush_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmentry_l1d_flush_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@X86_BUG_L1TF = common dso_local global i32 0, align 4
@l1tf_vmx_mitigation = common dso_local global i64 0, align 8
@VMENTER_L1D_FLUSH_AUTO = common dso_local global i64 0, align 8
@vmentry_l1d_flush_param = common dso_local global i32 0, align 4
@vmx_l1d_flush_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @vmentry_l1d_flush_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmentry_l1d_flush_set(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @vmentry_l1d_flush_parse(i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* @X86_BUG_L1TF, align 4
  %16 = call i32 @boot_cpu_has(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %31

19:                                               ; preds = %14
  %20 = load i64, i64* @l1tf_vmx_mitigation, align 8
  %21 = load i64, i64* @VMENTER_L1D_FLUSH_AUTO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* @vmentry_l1d_flush_param, align 4
  store i32 0, i32* %3, align 4
  br label %31

25:                                               ; preds = %19
  %26 = call i32 @mutex_lock(i32* @vmx_l1d_flush_mutex)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vmx_setup_l1d_flush(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = call i32 @mutex_unlock(i32* @vmx_l1d_flush_mutex)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %23, %18, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @vmentry_l1d_flush_parse(i8*) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmx_setup_l1d_flush(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
