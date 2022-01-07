; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vcpu_svm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vmcb_seg = type { i32, i32, i32, i32 }

@SVM_SELECTOR_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_S_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_DPL_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_P_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_AVL_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_L_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_DB_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_G_SHIFT = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VMCB_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)* @svm_set_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_set_segment(%struct.kvm_vcpu* %0, %struct.kvm_segment* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_svm*, align 8
  %8 = alloca %struct.vmcb_seg*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %9)
  store %struct.vcpu_svm* %10, %struct.vcpu_svm** %7, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu* %11, i32 %12)
  store %struct.vmcb_seg* %13, %struct.vmcb_seg** %8, align 8
  %14 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %18 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %23 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %28 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SVM_SELECTOR_TYPE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %35 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = load i32, i32* @SVM_SELECTOR_S_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %43 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = load i32, i32* @SVM_SELECTOR_DPL_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %53 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %3
  %62 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %61, %3
  %68 = phi i1 [ false, %3 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @SVM_SELECTOR_P_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %73 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %77 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = load i32, i32* @SVM_SELECTOR_AVL_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %83 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 1
  %90 = load i32, i32* @SVM_SELECTOR_L_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %93 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %97 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  %100 = load i32, i32* @SVM_SELECTOR_DB_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %103 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %107 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 1
  %110 = load i32, i32* @SVM_SELECTOR_G_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %113 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @VCPU_SREG_SS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %67
  %120 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %121 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 3
  %124 = load %struct.vcpu_svm*, %struct.vcpu_svm** %7, align 8
  %125 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 %123, i32* %128, align 4
  br label %129

129:                                              ; preds = %119, %67
  %130 = load %struct.vcpu_svm*, %struct.vcpu_svm** %7, align 8
  %131 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* @VMCB_SEG, align 4
  %134 = call i32 @mark_dirty(%struct.TYPE_4__* %132, i32 %133)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
