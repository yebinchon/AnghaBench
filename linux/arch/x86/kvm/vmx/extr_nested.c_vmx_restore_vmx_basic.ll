; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_vmx_basic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_vmx_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, i32)* @vmx_restore_vmx_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_restore_vmx_basic(%struct.vcpu_vmx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @BIT_ULL(i32 49)
  %9 = call i32 @BIT_ULL(i32 54)
  %10 = or i32 %8, %9
  %11 = call i32 @BIT_ULL(i32 55)
  %12 = or i32 %10, %11
  %13 = call i32 @BIT_ULL(i32 31)
  %14 = or i32 %12, %13
  %15 = call i32 @GENMASK_ULL(i32 47, i32 45)
  %16 = or i32 %14, %15
  %17 = call i32 @GENMASK_ULL(i32 63, i32 56)
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @is_bitwise_subset(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BIT_ULL(i32 48)
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @vmx_basic_vmcs_revision_id(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @vmx_basic_vmcs_revision_id(i32 %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @vmx_basic_vmcs_size(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @vmx_basic_vmcs_size(i32 %52)
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %61 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %55, %46, %37, %29
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @is_bitwise_subset(i32, i32, i32) #1

declare dso_local i64 @vmx_basic_vmcs_revision_id(i32) #1

declare dso_local i64 @vmx_basic_vmcs_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
