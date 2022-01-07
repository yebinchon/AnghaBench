; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_cr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@enable_unrestricted_guest = common dso_local global i32 0, align 4
@KVM_EXIT_SET_TPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Guest should always own CR0.TS\00", align 1
@X86_CR0_TS = common dso_local global i32 0, align 4
@LMSW_SOURCE_DATA_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"unhandled control register: op %d cr %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %12 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %13 = call i64 @vmcs_readl(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, 15
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* %4, align 8
  %18 = lshr i64 %17, 8
  %19 = and i64 %18, 15
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %4, align 8
  %22 = lshr i64 %21, 4
  %23 = and i64 %22, 3
  switch i64 %23, label %146 [
    i64 0, label %24
    i64 2, label %85
    i64 1, label %98
    i64 3, label %128
  ]

24:                                               ; preds = %1
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @kvm_register_readl(%struct.kvm_vcpu* %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @trace_kvm_cr_write(i32 %28, i32 %30)
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %84 [
    i32 0, label %33
    i32 3, label %40
    i32 4, label %49
    i32 8, label %56
  ]

33:                                               ; preds = %24
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @handle_set_cr0(%struct.kvm_vcpu* %34, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @kvm_complete_insn_gp(%struct.kvm_vcpu* %37, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %159

40:                                               ; preds = %24
  %41 = load i32, i32* @enable_unrestricted_guest, align 4
  %42 = call i32 @WARN_ON_ONCE(i32 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @kvm_set_cr3(%struct.kvm_vcpu* %43, i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @kvm_complete_insn_gp(%struct.kvm_vcpu* %46, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %159

49:                                               ; preds = %24
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @handle_set_cr4(%struct.kvm_vcpu* %50, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @kvm_complete_insn_gp(%struct.kvm_vcpu* %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %159

56:                                               ; preds = %24
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = call i8* @kvm_get_cr8(%struct.kvm_vcpu* %57)
  store i8* %58, i8** %10, align 8
  %59 = load i64, i64* %5, align 8
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %11, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @kvm_set_cr8(%struct.kvm_vcpu* %61, i8* %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @kvm_complete_insn_gp(%struct.kvm_vcpu* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %159

72:                                               ; preds = %56
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ule i8* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %159

78:                                               ; preds = %72
  %79 = load i64, i64* @KVM_EXIT_SET_TPR, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 %79, i64* %83, align 8
  store i32 0, i32* %2, align 4
  br label %159

84:                                               ; preds = %24
  br label %147

85:                                               ; preds = %1
  %86 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = load i32, i32* @X86_CR0_TS, align 4
  %90 = xor i32 %89, -1
  %91 = call i32 @kvm_read_cr0_bits(%struct.kvm_vcpu* %88, i32 %90)
  %92 = call i32 @vmx_set_cr0(%struct.kvm_vcpu* %87, i32 %91)
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %93)
  %95 = call i32 @trace_kvm_cr_write(i32 0, i32 %94)
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %96)
  store i32 %97, i32* %2, align 4
  br label %159

98:                                               ; preds = %1
  %99 = load i32, i32* %6, align 4
  switch i32 %99, label %127 [
    i32 3, label %100
    i32 8, label %114
  ]

100:                                              ; preds = %98
  %101 = load i32, i32* @enable_unrestricted_guest, align 4
  %102 = call i32 @WARN_ON_ONCE(i32 %101)
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = call i64 @kvm_read_cr3(%struct.kvm_vcpu* %103)
  store i64 %104, i64* %5, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @kvm_register_write(%struct.kvm_vcpu* %105, i32 %106, i64 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @trace_kvm_cr_read(i32 %109, i64 %110)
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %112)
  store i32 %113, i32* %2, align 4
  br label %159

114:                                              ; preds = %98
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = call i8* @kvm_get_cr8(%struct.kvm_vcpu* %115)
  %117 = ptrtoint i8* %116 to i64
  store i64 %117, i64* %5, align 8
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @kvm_register_write(%struct.kvm_vcpu* %118, i32 %119, i64 %120)
  %122 = load i32, i32* %6, align 4
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @trace_kvm_cr_read(i32 %122, i64 %123)
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %126 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %125)
  store i32 %126, i32* %2, align 4
  br label %159

127:                                              ; preds = %98
  br label %147

128:                                              ; preds = %1
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* @LMSW_SOURCE_DATA_SHIFT, align 8
  %131 = lshr i64 %129, %130
  %132 = and i64 %131, 15
  store i64 %132, i64* %5, align 8
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %133)
  %135 = sext i32 %134 to i64
  %136 = and i64 %135, -16
  %137 = load i64, i64* %5, align 8
  %138 = or i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 @trace_kvm_cr_write(i32 0, i32 %139)
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @kvm_lmsw(%struct.kvm_vcpu* %141, i64 %142)
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %145 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %144)
  store i32 %145, i32* %2, align 4
  br label %159

146:                                              ; preds = %1
  br label %147

147:                                              ; preds = %146, %127, %84
  %148 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %149 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %153 = load i64, i64* %4, align 8
  %154 = lshr i64 %153, 4
  %155 = trunc i64 %154 to i32
  %156 = and i32 %155, 3
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @vcpu_unimpl(%struct.kvm_vcpu* %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %147, %128, %114, %100, %85, %78, %76, %70, %49, %40, %33
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i64 @kvm_register_readl(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_cr_write(i32, i32) #1

declare dso_local i32 @handle_set_cr0(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_complete_insn_gp(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kvm_set_cr3(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @handle_set_cr4(%struct.kvm_vcpu*, i64) #1

declare dso_local i8* @kvm_get_cr8(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_set_cr8(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @vmx_set_cr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_cr0_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @trace_kvm_cr_read(i32, i64) #1

declare dso_local i32 @kvm_lmsw(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_unimpl(%struct.kvm_vcpu*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
