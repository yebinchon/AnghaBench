; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_vmload_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_vmload_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vmcb = type { i32 }
%struct.kvm_host_map = type { %struct.vmcb* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @vmload_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmload_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb*, align 8
  %5 = alloca %struct.kvm_host_map, align 8
  %6 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = call i64 @nested_svm_check_permissions(%struct.vcpu_svm* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 0
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpa_to_gfn(i32 %19)
  %21 = call i32 @kvm_vcpu_map(i32* %13, i32 %20, %struct.kvm_host_map* %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %30, i32 0, i32 0
  %32 = call i32 @kvm_inject_gp(i32* %31, i32 0)
  br label %33

33:                                               ; preds = %29, %24
  store i32 1, i32* %2, align 4
  br label %49

34:                                               ; preds = %11
  %35 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %5, i32 0, i32 0
  %36 = load %struct.vmcb*, %struct.vmcb** %35, align 8
  store %struct.vmcb* %36, %struct.vmcb** %4, align 8
  %37 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %38 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %37, i32 0, i32 0
  %39 = call i32 @kvm_skip_emulated_instruction(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @nested_svm_vmloadsave(%struct.vmcb* %40, %struct.TYPE_4__* %43)
  %45 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %46 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %45, i32 0, i32 0
  %47 = call i32 @kvm_vcpu_unmap(i32* %46, %struct.kvm_host_map* %5, i32 1)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %34, %33, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @nested_svm_check_permissions(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_vcpu_map(i32*, i32, %struct.kvm_host_map*) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

declare dso_local i32 @kvm_inject_gp(i32*, i32) #1

declare dso_local i32 @kvm_skip_emulated_instruction(i32*) #1

declare dso_local i32 @nested_svm_vmloadsave(%struct.vmcb*, %struct.TYPE_4__*) #1

declare dso_local i32 @kvm_vcpu_unmap(i32*, %struct.kvm_host_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
