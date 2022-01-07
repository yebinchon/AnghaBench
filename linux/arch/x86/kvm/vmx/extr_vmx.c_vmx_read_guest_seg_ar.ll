; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_read_guest_seg_ar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_read_guest_seg_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SEG_FIELD_AR = common dso_local global i32 0, align 4
@kvm_vmx_segment_fields = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, i32)* @vmx_read_guest_seg_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_read_guest_seg_ar(%struct.vcpu_vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* %13, i32** %5, align 8
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SEG_FIELD_AR, align 4
  %17 = call i32 @vmx_segment_cache_test_set(%struct.vcpu_vmx* %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_vmx_segment_fields, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vmcs_read32(i32 %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %2
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @vmx_segment_cache_test_set(%struct.vcpu_vmx*, i32, i32) #1

declare dso_local i32 @vmcs_read32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
