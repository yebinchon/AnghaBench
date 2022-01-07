; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_set_dr_intercepts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_set_dr_intercepts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32 }
%struct.vmcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INTERCEPT_DR0_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR1_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR2_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR3_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR4_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR5_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR6_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR7_READ = common dso_local global i32 0, align 4
@INTERCEPT_DR0_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_DR1_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_DR2_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_DR3_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_DR4_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_DR5_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_DR6_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_DR7_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @set_dr_intercepts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dr_intercepts(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca %struct.vmcb*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %4 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %5 = call %struct.vmcb* @get_host_vmcb(%struct.vcpu_svm* %4)
  store %struct.vmcb* %5, %struct.vmcb** %3, align 8
  %6 = load i32, i32* @INTERCEPT_DR0_READ, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @INTERCEPT_DR1_READ, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  %11 = load i32, i32* @INTERCEPT_DR2_READ, align 4
  %12 = shl i32 1, %11
  %13 = or i32 %10, %12
  %14 = load i32, i32* @INTERCEPT_DR3_READ, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @INTERCEPT_DR4_READ, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @INTERCEPT_DR5_READ, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @INTERCEPT_DR6_READ, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @INTERCEPT_DR7_READ, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @INTERCEPT_DR0_WRITE, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @INTERCEPT_DR1_WRITE, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* @INTERCEPT_DR2_WRITE, align 4
  %36 = shl i32 1, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* @INTERCEPT_DR3_WRITE, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @INTERCEPT_DR4_WRITE, align 4
  %42 = shl i32 1, %41
  %43 = or i32 %40, %42
  %44 = load i32, i32* @INTERCEPT_DR5_WRITE, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  %47 = load i32, i32* @INTERCEPT_DR6_WRITE, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = load i32, i32* @INTERCEPT_DR7_WRITE, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %54 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %57 = call i32 @recalc_intercepts(%struct.vcpu_svm* %56)
  ret void
}

declare dso_local %struct.vmcb* @get_host_vmcb(%struct.vcpu_svm*) #1

declare dso_local i32 @recalc_intercepts(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
