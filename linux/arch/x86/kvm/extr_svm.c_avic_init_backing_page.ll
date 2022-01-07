; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_init_backing_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_init_backing_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AVIC_MAX_PHYSICAL_ID_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVIC_PHYSICAL_ID_ENTRY_BACKING_PAGE_MASK = common dso_local global i32 0, align 4
@AVIC_PHYSICAL_ID_ENTRY_VALID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @avic_init_backing_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avic_init_backing_page(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vcpu_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %12)
  store %struct.vcpu_svm* %13, %struct.vcpu_svm** %8, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 @avic_init_access_page(%struct.kvm_vcpu* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %75

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AVIC_MAX_PHYSICAL_ID_COUNT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %20
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %29 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %75

39:                                               ; preds = %27
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @virt_to_page(i32 %46)
  %48 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %49 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32* @avic_get_physical_id_entry(%struct.kvm_vcpu* %50, i32 %51)
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %39
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %75

58:                                               ; preds = %39
  %59 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %60 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @page_to_phys(i32 %61)
  %63 = load i32, i32* @AVIC_PHYSICAL_ID_ENTRY_BACKING_PAGE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @AVIC_PHYSICAL_ID_ENTRY_VALID_MASK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @__sme_set(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @WRITE_ONCE(i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %74 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %58, %55, %36, %24, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @avic_init_access_page(%struct.kvm_vcpu*) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32* @avic_get_physical_id_entry(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__sme_set(i32) #1

declare dso_local i32 @page_to_phys(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
