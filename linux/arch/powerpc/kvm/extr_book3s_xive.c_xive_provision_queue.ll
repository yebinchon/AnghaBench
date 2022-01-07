; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_provision_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_provision_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive_vcpu* }
%struct.kvmppc_xive_vcpu = type { i32, i32, %struct.xive_q*, %struct.kvmppc_xive* }
%struct.xive_q = type { i32 }
%struct.kvmppc_xive = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate queue %d for VCPU %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to configure queue %d for VCPU %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @xive_provision_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_provision_queue(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_xive_vcpu*, align 8
  %7 = alloca %struct.kvmppc_xive*, align 8
  %8 = alloca %struct.xive_q*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %13, align 8
  store %struct.kvmppc_xive_vcpu* %14, %struct.kvmppc_xive_vcpu** %6, align 8
  %15 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %16 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %15, i32 0, i32 3
  %17 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %16, align 8
  store %struct.kvmppc_xive* %17, %struct.kvmppc_xive** %7, align 8
  %18 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %19 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %18, i32 0, i32 2
  %20 = load %struct.xive_q*, %struct.xive_q** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %20, i64 %21
  store %struct.xive_q* %22, %struct.xive_q** %8, align 8
  %23 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %24 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %7, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @__get_free_pages(i32 %30, i32 %33)
  %35 = inttoptr i64 %34 to i32*
  %36 = bitcast i32* %35 to i8*
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %42 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %29
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %7, align 8
  %50 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = call i32 @memset(i8* %48, i32 0, i32 %52)
  %54 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %55 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %7, align 8
  %61 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xive_native_configure_queue(i32 %56, %struct.xive_q* %57, i64 %58, i8* %59, i32 %62, i32 1)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %47
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %69 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %47
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %39, %28
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @xive_native_configure_queue(i32, %struct.xive_q*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
