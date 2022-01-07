; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_read_std.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_read_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }
%struct.x86_emulate_ctxt = type { i32 }
%struct.x86_exception = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, i8*, i32, %struct.x86_exception*, i32)* @emulator_read_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_read_std(%struct.x86_emulate_ctxt* %0, i32 %1, i8* %2, i32 %3, %struct.x86_exception* %4, i32 %5) #0 {
  %7 = alloca %struct.x86_emulate_ctxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.x86_exception*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvm_vcpu*, align 8
  %14 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.x86_exception* %4, %struct.x86_exception** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %16 = call %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt* %15)
  store %struct.kvm_vcpu* %16, %struct.kvm_vcpu** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %21, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %24 = call i32 %22(%struct.kvm_vcpu* %23)
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @PFERR_USER_MASK, align 4
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %26, %19, %6
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.x86_exception*, %struct.x86_exception** %11, align 8
  %37 = call i32 @kvm_read_guest_virt_helper(i32 %31, i8* %32, i32 %33, %struct.kvm_vcpu* %34, i32 %35, %struct.x86_exception* %36)
  ret i32 %37
}

declare dso_local %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @kvm_read_guest_virt_helper(i32, i8*, i32, %struct.kvm_vcpu*, i32, %struct.x86_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
