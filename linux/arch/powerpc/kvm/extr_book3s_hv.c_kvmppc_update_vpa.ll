; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_update_vpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_update_vpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm = type { i32 }
%struct.kvmppc_vpa = type { i64, i64, i8*, i64, i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvmppc_vpa*)* @kvmppc_update_vpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_update_vpa(%struct.kvm_vcpu* %0, %struct.kvmppc_vpa* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_vpa*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvmppc_vpa* %1, %struct.kvmppc_vpa** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load %struct.kvm*, %struct.kvm** %10, align 8
  store %struct.kvm* %11, %struct.kvm** %5, align 8
  br label %12

12:                                               ; preds = %45, %2
  %13 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %14 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.kvm*, %struct.kvm** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i8* @kvmppc_pin_guest_page(%struct.kvm* %23, i64 %24, i64* %7)
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %22, %12
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %33 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %46

37:                                               ; preds = %26
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.kvm*, %struct.kvm** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @kvmppc_unpin_guest_page(%struct.kvm* %41, i8* %42, i64 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %37
  br label %12

46:                                               ; preds = %36
  %47 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %48 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %54 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.kvm*, %struct.kvm** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @kvmppc_unpin_guest_page(%struct.kvm* %58, i8* %59, i64 %60, i32 0)
  store i8* null, i8** %6, align 8
  br label %62

62:                                               ; preds = %57, %51, %46
  %63 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %64 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.kvm*, %struct.kvm** %5, align 8
  %69 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %70 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %73 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %76 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @kvmppc_unpin_guest_page(%struct.kvm* %68, i8* %71, i64 %74, i32 %77)
  br label %79

79:                                               ; preds = %67, %62
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %82 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %85 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %87 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %86, i32 0, i32 4
  store i32 0, i32* %87, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %79
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %93 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr i8, i8* %91, i64 %94
  %96 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %97 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %90, %79
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @kvmppc_pin_guest_page(%struct.kvm*, i64, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvmppc_unpin_guest_page(%struct.kvm*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
