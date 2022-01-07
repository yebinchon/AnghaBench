; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_update_lpcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_update_lpcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.kvmppc_vcore** }
%struct.kvmppc_vcore = type { i64, i32 }

@KVM_MAX_VCORES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_update_lpcr(%struct.kvm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %76

19:                                               ; preds = %3
  %20 = load %struct.kvm*, %struct.kvm** %4, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %26, %27
  %29 = load %struct.kvm*, %struct.kvm** %4, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %73, %19
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @KVM_MAX_VCORES, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %32
  %37 = load %struct.kvm*, %struct.kvm** %4, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %40, i64 %41
  %43 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %42, align 8
  store %struct.kvmppc_vcore* %43, %struct.kvmppc_vcore** %9, align 8
  %44 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %45 = icmp ne %struct.kvmppc_vcore* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %73

47:                                               ; preds = %36
  %48 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %49 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %48, i32 0, i32 1
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %52 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = xor i64 %54, -1
  %56 = and i64 %53, %55
  %57 = load i64, i64* %5, align 8
  %58 = or i64 %56, %57
  %59 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %60 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %62 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %8, align 8
  %66 = load %struct.kvm*, %struct.kvm** %4, align 8
  %67 = getelementptr inbounds %struct.kvm, %struct.kvm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %47
  br label %76

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i64, i64* %7, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %32

76:                                               ; preds = %18, %71, %32
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
