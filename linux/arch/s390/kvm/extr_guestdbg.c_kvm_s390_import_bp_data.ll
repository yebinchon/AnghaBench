; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_kvm_s390_import_bp_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_kvm_s390_import_bp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch* }
%struct.kvm_hw_wp_info_arch = type { i32, i32, i32 }
%struct.kvm_guest_debug = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.kvm_hw_breakpoint = type { i32, i32, i32 }
%struct.kvm_hw_bp_info_arch = type { i32, i32, i32 }

@MAX_BP_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_import_bp_data(%struct.kvm_vcpu* %0, %struct.kvm_guest_debug* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_guest_debug*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_hw_breakpoint*, align 8
  %11 = alloca %struct.kvm_hw_wp_info_arch*, align 8
  %12 = alloca %struct.kvm_hw_bp_info_arch*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_guest_debug* %1, %struct.kvm_guest_debug** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.kvm_hw_breakpoint* null, %struct.kvm_hw_breakpoint** %10, align 8
  store %struct.kvm_hw_wp_info_arch* null, %struct.kvm_hw_wp_info_arch** %11, align 8
  store %struct.kvm_hw_bp_info_arch* null, %struct.kvm_hw_bp_info_arch** %12, align 8
  %13 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %205

25:                                               ; preds = %18
  %26 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX_BP_COUNT, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %205

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 12, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.kvm_hw_wp_info_arch* @memdup_user(i32 %40, i32 %47)
  %49 = bitcast %struct.kvm_hw_wp_info_arch* %48 to %struct.kvm_hw_breakpoint*
  store %struct.kvm_hw_breakpoint* %49, %struct.kvm_hw_breakpoint** %10, align 8
  %50 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %51 = bitcast %struct.kvm_hw_breakpoint* %50 to %struct.kvm_hw_wp_info_arch*
  %52 = call i64 @IS_ERR(%struct.kvm_hw_wp_info_arch* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %56 = bitcast %struct.kvm_hw_breakpoint* %55 to %struct.kvm_hw_wp_info_arch*
  %57 = call i32 @PTR_ERR(%struct.kvm_hw_wp_info_arch* %56)
  store i32 %57, i32* %3, align 4
  br label %205

58:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %67, i64 %69
  %71 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %79 [
    i32 128, label %73
    i32 129, label %76
  ]

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %80

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %80

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %76, %73
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %59

84:                                               ; preds = %59
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.kvm_hw_wp_info_arch* @kmalloc_array(i32 %88, i32 12, i32 %89)
  store %struct.kvm_hw_wp_info_arch* %90, %struct.kvm_hw_wp_info_arch** %11, align 8
  %91 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %11, align 8
  %92 = icmp ne %struct.kvm_hw_wp_info_arch* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %195

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %84
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.kvm_hw_wp_info_arch* @kmalloc_array(i32 %101, i32 12, i32 %102)
  %104 = bitcast %struct.kvm_hw_wp_info_arch* %103 to %struct.kvm_hw_bp_info_arch*
  store %struct.kvm_hw_bp_info_arch* %104, %struct.kvm_hw_bp_info_arch** %12, align 8
  %105 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %12, align 8
  %106 = icmp ne %struct.kvm_hw_bp_info_arch* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %195

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %97
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %170, %111
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %5, align 8
  %115 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %112
  %120 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %120, i64 %122
  %124 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %169 [
    i32 128, label %126
    i32 129, label %144
  ]

126:                                              ; preds = %119
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %128 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %128, i64 %130
  %132 = bitcast %struct.kvm_hw_breakpoint* %131 to %struct.kvm_hw_wp_info_arch*
  %133 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %11, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %133, i64 %135
  %137 = call i32 @__import_wp_info(%struct.kvm_vcpu* %127, %struct.kvm_hw_wp_info_arch* %132, %struct.kvm_hw_wp_info_arch* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  br label %195

141:                                              ; preds = %126
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %169

144:                                              ; preds = %119
  %145 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %145, i64 %147
  %149 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %12, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %151, i64 %153
  %155 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %154, i32 0, i32 2
  store i32 %150, i32* %155, align 4
  %156 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %156, i64 %158
  %160 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %12, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %162, i64 %164
  %166 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %165, i32 0, i32 1
  store i32 %161, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %119, %144, %141
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %112

173:                                              ; preds = %112
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %176 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 8
  %179 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %12, align 8
  %180 = bitcast %struct.kvm_hw_bp_info_arch* %179 to %struct.kvm_hw_wp_info_arch*
  %181 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %182 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  store %struct.kvm_hw_wp_info_arch* %180, %struct.kvm_hw_wp_info_arch** %184, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store i32 %185, i32* %189, align 4
  %190 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %11, align 8
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store %struct.kvm_hw_wp_info_arch* %190, %struct.kvm_hw_wp_info_arch** %194, align 8
  store i32 0, i32* %3, align 4
  br label %205

195:                                              ; preds = %140, %107, %93
  %196 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %10, align 8
  %197 = bitcast %struct.kvm_hw_breakpoint* %196 to %struct.kvm_hw_wp_info_arch*
  %198 = call i32 @kfree(%struct.kvm_hw_wp_info_arch* %197)
  %199 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %11, align 8
  %200 = call i32 @kfree(%struct.kvm_hw_wp_info_arch* %199)
  %201 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %12, align 8
  %202 = bitcast %struct.kvm_hw_bp_info_arch* %201 to %struct.kvm_hw_wp_info_arch*
  %203 = call i32 @kfree(%struct.kvm_hw_wp_info_arch* %202)
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %195, %173, %54, %32, %24
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.kvm_hw_wp_info_arch* @memdup_user(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.kvm_hw_wp_info_arch*) #1

declare dso_local i32 @PTR_ERR(%struct.kvm_hw_wp_info_arch*) #1

declare dso_local %struct.kvm_hw_wp_info_arch* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__import_wp_info(%struct.kvm_vcpu*, %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch*) #1

declare dso_local i32 @kfree(%struct.kvm_hw_wp_info_arch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
