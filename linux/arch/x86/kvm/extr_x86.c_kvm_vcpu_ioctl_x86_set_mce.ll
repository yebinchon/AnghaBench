; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_mce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }
%struct.kvm_x86_mce = type { i32, i32, i32, i32, i32 }

@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@MCG_CTL_P = common dso_local global i32 0, align 4
@MCG_STATUS_MCIP = common dso_local global i32 0, align 4
@X86_CR4_MCE = common dso_local global i32 0, align 4
@KVM_REQ_TRIPLE_FAULT = common dso_local global i32 0, align 4
@MCI_STATUS_OVER = common dso_local global i32 0, align 4
@MC_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_x86_mce*)* @kvm_vcpu_ioctl_x86_set_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_x86_set_mce(%struct.kvm_vcpu* %0, %struct.kvm_x86_mce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_x86_mce*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_x86_mce* %1, %struct.kvm_x86_mce** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %7, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MCI_STATUS_VAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %186

34:                                               ; preds = %24
  %35 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MCI_STATUS_UC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MCG_CTL_P, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %186

53:                                               ; preds = %46, %41, %34
  %54 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 4, %56
  %58 = load i32*, i32** %8, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %8, align 8
  %61 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MCI_STATUS_UC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %186

73:                                               ; preds = %67, %53
  %74 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MCI_STATUS_UC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %135

80:                                               ; preds = %73
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MCG_STATUS_MCIP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %90 = load i32, i32* @X86_CR4_MCE, align 4
  %91 = call i32 @kvm_read_cr4_bits(%struct.kvm_vcpu* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88, %80
  %94 = load i32, i32* @KVM_REQ_TRIPLE_FAULT, align 4
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %96 = call i32 @kvm_make_request(i32 %94, %struct.kvm_vcpu* %95)
  store i32 0, i32* %3, align 4
  br label %186

97:                                               ; preds = %88
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MCI_STATUS_VAL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* @MCI_STATUS_OVER, align 4
  %106 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %107 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %112 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %117 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %122 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %125 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 4
  %127 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %128 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %133 = load i32, i32* @MC_VECTOR, align 4
  %134 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %132, i32 %133)
  br label %185

135:                                              ; preds = %73
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MCI_STATUS_VAL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MCI_STATUS_UC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %178, label %149

149:                                              ; preds = %142, %135
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MCI_STATUS_VAL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load i32, i32* @MCI_STATUS_OVER, align 4
  %158 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %159 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %149
  %163 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %164 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %169 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %8, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  store i32 %170, i32* %172, align 4
  %173 = load %struct.kvm_x86_mce*, %struct.kvm_x86_mce** %5, align 8
  %174 = getelementptr inbounds %struct.kvm_x86_mce, %struct.kvm_x86_mce* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  store i32 %175, i32* %177, align 4
  br label %184

178:                                              ; preds = %142
  %179 = load i32, i32* @MCI_STATUS_OVER, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %162
  br label %185

185:                                              ; preds = %184, %110
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %93, %72, %52, %31
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
