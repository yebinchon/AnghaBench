; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_cleanup_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_cleanup_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.kvmppc_xive_vcpu*, i32, i64 }
%struct.kvmppc_xive_vcpu = type { i32, i64, i32, i32, %struct.xive_q*, %struct.kvmppc_xive_vcpu**, i64*, %struct.TYPE_7__*, i32 }
%struct.xive_q = type { i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"cleanup_vcpu(cpu=%d)\0A\00", align 1
@XIVE_ESB_SET_PQ_01 = common dso_local global i32 0, align 4
@KVMPPC_XIVE_Q_COUNT = common dso_local global i32 0, align 4
@KVMPPC_IRQ_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_xive_cleanup_vcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_xive_vcpu*, align 8
  %4 = alloca %struct.kvmppc_xive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xive_q*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %9, align 8
  store %struct.kvmppc_xive_vcpu* %10, %struct.kvmppc_xive_vcpu** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %15, align 8
  store %struct.kvmppc_xive* %16, %struct.kvmppc_xive** %4, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = call i32 @kvmppc_xics_enabled(%struct.kvm_vcpu* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %166

21:                                               ; preds = %1
  %22 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %23 = icmp ne %struct.kvmppc_xive_vcpu* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %166

25:                                               ; preds = %21
  %26 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_devel(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = call i32 @kvmppc_xive_disable_vcpu_interrupts(%struct.kvm_vcpu* %32)
  %34 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %34, i32 0, i32 2
  %36 = load i32, i32* @XIVE_ESB_SET_PQ_01, align 4
  %37 = call i32 @xive_vm_esb_load(i32* %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %96, %25
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @KVMPPC_XIVE_Q_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  %43 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %44 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %43, i32 0, i32 6
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %42
  %52 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %53 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %52, i32 0, i32 7
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %60 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %61 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %61, i32 0, i32 6
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @xive_cleanup_single_escalation(%struct.kvm_vcpu* %59, %struct.kvmppc_xive_vcpu* %60, i64 %67)
  br label %69

69:                                               ; preds = %58, %51
  %70 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %71 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %70, i32 0, i32 6
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %78 = call i32 @free_irq(i64 %76, %struct.kvm_vcpu* %77)
  %79 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %79, i32 0, i32 6
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @irq_dispose_mapping(i64 %85)
  %87 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %87, i32 0, i32 5
  %89 = load %struct.kvmppc_xive_vcpu**, %struct.kvmppc_xive_vcpu*** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %89, i64 %91
  %93 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %92, align 8
  %94 = call i32 @kfree(%struct.kvmppc_xive_vcpu* %93)
  br label %95

95:                                               ; preds = %69, %42
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %38

99:                                               ; preds = %38
  %100 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %101 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @xive_native_disable_vp(i32 %102)
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %140, %99
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @KVMPPC_XIVE_Q_COUNT, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %107
  %112 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %113 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %112, i32 0, i32 4
  %114 = load %struct.xive_q*, %struct.xive_q** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %114, i64 %116
  store %struct.xive_q* %117, %struct.xive_q** %6, align 8
  %118 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %119 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.xive_q*, %struct.xive_q** %6, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @xive_native_disable_queue(i32 %120, %struct.xive_q* %121, i32 %122)
  %124 = load %struct.xive_q*, %struct.xive_q** %6, align 8
  %125 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %139

128:                                              ; preds = %111
  %129 = load %struct.xive_q*, %struct.xive_q** %6, align 8
  %130 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = ptrtoint i32* %131 to i64
  %133 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %4, align 8
  %134 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @free_pages(i64 %132, i32 %135)
  %137 = load %struct.xive_q*, %struct.xive_q** %6, align 8
  %138 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %128, %111
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %107

143:                                              ; preds = %107
  %144 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %145 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %150 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %149, i32 0, i32 2
  %151 = call i32 @xive_cleanup_irq_data(i32* %150)
  %152 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %153 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @xive_native_free_irq(i64 %154)
  br label %156

156:                                              ; preds = %148, %143
  %157 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %3, align 8
  %158 = call i32 @kfree(%struct.kvmppc_xive_vcpu* %157)
  %159 = load i32, i32* @KVMPPC_IRQ_DEFAULT, align 4
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %161 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 8
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %164 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store %struct.kvmppc_xive_vcpu* null, %struct.kvmppc_xive_vcpu** %165, align 8
  br label %166

166:                                              ; preds = %156, %24, %20
  ret void
}

declare dso_local i32 @kvmppc_xics_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @kvmppc_xive_disable_vcpu_interrupts(%struct.kvm_vcpu*) #1

declare dso_local i32 @xive_vm_esb_load(i32*, i32) #1

declare dso_local i32 @xive_cleanup_single_escalation(%struct.kvm_vcpu*, %struct.kvmppc_xive_vcpu*, i64) #1

declare dso_local i32 @free_irq(i64, %struct.kvm_vcpu*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @kfree(%struct.kvmppc_xive_vcpu*) #1

declare dso_local i32 @xive_native_disable_vp(i32) #1

declare dso_local i32 @xive_native_disable_queue(i32, %struct.xive_q*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @xive_cleanup_irq_data(i32*) #1

declare dso_local i32 @xive_native_free_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
