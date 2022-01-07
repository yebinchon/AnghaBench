; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_segment_cache_test_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_segment_cache_test_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SEG_FIELD_NR = common dso_local global i32 0, align 4
@VCPU_EXREG_SEGMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, i32, i32)* @vmx_segment_cache_test_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_segment_cache_test_set(%struct.vcpu_vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SEG_FIELD_NR, align 4
  %11 = mul i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %11, %12
  %14 = shl i32 1, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VCPU_EXREG_SEGMENTS, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @VCPU_EXREG_SEGMENTS, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %28 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %34 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %3
  %37 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %38 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
