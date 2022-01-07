; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_update_permission_bitmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_update_permission_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32*, i32 }

@ACC_EXEC_MASK = common dso_local global i32 0, align 4
@ACC_WRITE_MASK = common dso_local global i32 0, align 4
@ACC_USER_MASK = common dso_local global i32 0, align 4
@X86_CR4_SMEP = common dso_local global i32 0, align 4
@X86_CR4_SMAP = common dso_local global i32 0, align 4
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@PFERR_FETCH_MASK = common dso_local global i32 0, align 4
@PFERR_RSVD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu*, i32)* @update_permission_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_permission_bitmask(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* @ACC_EXEC_MASK, align 4
  %22 = call i32 @BYTE_MASK(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @ACC_WRITE_MASK, align 4
  %24 = call i32 @BYTE_MASK(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @ACC_USER_MASK, align 4
  %26 = call i32 @BYTE_MASK(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = load i32, i32* @X86_CR4_SMEP, align 4
  %29 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = load i32, i32* @X86_CR4_SMAP, align 4
  %34 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = call i32 @is_write_protection(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %154, %3
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp ult i32 %40, %44
  br i1 %45, label %46, label %157

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = xor i32 %54, -1
  br label %57

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ 0, %56 ]
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @PFERR_USER_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = xor i32 %64, -1
  br label %67

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i32 [ %65, %63 ], [ 0, %66 ]
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = xor i32 %74, -1
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  store i32 %78, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %138, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @PFERR_USER_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i32 [ 0, %86 ], [ %88, %87 ]
  store i32 %90, i32* %20, align 4
  %91 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %92 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %95, %89
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @PFERR_USER_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %15, align 4
  br label %107

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %107, %96
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %20, align 4
  br label %120

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %120, %109
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @PFERR_RSVD_MASK, align 4
  %128 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %20, align 4
  br label %135

135:                                              ; preds = %133, %132
  %136 = phi i32 [ 0, %132 ], [ %134, %133 ]
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %135, %122
  br label %138

138:                                              ; preds = %137, %77
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %18, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %149 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %7, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %39

157:                                              ; preds = %39
  ret void
}

declare dso_local i32 @BYTE_MASK(i32) #1

declare dso_local i64 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_write_protection(%struct.kvm_vcpu*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
