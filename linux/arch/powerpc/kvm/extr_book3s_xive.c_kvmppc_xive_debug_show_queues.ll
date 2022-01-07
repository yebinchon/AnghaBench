; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_debug_show_queues.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_debug_show_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive_vcpu* }
%struct.kvmppc_xive_vcpu = type { i64*, %struct.xive_q* }
%struct.xive_q = type { i32, i32, i32, i64 }
%struct.irq_data = type { i32 }
%struct.xive_irq_data = type { i32 }

@KVMPPC_XIVE_Q_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c" [q%d]: \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"T=%d %08x %08x...\0A\00", align 1
@XIVE_ESB_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"E:%c%c I(%d:%llx:%llx)\00", align 1
@XIVE_ESB_VAL_P = common dso_local global i32 0, align 4
@XIVE_ESB_VAL_Q = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xive_debug_show_queues(%struct.seq_file* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvmppc_xive_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xive_q*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_data*, align 8
  %12 = alloca %struct.xive_irq_data*, align 8
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %16, align 8
  store %struct.kvmppc_xive_vcpu* %17, %struct.kvmppc_xive_vcpu** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %136, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @KVMPPC_XIVE_Q_COUNT, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %139

22:                                               ; preds = %18
  %23 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %5, align 8
  %24 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %23, i32 0, i32 1
  %25 = load %struct.xive_q*, %struct.xive_q** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %25, i64 %27
  store %struct.xive_q* %28, %struct.xive_q** %7, align 8
  %29 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %30 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %22
  %34 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %5, align 8
  %35 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %136

43:                                               ; preds = %33, %22
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = trunc i32 %45 to i8
  %47 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 signext %46)
  %48 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %49 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %43
  %53 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %54 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  %56 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %57 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @be32_to_cpup(i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %66 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %64, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %70 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @be32_to_cpup(i64 %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %78 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = trunc i32 %79 to i8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8 signext %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %52, %43
  %85 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %5, align 8
  %86 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %135

93:                                               ; preds = %84
  %94 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %5, align 8
  %95 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.irq_data* @irq_get_irq_data(i64 %100)
  store %struct.irq_data* %101, %struct.irq_data** %11, align 8
  %102 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  %103 = call %struct.xive_irq_data* @irq_data_get_irq_handler_data(%struct.irq_data* %102)
  store %struct.xive_irq_data* %103, %struct.xive_irq_data** %12, align 8
  %104 = load %struct.xive_irq_data*, %struct.xive_irq_data** %12, align 8
  %105 = load i32, i32* @XIVE_ESB_GET, align 4
  %106 = call i32 @xive_vm_esb_load(%struct.xive_irq_data* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @XIVE_ESB_VAL_P, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 80, i32 112
  %114 = trunc i32 %113 to i8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @XIVE_ESB_VAL_Q, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 81, i32 113
  %121 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %5, align 8
  %122 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.xive_irq_data*, %struct.xive_irq_data** %12, align 8
  %130 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8 signext %114, i32 %120, i64 %127, i32 %128, i32 %131)
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = call i32 @seq_puts(%struct.seq_file* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %93, %84
  br label %136

136:                                              ; preds = %135, %42
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %18

139:                                              ; preds = %18
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 signext, ...) #1

declare dso_local i32 @be32_to_cpup(i64) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i64) #1

declare dso_local %struct.xive_irq_data* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i32 @xive_vm_esb_load(%struct.xive_irq_data*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
