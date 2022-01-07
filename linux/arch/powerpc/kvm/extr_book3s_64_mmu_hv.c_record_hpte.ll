; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_record_hpte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_record_hpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revmap_entry = type { i64 }

@HPTE_V_VALID = common dso_local global i32 0, align 4
@HPTE_V_ABSENT = common dso_local global i32 0, align 4
@KVM_GET_HTAB_BOLTED_ONLY = common dso_local global i64 0, align 8
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_GR_MODIFIED = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*, i64*, %struct.revmap_entry*, i32, i32)* @record_hpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @record_hpte(i64 %0, i32* %1, i64* %2, %struct.revmap_entry* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.revmap_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store %struct.revmap_entry* %3, %struct.revmap_entry** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %18, align 4
  %21 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @hpte_dirty(%struct.revmap_entry* %21, i32* %22)
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %20, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i64 0, i64* %7, align 8
  br label %215

30:                                               ; preds = %26, %6
  store i32 0, i32* %19, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be64_to_cpu(i32 %33)
  %35 = load i32, i32* @HPTE_V_VALID, align 4
  %36 = load i32, i32* @HPTE_V_ABSENT, align 4
  %37 = or i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = and i64 %34, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  store i32 1, i32* %19, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @KVM_GET_HTAB_BOLTED_ONLY, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be64_to_cpu(i32 %49)
  %51 = load i64, i64* @HPTE_V_BOLTED, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 0, i32* %19, align 4
  br label %55

55:                                               ; preds = %54, %46, %41
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %215

61:                                               ; preds = %56
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %204

67:                                               ; preds = %64, %61
  %68 = call i32 (...) @preempt_disable()
  br label %69

69:                                               ; preds = %75, %67
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @HPTE_V_HVLOCK, align 4
  %72 = call i32 @try_lock_hpte(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 (...) @cpu_relax()
  br label %69

77:                                               ; preds = %69
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @be64_to_cpu(i32 %80)
  store i64 %81, i64* %14, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @be64_to_cpu(i32 %84)
  store i64 %85, i64* %16, align 8
  %86 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %87 = call i64 @cpu_has_feature(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %77
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %16, align 8
  %92 = call i64 @hpte_new_to_old_v(i64 %90, i64 %91)
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i64 @hpte_new_to_old_r(i64 %93)
  store i64 %94, i64* %16, align 8
  br label %95

95:                                               ; preds = %89, %77
  %96 = load i64, i64* %14, align 8
  %97 = load i32, i32* @HPTE_V_VALID, align 4
  %98 = sext i32 %97 to i64
  %99 = and i64 %96, %98
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %19, align 4
  %104 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %105 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @HPTE_GR_MODIFIED, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %20, align 4
  %113 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %114 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = xor i64 %115, -1
  %117 = load i64, i64* @HPTE_R_R, align 8
  %118 = load i64, i64* @HPTE_R_C, align 8
  %119 = or i64 %117, %118
  %120 = and i64 %116, %119
  store i64 %120, i64* %17, align 8
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %95
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %16, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* @HPTE_R_R, align 8
  %131 = load i64, i64* @HPTE_R_C, align 8
  %132 = or i64 %130, %131
  %133 = and i64 %129, %132
  %134 = load i64, i64* @HPTE_GR_MODIFIED, align 8
  %135 = or i64 %133, %134
  %136 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %137 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %135
  store i64 %139, i64* %137, align 8
  store i32 1, i32* %20, align 4
  br label %140

140:                                              ; preds = %128, %123, %95
  %141 = load i64, i64* %14, align 8
  %142 = load i32, i32* @HPTE_V_ABSENT, align 4
  %143 = sext i32 %142 to i64
  %144 = and i64 %141, %143
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load i32, i32* @HPTE_V_ABSENT, align 4
  %148 = xor i32 %147, -1
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %14, align 8
  %151 = and i64 %150, %149
  store i64 %151, i64* %14, align 8
  %152 = load i32, i32* @HPTE_V_VALID, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %14, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %14, align 8
  store i32 1, i32* %19, align 4
  br label %156

156:                                              ; preds = %146, %140
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @KVM_GET_HTAB_BOLTED_ONLY, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* @HPTE_V_BOLTED, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  store i32 0, i32* %19, align 4
  br label %167

167:                                              ; preds = %166, %161, %156
  %168 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %169 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %15, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %167
  %175 = load i32, i32* %20, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load i64, i64* @HPTE_GR_MODIFIED, align 8
  %179 = xor i64 %178, -1
  %180 = load i64, i64* %15, align 8
  %181 = and i64 %180, %179
  store i64 %181, i64* %15, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %184 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %177, %174, %167
  %186 = load i32*, i32** %9, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @be64_to_cpu(i32 %189)
  %191 = call i32 @unlock_hpte(i32* %186, i64 %190)
  %192 = call i32 (...) @preempt_enable()
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %185
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %20, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199, %185
  store i32 0, i32* %18, align 4
  br label %203

203:                                              ; preds = %202, %199, %196
  br label %204

204:                                              ; preds = %203, %64
  %205 = load i64, i64* %14, align 8
  %206 = call i64 @cpu_to_be64(i64 %205)
  %207 = load i64*, i64** %10, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  store i64 %206, i64* %208, align 8
  %209 = load i64, i64* %15, align 8
  %210 = call i64 @cpu_to_be64(i64 %209)
  %211 = load i64*, i64** %10, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 1
  store i64 %210, i64* %212, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %7, align 8
  br label %215

215:                                              ; preds = %204, %60, %29
  %216 = load i64, i64* %7, align 8
  ret i64 %216
}

declare dso_local i32 @hpte_dirty(%struct.revmap_entry*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @try_lock_hpte(i32*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i64 @hpte_new_to_old_r(i64) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
