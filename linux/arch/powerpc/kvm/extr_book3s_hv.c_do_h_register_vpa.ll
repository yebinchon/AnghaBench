; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_do_h_register_vpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_do_h_register_vpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, %struct.kvm* }
%struct.TYPE_4__ = type { i32, %struct.kvmppc_vpa, %struct.kvmppc_vpa, %struct.kvmppc_vpa }
%struct.kvmppc_vpa = type { i64, i64, i32 }
%struct.kvm = type { i32 }
%struct.reg_vpa = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@H_PARAMETER = common dso_local global i64 0, align 8
@H_VPA_FUNC_SHIFT = common dso_local global i64 0, align 8
@H_VPA_FUNC_MASK = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i64, i64, i64)* @do_h_register_vpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_h_register_vpa(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.kvm_vcpu*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.kvmppc_vpa*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 1
  %20 = load %struct.kvm*, %struct.kvm** %19, align 8
  store %struct.kvm* %20, %struct.kvm** %10, align 8
  %21 = load %struct.kvm*, %struct.kvm** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.kvm* %21, i64 %22)
  store %struct.kvm_vcpu* %23, %struct.kvm_vcpu** %14, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %25 = icmp ne %struct.kvm_vcpu* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* @H_PARAMETER, align 8
  store i64 %27, i64* %5, align 8
  br label %189

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @H_VPA_FUNC_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = load i64, i64* @H_VPA_FUNC_MASK, align 8
  %33 = and i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %16, align 4
  %39 = icmp eq i32 %38, 130
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %16, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %94

43:                                               ; preds = %40, %37, %28
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* @L1_CACHE_BYTES, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50, %43
  %54 = load i64, i64* @H_PARAMETER, align 8
  store i64 %54, i64* %5, align 8
  br label %189

55:                                               ; preds = %50
  %56 = load %struct.kvm*, %struct.kvm** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i8* @kvmppc_pin_guest_page(%struct.kvm* %56, i64 %57, i64* %12)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @H_PARAMETER, align 8
  store i64 %62, i64* %5, align 8
  br label %189

63:                                               ; preds = %55
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** %13, align 8
  %68 = bitcast i8* %67 to %struct.reg_vpa*
  %69 = getelementptr inbounds %struct.reg_vpa, %struct.reg_vpa* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @be16_to_cpu(i32 %71)
  store i64 %72, i64* %11, align 8
  br label %80

73:                                               ; preds = %63
  %74 = load i8*, i8** %13, align 8
  %75 = bitcast i8* %74 to %struct.reg_vpa*
  %76 = getelementptr inbounds %struct.reg_vpa, %struct.reg_vpa* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @be32_to_cpu(i32 %78)
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.kvm*, %struct.kvm** %10, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @kvmppc_unpin_guest_page(%struct.kvm* %81, i8* %82, i64 %83, i32 0)
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %11, align 8
  %90 = icmp ult i64 %89, 8
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %80
  %92 = load i64, i64* @H_PARAMETER, align 8
  store i64 %92, i64* %5, align 8
  br label %189

93:                                               ; preds = %88
  br label %95

94:                                               ; preds = %40
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i64, i64* @H_PARAMETER, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %15, align 4
  store %struct.kvmppc_vpa* null, %struct.kvmppc_vpa** %17, align 8
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load i32, i32* %16, align 4
  switch i32 %102, label %170 [
    i32 128, label %103
    i32 130, label %112
    i32 129, label %132
    i32 131, label %144
    i32 133, label %162
    i32 132, label %166
  ]

103:                                              ; preds = %95
  %104 = call i32 @BUILD_BUG_ON(i32 1)
  %105 = load i64, i64* %11, align 8
  %106 = icmp ult i64 %105, 4
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %170

108:                                              ; preds = %103
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  store %struct.kvmppc_vpa* %111, %struct.kvmppc_vpa** %17, align 8
  store i32 0, i32* %15, align 4
  br label %170

112:                                              ; preds = %95
  %113 = load i64, i64* %11, align 8
  %114 = icmp ult i64 %113, 4
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %170

116:                                              ; preds = %112
  %117 = load i64, i64* %11, align 8
  %118 = urem i64 %117, 4
  %119 = load i64, i64* %11, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %11, align 8
  %121 = load i32, i32* @H_RESOURCE, align 4
  store i32 %121, i32* %15, align 4
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = call i32 @vpa_is_registered(%struct.kvmppc_vpa* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %116
  br label %170

128:                                              ; preds = %116
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store %struct.kvmppc_vpa* %131, %struct.kvmppc_vpa** %17, align 8
  store i32 0, i32* %15, align 4
  br label %170

132:                                              ; preds = %95
  %133 = load i32, i32* @H_RESOURCE, align 4
  store i32 %133, i32* %15, align 4
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %135 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = call i32 @vpa_is_registered(%struct.kvmppc_vpa* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %170

140:                                              ; preds = %132
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store %struct.kvmppc_vpa* %143, %struct.kvmppc_vpa** %17, align 8
  store i32 0, i32* %15, align 4
  br label %170

144:                                              ; preds = %95
  %145 = load i32, i32* @H_RESOURCE, align 4
  store i32 %145, i32* %15, align 4
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %147 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = call i32 @vpa_is_registered(%struct.kvmppc_vpa* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %144
  %152 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %153 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = call i32 @vpa_is_registered(%struct.kvmppc_vpa* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151, %144
  br label %170

158:                                              ; preds = %151
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  store %struct.kvmppc_vpa* %161, %struct.kvmppc_vpa** %17, align 8
  store i32 0, i32* %15, align 4
  br label %170

162:                                              ; preds = %95
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %164 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  store %struct.kvmppc_vpa* %165, %struct.kvmppc_vpa** %17, align 8
  store i32 0, i32* %15, align 4
  br label %170

166:                                              ; preds = %95
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store %struct.kvmppc_vpa* %169, %struct.kvmppc_vpa** %17, align 8
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %95, %166, %162, %158, %157, %140, %139, %128, %127, %115, %108, %107
  %171 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %17, align 8
  %172 = icmp ne %struct.kvmppc_vpa* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i64, i64* %9, align 8
  %175 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %17, align 8
  %176 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %17, align 8
  %179 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %17, align 8
  %181 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %180, i32 0, i32 2
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %173, %170
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %14, align 8
  %184 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %5, align 8
  br label %189

189:                                              ; preds = %182, %91, %61, %53, %26
  %190 = load i64, i64* %5, align 8
  ret i64 %190
}

declare dso_local %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.kvm*, i64) #1

declare dso_local i8* @kvmppc_pin_guest_page(%struct.kvm*, i64, i64*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @kvmppc_unpin_guest_page(%struct.kvm*, i8*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @vpa_is_registered(%struct.kvmppc_vpa*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
