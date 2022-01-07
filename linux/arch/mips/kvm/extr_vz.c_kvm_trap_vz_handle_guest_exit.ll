; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_guest_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_guest_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@MIPS_GCTL0_GEXC = common dso_local global i32 0, align 4
@MIPS_GCTL0_GEXC_SHIFT = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@KVM_TRACE_EXIT_GEXCCODE_BASE = common dso_local global i64 0, align 8
@EMULATE_HYPERCALL = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@RESUME_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_trap_vz_handle_guest_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_guest_exit(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %3, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MIPS_GCTL0_GEXC, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @MIPS_GCTL0_GEXC_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = load i64, i64* @KVM_TRACE_EXIT_GEXCCODE_BASE, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @trace_kvm_exit(%struct.kvm_vcpu* %27, i64 %31)
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %107 [
    i32 132, label %34
    i32 130, label %44
    i32 128, label %54
    i32 131, label %64
    i32 129, label %75
    i32 134, label %86
    i32 133, label %96
  ]

34:                                               ; preds = %1
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call i32 @kvm_trap_vz_handle_gpsi(i32 %40, i32* %41, %struct.kvm_vcpu* %42)
  store i32 %43, i32* %5, align 4
  br label %118

44:                                               ; preds = %1
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %53 = call i32 @kvm_trap_vz_handle_gsfc(i32 %50, i32* %51, %struct.kvm_vcpu* %52)
  store i32 %53, i32* %5, align 4
  br label %118

54:                                               ; preds = %1
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = call i32 @kvm_trap_vz_handle_hc(i32 %60, i32* %61, %struct.kvm_vcpu* %62)
  store i32 %63, i32* %5, align 4
  br label %118

64:                                               ; preds = %1
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = call i32 @kvm_trap_vz_no_handler_guest_exit(i32 %70, i32 %71, i32* %72, %struct.kvm_vcpu* %73)
  store i32 %74, i32* %5, align 4
  br label %118

75:                                               ; preds = %1
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %85 = call i32 @kvm_trap_vz_no_handler_guest_exit(i32 %81, i32 %82, i32* %83, %struct.kvm_vcpu* %84)
  store i32 %85, i32* %5, align 4
  br label %118

86:                                               ; preds = %1
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = call i32 @kvm_trap_vz_handle_ghfc(i32 %92, i32* %93, %struct.kvm_vcpu* %94)
  store i32 %95, i32* %5, align 4
  br label %118

96:                                               ; preds = %1
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = call i32 @kvm_trap_vz_no_handler_guest_exit(i32 %102, i32 %103, i32* %104, %struct.kvm_vcpu* %105)
  store i32 %106, i32* %5, align 4
  br label %118

107:                                              ; preds = %1
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %117 = call i32 @kvm_trap_vz_no_handler_guest_exit(i32 %113, i32 %114, i32* %115, %struct.kvm_vcpu* %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %107, %96, %86, %75, %64, %54, %44, %34
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @EMULATE_DONE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %123, i32* %7, align 4
  br label %139

124:                                              ; preds = %118
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @EMULATE_HYPERCALL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %130 = call i32 @kvm_mips_handle_hypcall(%struct.kvm_vcpu* %129)
  store i32 %130, i32* %7, align 4
  br label %138

131:                                              ; preds = %124
  %132 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @RESUME_HOST, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %131, %128
  br label %139

139:                                              ; preds = %138, %122
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @trace_kvm_exit(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_trap_vz_handle_gpsi(i32, i32*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_trap_vz_handle_gsfc(i32, i32*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_trap_vz_handle_hc(i32, i32*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_trap_vz_no_handler_guest_exit(i32, i32, i32*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_trap_vz_handle_ghfc(i32, i32*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_handle_hypcall(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
