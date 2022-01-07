; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.kvm_vcpu*, i32, i32, i32)* }

@RET_PF_INVALID = common dso_local global i32 0, align 4
@PFERR_RSVD_MASK = common dso_local global i32 0, align 4
@RET_PF_EMULATE = common dso_local global i32 0, align 4
@RET_PF_RETRY = common dso_local global i32 0, align 4
@PFERR_NESTED_GUEST_PAGE = common dso_local global i32 0, align 4
@EMULTYPE_ALLOW_RETRY = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mmu_page_fault(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %5
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  br label %36

36:                                               ; preds = %28, %5
  %37 = load i32, i32* @RET_PF_INVALID, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PFERR_RSVD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @handle_mmio_page_fault(%struct.kvm_vcpu* %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @RET_PF_EMULATE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %118

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @RET_PF_INVALID, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32 (%struct.kvm_vcpu*, i32, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32, i32)** %62, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @lower_32_bits(i32 %66)
  %68 = call i32 %63(%struct.kvm_vcpu* %64, i32 %65, i32 %67, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @RET_PF_INVALID, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON(i32 %72)
  br label %74

74:                                               ; preds = %57, %53
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @RET_PF_RETRY, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %146

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %146

84:                                               ; preds = %79
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @PFERR_NESTED_GUEST_PAGE, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @PFERR_NESTED_GUEST_PAGE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @gpa_to_gfn(i32 %102)
  %104 = call i32 @kvm_mmu_unprotect_page(i32 %101, i32 %103)
  store i32 1, i32* %6, align 4
  br label %146

105:                                              ; preds = %92, %84
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @mmio_info_in_cache(%struct.kvm_vcpu* %106, i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %113 = call i32 @is_guest_mode(%struct.kvm_vcpu* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @EMULTYPE_ALLOW_RETRY, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %115, %111, %105
  br label %118

118:                                              ; preds = %117, %51
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi i1 [ false, %118 ], [ %124, %121 ]
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %132, align 8
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %135 = call i32 %133(%struct.kvm_vcpu* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  store i32 1, i32* %6, align 4
  br label %146

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %125
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @x86_emulate_instruction(%struct.kvm_vcpu* %140, i32 %141, i32 %142, i8* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %139, %137, %98, %82, %78
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @handle_mmio_page_fault(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kvm_mmu_unprotect_page(i32, i32) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

declare dso_local i32 @mmio_info_in_cache(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @x86_emulate_instruction(%struct.kvm_vcpu*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
