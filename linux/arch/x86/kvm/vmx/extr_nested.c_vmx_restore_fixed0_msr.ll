; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_fixed0_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_fixed0_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, i32, i32)* @vmx_restore_fixed0_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_restore_fixed0_msr(%struct.vcpu_vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 128, label %15
  ]

10:                                               ; preds = %3
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* %14, i32** %8, align 8
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* %19, i32** %8, align 8
  br label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %15, %10
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_bitwise_subset(i32 %23, i32 %25, i64 -1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @is_bitwise_subset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
