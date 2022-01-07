; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_tlb.c_flush_tlb_kernel_range_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_tlb.c_flush_tlb_kernel_range_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.host_vm_change = type { i32 }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@PGDIR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"munmap failed, errno = %d\0A\00", align 1
@PUD_SIZE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"flush_tlb_kernel failed, errno = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @flush_tlb_kernel_range_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_tlb_kernel_range_common(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.host_vm_change, align 4
  %17 = alloca %struct.host_vm_change, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %5, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call i32 @INIT_HVC(%struct.mm_struct* %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.host_vm_change, %struct.host_vm_change* %17, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.host_vm_change* %16 to i8*
  %24 = bitcast %struct.host_vm_change* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i64, i64* %3, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %189, %139, %102, %65, %2
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %193

30:                                               ; preds = %26
  %31 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32* @pgd_offset(%struct.mm_struct* %31, i64 %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pgd_present(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @PGDIR_SIZE, align 4
  %41 = call i64 @ADD_ROUND(i64 %39, i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @pgd_newpage(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %54, %55
  %57 = call i32 @add_munmap(i64 %53, i64 %56, %struct.host_vm_change* %16)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %52
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %10, align 8
  br label %26

67:                                               ; preds = %30
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32* @pud_offset(i32* %68, i64 %69)
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pud_present(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %104, label %75

75:                                               ; preds = %67
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* @PUD_SIZE, align 4
  %78 = call i64 @ADD_ROUND(i64 %76, i32 %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i64, i64* %4, align 8
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @pud_newpage(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  store i32 1, i32* %12, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = sub i64 %91, %92
  %94 = call i32 @add_munmap(i64 %90, i64 %93, %struct.host_vm_change* %16)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 0, %98
  %100 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %89
  br label %102

102:                                              ; preds = %101, %84
  %103 = load i64, i64* %11, align 8
  store i64 %103, i64* %10, align 8
  br label %26

104:                                              ; preds = %67
  %105 = load i32*, i32** %7, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32* @pmd_offset(i32* %105, i64 %106)
  store i32* %107, i32** %8, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pmd_present(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %141, label %112

112:                                              ; preds = %104
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* @PMD_SIZE, align 4
  %115 = call i64 @ADD_ROUND(i64 %113, i32 %114)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %4, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i64, i64* %4, align 8
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %119, %112
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @pmd_newpage(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  store i32 1, i32* %12, align 4
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* %10, align 8
  %130 = sub i64 %128, %129
  %131 = call i32 @add_munmap(i64 %127, i64 %130, %struct.host_vm_change* %16)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %126
  br label %139

139:                                              ; preds = %138, %121
  %140 = load i64, i64* %11, align 8
  store i64 %140, i64* %10, align 8
  br label %26

141:                                              ; preds = %104
  %142 = load i32*, i32** %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i32* @pte_offset_kernel(i32* %142, i64 %143)
  store i32* %144, i32** %9, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @pte_present(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @pte_newpage(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %149, %141
  store i32 1, i32* %12, align 4
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* @PAGE_SIZE, align 8
  %157 = call i32 @add_munmap(i64 %155, i64 %156, %struct.host_vm_change* %16)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 0, %161
  %163 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %160, %154
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @pte_present(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load i64, i64* %10, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @pte_val(i32 %172)
  %174 = load i32, i32* @PAGE_MASK, align 4
  %175 = and i32 %173, %174
  %176 = load i64, i64* @PAGE_SIZE, align 8
  %177 = call i32 @add_mmap(i64 %170, i32 %175, i64 %176, i32 0, %struct.host_vm_change* %16)
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %169, %164
  br label %189

179:                                              ; preds = %149
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @pte_newprot(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  store i32 1, i32* %12, align 4
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* @PAGE_SIZE, align 8
  %187 = call i32 @add_mprotect(i64 %185, i64 %186, i32 0, %struct.host_vm_change* %16)
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %184, %179
  br label %189

189:                                              ; preds = %188, %178
  %190 = load i64, i64* @PAGE_SIZE, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %10, align 8
  br label %26

193:                                              ; preds = %26
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.host_vm_change, %struct.host_vm_change* %16, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @do_ops(%struct.host_vm_change* %16, i32 %198, i32 1)
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %196, %193
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i32, i32* %12, align 4
  ret i32 %207
}

declare dso_local i32 @INIT_HVC(%struct.mm_struct*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i64 @ADD_ROUND(i64, i32) #1

declare dso_local i64 @pgd_newpage(i32) #1

declare dso_local i32 @add_munmap(i64, i64, %struct.host_vm_change*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i64 @pud_newpage(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_newpage(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_newpage(i32) #1

declare dso_local i32 @add_mmap(i64, i32, i64, i32, %struct.host_vm_change*) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i64 @pte_newprot(i32) #1

declare dso_local i32 @add_mprotect(i64, i64, i32, %struct.host_vm_change*) #1

declare dso_local i32 @do_ops(%struct.host_vm_change*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
