; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_async_page_present.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_async_page_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i64, i64 }
%struct.kvm_async_pf = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.x86_exception = type { i32, i32, i32, i32, i64, i64 }

@KVM_ASYNC_PF_ENABLED = common dso_local global i32 0, align 4
@KVM_PV_REASON_PAGE_NOT_PRESENT = common dso_local global i64 0, align 8
@PF_VECTOR = common dso_local global i64 0, align 8
@KVM_PV_REASON_PAGE_READY = common dso_local global i32 0, align 4
@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_async_page_present(%struct.kvm_vcpu* %0, %struct.kvm_async_pf* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_async_pf*, align 8
  %5 = alloca %struct.x86_exception, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_async_pf* %1, %struct.kvm_async_pf** %4, align 8
  %7 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kvm_del_async_pf_gfn(%struct.kvm_vcpu* %16, i32 %20)
  br label %22

22:                                               ; preds = %15, %11
  %23 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @trace_kvm_async_pf_ready(i32 %26, i32 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KVM_ASYNC_PF_ENABLED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %116

39:                                               ; preds = %22
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @apf_get_user(%struct.kvm_vcpu* %40, i64* %6)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %116, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @KVM_PV_REASON_PAGE_NOT_PRESENT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %43
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %47
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PF_VECTOR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %54
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = call i32 @apf_put_user(%struct.kvm_vcpu* %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %95, label %66

66:                                               ; preds = %62
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 6
  store i64 0, i64* %86, align 8
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  store i32 0, i32* %90, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  br label %115

95:                                               ; preds = %62, %54, %47, %43
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = load i32, i32* @KVM_PV_REASON_PAGE_READY, align 4
  %98 = call i32 @apf_put_user(%struct.kvm_vcpu* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* @PF_VECTOR, align 8
  %102 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 5
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %107 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %112, %struct.x86_exception* %5)
  br label %114

114:                                              ; preds = %100, %95
  br label %115

115:                                              ; preds = %114, %66
  br label %116

116:                                              ; preds = %115, %39, %22
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  ret void
}

declare dso_local i32 @kvm_del_async_pf_gfn(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_async_pf_ready(i32, i32) #1

declare dso_local i32 @apf_get_user(%struct.kvm_vcpu*, i64*) #1

declare dso_local i32 @apf_put_user(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, %struct.x86_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
