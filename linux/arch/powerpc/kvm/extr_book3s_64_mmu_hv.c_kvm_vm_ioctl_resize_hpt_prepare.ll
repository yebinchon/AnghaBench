; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_vm_ioctl_resize_hpt_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_vm_ioctl_resize_hpt_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_resize_hpt* }
%struct.kvm_resize_hpt = type { i64, i32, i32, %struct.kvm* }
%struct.kvm_ppc_resize_hpt = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@resize_hpt_prepare_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvm_vm_ioctl_resize_hpt_prepare(%struct.kvm* %0, %struct.kvm_ppc_resize_hpt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ppc_resize_hpt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_resize_hpt*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ppc_resize_hpt* %1, %struct.kvm_ppc_resize_hpt** %5, align 8
  %10 = load %struct.kvm_ppc_resize_hpt*, %struct.kvm_ppc_resize_hpt** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_ppc_resize_hpt, %struct.kvm_ppc_resize_hpt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.kvm_ppc_resize_hpt*, %struct.kvm_ppc_resize_hpt** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_ppc_resize_hpt, %struct.kvm_ppc_resize_hpt* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.kvm*, %struct.kvm** %4, align 8
  %20 = call i64 @kvm_is_radix(%struct.kvm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %2
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %3, align 8
  br label %117

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %29, 18
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %32, 46
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %3, align 8
  br label %117

37:                                               ; preds = %31, %25
  %38 = load %struct.kvm*, %struct.kvm** %4, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %44, align 8
  store %struct.kvm_resize_hpt* %45, %struct.kvm_resize_hpt** %8, align 8
  %46 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %47 = icmp ne %struct.kvm_resize_hpt* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %37
  %49 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %50 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %56 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 100, i32* %9, align 4
  br label %71

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.kvm*, %struct.kvm** %4, align 8
  %68 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %69 = call i32 @resize_hpt_release(%struct.kvm* %67, %struct.kvm_resize_hpt* %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %62
  br label %110

72:                                               ; preds = %48
  %73 = load %struct.kvm*, %struct.kvm** %4, align 8
  %74 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %75 = call i32 @resize_hpt_release(%struct.kvm* %73, %struct.kvm_resize_hpt* %74)
  br label %76

76:                                               ; preds = %72, %37
  store i32 0, i32* %9, align 4
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %110

80:                                               ; preds = %76
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.kvm_resize_hpt* @kzalloc(i32 24, i32 %81)
  store %struct.kvm_resize_hpt* %82, %struct.kvm_resize_hpt** %8, align 8
  %83 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %84 = icmp ne %struct.kvm_resize_hpt* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %110

88:                                               ; preds = %80
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  %91 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %92 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %95 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.kvm*, %struct.kvm** %4, align 8
  %97 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %98 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %97, i32 0, i32 3
  store %struct.kvm* %96, %struct.kvm** %98, align 8
  %99 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %100 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %99, i32 0, i32 2
  %101 = load i32, i32* @resize_hpt_prepare_work, align 4
  %102 = call i32 @INIT_WORK(i32* %100, i32 %101)
  %103 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %104 = load %struct.kvm*, %struct.kvm** %4, align 8
  %105 = getelementptr inbounds %struct.kvm, %struct.kvm* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store %struct.kvm_resize_hpt* %103, %struct.kvm_resize_hpt** %106, align 8
  %107 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %108 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %107, i32 0, i32 2
  %109 = call i32 @schedule_work(i32* %108)
  store i32 100, i32* %9, align 4
  br label %110

110:                                              ; preds = %88, %85, %79, %71
  %111 = load %struct.kvm*, %struct.kvm** %4, align 8
  %112 = getelementptr inbounds %struct.kvm, %struct.kvm* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %3, align 8
  br label %117

117:                                              ; preds = %110, %34, %22
  %118 = load i64, i64* %3, align 8
  ret i64 %118
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @resize_hpt_release(%struct.kvm*, %struct.kvm_resize_hpt*) #1

declare dso_local %struct.kvm_resize_hpt* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
