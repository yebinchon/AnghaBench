; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_interrupt.c_kvm_mips_irq_deliver_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_interrupt.c_kvm_mips_irq_deliver_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm_vcpu_arch }
%struct.kvm_vcpu_arch = type { i32, i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@ST0_IE = common dso_local global i32 0, align 4
@ST0_EXL = common dso_local global i32 0, align 4
@ST0_ERL = common dso_local global i32 0, align 4
@IE_IRQ5 = common dso_local global i32 0, align 4
@EXCCODE_INT = common dso_local global i32 0, align 4
@IE_IRQ0 = common dso_local global i32 0, align 4
@IE_IRQ1 = common dso_local global i32 0, align 4
@IE_IRQ2 = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Delivering INT @ pc %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Trying to deliver interrupt when EXL is already set\0A\00", align 1
@CAUSEF_EXCCODE = common dso_local global i32 0, align 4
@CAUSEB_EXCCODE = common dso_local global i32 0, align 4
@CAUSEF_IV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_irq_deliver_cb(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu_arch*, align 8
  %10 = alloca %struct.mips_coproc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  store %struct.kvm_vcpu_arch* %12, %struct.kvm_vcpu_arch** %9, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %14, i32 0, i32 2
  %16 = load %struct.mips_coproc*, %struct.mips_coproc** %15, align 8
  store %struct.mips_coproc* %16, %struct.mips_coproc** %10, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %110 [
    i32 128, label %18
    i32 131, label %41
    i32 130, label %64
    i32 129, label %87
  ]

18:                                               ; preds = %3
  %19 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %20 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %19)
  %21 = load i32, i32* @ST0_IE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %26 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %25)
  %27 = load i32, i32* @ST0_EXL, align 4
  %28 = load i32, i32* @ST0_ERL, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %34 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %33)
  %35 = load i32, i32* @IE_IRQ5, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  %39 = load i32, i32* @EXCCODE_INT, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %32, %24, %18
  br label %111

41:                                               ; preds = %3
  %42 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %43 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %42)
  %44 = load i32, i32* @ST0_IE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %49 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %48)
  %50 = load i32, i32* @ST0_EXL, align 4
  %51 = load i32, i32* @ST0_ERL, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %57 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %56)
  %58 = load i32, i32* @IE_IRQ0, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  %62 = load i32, i32* @EXCCODE_INT, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %55, %47, %41
  br label %111

64:                                               ; preds = %3
  %65 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %66 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %65)
  %67 = load i32, i32* @ST0_IE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %72 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %71)
  %73 = load i32, i32* @ST0_EXL, align 4
  %74 = load i32, i32* @ST0_ERL, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %80 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %79)
  %81 = load i32, i32* @IE_IRQ1, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  store i32 1, i32* %7, align 4
  %85 = load i32, i32* @EXCCODE_INT, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %78, %70, %64
  br label %111

87:                                               ; preds = %3
  %88 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %89 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %88)
  %90 = load i32, i32* @ST0_IE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %95 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %94)
  %96 = load i32, i32* @ST0_EXL, align 4
  %97 = load i32, i32* @ST0_ERL, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %93
  %102 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %103 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %102)
  %104 = load i32, i32* @IE_IRQ2, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  store i32 1, i32* %7, align 4
  %108 = load i32, i32* @EXCCODE_INT, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %101, %93, %87
  br label %111

110:                                              ; preds = %3
  br label %111

111:                                              ; preds = %110, %109, %86, %63, %40
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %180

114:                                              ; preds = %111
  %115 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %116 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %115)
  %117 = load i32, i32* @ST0_EXL, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %114
  %121 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %122 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @kvm_write_c0_guest_epc(%struct.mips_coproc* %121, i32 %124)
  %126 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %127 = load i32, i32* @ST0_EXL, align 4
  %128 = call i32 @kvm_set_c0_guest_status(%struct.mips_coproc* %126, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @CAUSEF_BD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %120
  %134 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %135 = load i32, i32* @CAUSEF_BD, align 4
  %136 = call i32 @kvm_set_c0_guest_cause(%struct.mips_coproc* %134, i32 %135)
  br label %141

137:                                              ; preds = %120
  %138 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %139 = load i32, i32* @CAUSEF_BD, align 4
  %140 = call i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @kvm_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %144)
  br label %148

146:                                              ; preds = %114
  %147 = call i32 @kvm_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %141
  %149 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %150 = load i32, i32* @CAUSEF_EXCCODE, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %153 = shl i32 %151, %152
  %154 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %149, i32 %150, i32 %153)
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %156 = call i32 @kvm_mips_guest_exception_base(%struct.kvm_vcpu* %155)
  %157 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %158 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %160 = call i32 @kvm_read_c0_guest_cause(%struct.mips_coproc* %159)
  %161 = load i32, i32* @CAUSEF_IV, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %148
  %165 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %166 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 512
  store i32 %168, i32* %166, align 8
  br label %174

169:                                              ; preds = %148
  %170 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %171 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 384
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %177, i32 0, i32 1
  %179 = call i32 @clear_bit(i32 %175, i32* %178)
  br label %180

180:                                              ; preds = %174, %111
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_write_c0_guest_epc(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_debug(i8*, i32) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i32 @kvm_change_c0_guest_cause(%struct.mips_coproc*, i32, i32) #1

declare dso_local i32 @kvm_mips_guest_exception_base(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_c0_guest_cause(%struct.mips_coproc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
