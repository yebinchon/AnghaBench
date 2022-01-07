; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_get_vmx_mem_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_get_vmx_mem_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i64, i32 }

@UD_VECTOR = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@GP_VECTOR = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@SS_VECTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_vmx_mem_address(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.kvm_segment, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 3
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 7
  %29 = and i32 %28, 7
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 1024
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 15
  %34 = and i32 %33, 7
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 18
  %37 = and i32 %36, 15
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 4194304
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 23
  %45 = and i32 %44, 15
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 134217728
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %6
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %55 = load i32, i32* @UD_VECTOR, align 4
  %56 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %54, i32 %55)
  store i32 1, i32* %7, align 4
  br label %222

57:                                               ; preds = %6
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @sign_extend64(i32 %63, i32 31)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %14, align 4
  br label %74

66:                                               ; preds = %57
  %67 = load i32, i32* %18, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @sign_extend64(i32 %70, i32 15)
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %69, %66
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32, i32* %24, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %79 = load i32, i32* %23, align 4
  %80 = call i32 @kvm_register_read(%struct.kvm_vcpu* %78, i32 %79)
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32, i32* %22, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @kvm_register_read(%struct.kvm_vcpu* %87, i32 %88)
  %90 = load i32, i32* %17, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %86, %83
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %95, %struct.kvm_segment* %16, i32 %96)
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %14, align 4
  br label %109

102:                                              ; preds = %94
  %103 = load i32, i32* %18, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = and i32 %106, 65535
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %100
  store i32 0, i32* %15, align 4
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %111 = call i64 @is_long_mode(%struct.kvm_vcpu* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %109
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* @VCPU_SREG_FS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* @VCPU_SREG_GS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117, %113
  %122 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32*, i32** %13, align 8
  store i32 %125, i32* %126, align 4
  br label %130

127:                                              ; preds = %117
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %121
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %134 = call i32 @is_noncanonical_address(i32 %132, %struct.kvm_vcpu* %133)
  store i32 %134, i32* %15, align 4
  br label %206

135:                                              ; preds = %109
  %136 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32*, i32** %13, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 8
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i1 [ true, %143 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %15, align 4
  br label %162

156:                                              ; preds = %135
  %157 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 10
  %160 = icmp eq i32 %159, 8
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %156, %153
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %167 = load i32, i32* @GP_VECTOR, align 4
  %168 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %166, i32 %167, i32 0)
  store i32 1, i32* %7, align 4
  br label %222

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %15, align 4
  %174 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %205, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %186, %177, %169
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %195, %196
  %198 = sub nsw i32 %197, 1
  %199 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = icmp sgt i32 %198, %200
  br label %202

202:                                              ; preds = %194, %191
  %203 = phi i1 [ true, %191 ], [ %201, %194 ]
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %15, align 4
  br label %205

205:                                              ; preds = %202, %186, %181
  br label %206

206:                                              ; preds = %205, %130
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* @VCPU_SREG_SS, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @SS_VECTOR, align 4
  br label %218

216:                                              ; preds = %209
  %217 = load i32, i32* @GP_VECTOR, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  %220 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %210, i32 %219, i32 0)
  store i32 1, i32* %7, align 4
  br label %222

221:                                              ; preds = %206
  store i32 0, i32* %7, align 4
  br label %222

222:                                              ; preds = %221, %218, %165, %53
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @sign_extend64(i32, i32) #1

declare dso_local i32 @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_get_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_noncanonical_address(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
