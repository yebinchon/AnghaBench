; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_reset_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_reset_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32, i64 }

@KVM_XIVE_ESB_PAGE_OFFSET = common dso_local global i64 0, align 8
@KVMPPC_XIVE_NR_IRQS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"clearing esb pages for girq 0x%lx\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64)* @kvmppc_xive_native_reset_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xive_native_reset_mapped(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_xive*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %10, align 8
  store %struct.kvmppc_xive* %11, %struct.kvmppc_xive** %6, align 8
  %12 = load i64, i64* @KVM_XIVE_ESB_PAGE_OFFSET, align 8
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 2
  %15 = add i64 %12, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @KVMPPC_XIVE_NR_IRQS, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %26 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %29 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %34 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = shl i64 %36, %37
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = shl i64 2, %39
  %41 = call i32 @unmap_mapping_range(i64 %35, i64 %38, i64 %40, i32 1)
  br label %42

42:                                               ; preds = %32, %22
  %43 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %44 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unmap_mapping_range(i64, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
