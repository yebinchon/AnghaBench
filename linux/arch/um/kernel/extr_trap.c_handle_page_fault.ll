; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_trap.c_handle_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_trap.c_handle_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4
@SEGV_MAPERR = common dso_local global i32 0, align 4
@FAULT_FLAG_USER = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGSEGV = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@FAULT_FLAG_TRIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_page_fault(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  store %struct.mm_struct* %23, %struct.mm_struct** %12, align 8
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %27 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* @SEGV_MAPERR, align 4
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = call i64 (...) @faulthandler_disabled()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %220

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @FAULT_FLAG_USER, align 4
  %39 = load i32, i32* %19, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %19, align 4
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %184, %41
  %43 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 0
  %45 = call i32 @down_read(i32* %44)
  %46 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %46, i64 %47)
  store %struct.vm_area_struct* %48, %struct.vm_area_struct** %13, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %50 = icmp ne %struct.vm_area_struct* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %216

52:                                               ; preds = %42
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %86

59:                                               ; preds = %52
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @VM_GROWSDOWN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %216

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @ARCH_IS_STACKGROW(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %216

75:                                               ; preds = %70, %67
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @expand_stack(%struct.vm_area_struct* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %216

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %58
  %87 = load i32, i32* @SEGV_ACCERR, align 4
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @VM_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %216

99:                                               ; preds = %91
  %100 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %101 = load i32, i32* %19, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %19, align 4
  br label %114

103:                                              ; preds = %86
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @VM_READ, align 4
  %108 = load i32, i32* @VM_EXEC, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %103
  br label %216

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %99
  br label %115

115:                                              ; preds = %206, %114
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @handle_mm_fault(%struct.vm_area_struct* %116, i64 %117, i32 %118)
  store i32 %119, i32* %20, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* @VM_FAULT_RETRY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %126 = call i64 @fatal_signal_pending(%struct.TYPE_3__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %220

129:                                              ; preds = %124, %115
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* @VM_FAULT_ERROR, align 4
  %132 = and i32 %130, %131
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* @VM_FAULT_OOM, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %222

141:                                              ; preds = %135
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @VM_FAULT_SIGSEGV, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %216

147:                                              ; preds = %141
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @EACCES, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %18, align 4
  br label %216

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  %158 = call i32 (...) @BUG()
  br label %159

159:                                              ; preds = %157, %129
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %193

164:                                              ; preds = %159
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %179

174:                                              ; preds = %164
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* @VM_FAULT_RETRY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %19, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* @FAULT_FLAG_TRIED, align 4
  %190 = load i32, i32* %19, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %19, align 4
  br label %42

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %159
  %194 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i32* @pgd_offset(%struct.mm_struct* %194, i64 %195)
  store i32* %196, i32** %14, align 8
  %197 = load i32*, i32** %14, align 8
  %198 = load i64, i64* %7, align 8
  %199 = call i32* @pud_offset(i32* %197, i64 %198)
  store i32* %199, i32** %15, align 8
  %200 = load i32*, i32** %15, align 8
  %201 = load i64, i64* %7, align 8
  %202 = call i32* @pmd_offset(i32* %200, i64 %201)
  store i32* %202, i32** %16, align 8
  %203 = load i32*, i32** %16, align 8
  %204 = load i64, i64* %7, align 8
  %205 = call i32* @pte_offset_kernel(i32* %203, i64 %204)
  store i32* %205, i32** %17, align 8
  br label %206

206:                                              ; preds = %193
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @pte_present(i32 %208)
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  br i1 %211, label %115, label %212

212:                                              ; preds = %206
  store i32 0, i32* %18, align 4
  %213 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %214 = load i64, i64* %7, align 8
  %215 = call i32 @flush_tlb_page(%struct.vm_area_struct* %213, i64 %214)
  br label %216

216:                                              ; preds = %212, %152, %146, %112, %98, %80, %74, %66, %51
  %217 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %218 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %217, i32 0, i32 0
  %219 = call i32 @up_read(i32* %218)
  br label %220

220:                                              ; preds = %228, %216, %128, %33
  %221 = load i32, i32* %18, align 4
  store i32 %221, i32* %6, align 4
  br label %231

222:                                              ; preds = %140
  %223 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %224 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %223, i32 0, i32 0
  %225 = call i32 @up_read(i32* %224)
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  br label %220

229:                                              ; preds = %222
  %230 = call i32 (...) @pagefault_out_of_memory()
  store i32 0, i32* %6, align 4
  br label %231

231:                                              ; preds = %229, %220
  %232 = load i32, i32* %6, align 4
  ret i32 %232
}

declare dso_local i64 @faulthandler_disabled(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @ARCH_IS_STACKGROW(i64) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @fatal_signal_pending(%struct.TYPE_3__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @flush_tlb_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @pagefault_out_of_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
