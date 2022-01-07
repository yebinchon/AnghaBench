; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_cleanup_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_cleanup_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvmppc_xive_vcpu*, i32, i64 }
%struct.kvmppc_xive_vcpu = type { i32, i32, i64*, %struct.kvmppc_xive_vcpu**, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"native_cleanup_vcpu(cpu=%d)\0A\00", align 1
@KVMPPC_XIVE_Q_COUNT = common dso_local global i32 0, align 4
@KVMPPC_IRQ_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_xive_native_cleanup_vcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_xive_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %7, align 8
  store %struct.kvmppc_xive_vcpu* %8, %struct.kvmppc_xive_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call i32 @kvmppc_xive_enabled(%struct.kvm_vcpu* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %122

13:                                               ; preds = %1
  %14 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %15 = icmp ne %struct.kvmppc_xive_vcpu* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %122

17:                                               ; preds = %13
  %18 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_devel(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = call i32 @kvmppc_xive_disable_vcpu_interrupts(%struct.kvm_vcpu* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %90, %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @KVMPPC_XIVE_Q_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %26
  %31 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %30
  %40 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %41 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %48 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %49 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %50 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @xive_cleanup_single_escalation(%struct.kvm_vcpu* %47, %struct.kvmppc_xive_vcpu* %48, i64 %55)
  br label %57

57:                                               ; preds = %46, %39
  %58 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %66 = call i32 @free_irq(i64 %64, %struct.kvm_vcpu* %65)
  %67 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @irq_dispose_mapping(i64 %73)
  %75 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %76 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %75, i32 0, i32 3
  %77 = load %struct.kvmppc_xive_vcpu**, %struct.kvmppc_xive_vcpu*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %77, i64 %79
  %81 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %80, align 8
  %82 = call i32 @kfree(%struct.kvmppc_xive_vcpu* %81)
  %83 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %84 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %57, %30
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %26

93:                                               ; preds = %26
  %94 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %95 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @xive_native_disable_vp(i32 %96)
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %109, %93
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @KVMPPC_XIVE_Q_COUNT, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @kvmppc_xive_native_cleanup_queue(%struct.kvm_vcpu* %106, i32 %107)
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %101

112:                                              ; preds = %101
  %113 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %114 = call i32 @kfree(%struct.kvmppc_xive_vcpu* %113)
  %115 = load i32, i32* @KVMPPC_IRQ_DEFAULT, align 4
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 8
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store %struct.kvmppc_xive_vcpu* null, %struct.kvmppc_xive_vcpu** %121, align 8
  br label %122

122:                                              ; preds = %112, %16, %12
  ret void
}

declare dso_local i32 @kvmppc_xive_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @kvmppc_xive_disable_vcpu_interrupts(%struct.kvm_vcpu*) #1

declare dso_local i32 @xive_cleanup_single_escalation(%struct.kvm_vcpu*, %struct.kvmppc_xive_vcpu*, i64) #1

declare dso_local i32 @free_irq(i64, %struct.kvm_vcpu*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @kfree(%struct.kvmppc_xive_vcpu*) #1

declare dso_local i32 @xive_native_disable_vp(i32) #1

declare dso_local i32 @kvmppc_xive_native_cleanup_queue(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
