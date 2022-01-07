; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mm/extr_fault.c_do_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mm/extr_fault.c_do_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, %struct.mm_struct* }
%struct.TYPE_4__ = type { i64, i32, i8* }
%struct.mm_struct = type { i32, i32* }
%struct.pt_regs = type { i32, i32 }
%struct.vm_area_struct = type { i32, i64 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"do page fault:\0Aregs->sr=%#x, regs->pc=%#lx, address=%#lx, %ld, %p\0A\00", align 1
@FAULT_FLAG_USER = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"do_page_fault: good_area\0A\00", align 1
@VM_WRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"handle_mm_fault returns %x\0A\00", align 1
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGSEGV = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@FAULT_FLAG_TRIED = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i8* null, align 8
@BUS_ADRERR = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i8* null, align 8
@SEGV_MAPERR = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_page_fault(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %8, align 8
  %15 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %16 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %27 = icmp ne %struct.mm_struct* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32* [ %31, %28 ], [ null, %32 ]
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i64 %24, i64 %25, i32* %34)
  %36 = call i64 (...) @faulthandler_disabled()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %40 = icmp ne %struct.mm_struct* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %33
  br label %225

42:                                               ; preds = %38
  %43 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %44 = call i64 @user_mode(%struct.pt_regs* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @FAULT_FLAG_USER, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %202, %50
  %52 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 0
  %54 = call i32 @down_read(i32* %53)
  %55 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %55, i64 %56)
  store %struct.vm_area_struct* %57, %struct.vm_area_struct** %9, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %59 = icmp ne %struct.vm_area_struct* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %249

61:                                               ; preds = %51
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @VM_IO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %262

69:                                               ; preds = %61
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %102

76:                                               ; preds = %69
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VM_GROWSDOWN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %249

84:                                               ; preds = %76
  %85 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %86 = call i64 @user_mode(%struct.pt_regs* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, 256
  %91 = call i64 (...) @rdusp()
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %249

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @expand_stack(%struct.vm_area_struct* %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %249

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %75
  %103 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i64, i64* %7, align 8
  %105 = and i64 %104, 3
  switch i64 %105, label %106 [
    i64 2, label %107
    i64 1, label %119
    i64 0, label %120
  ]

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %102, %106
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @VM_WRITE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  br label %262

115:                                              ; preds = %107
  %116 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %133

119:                                              ; preds = %102
  br label %262

120:                                              ; preds = %102
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @VM_READ, align 4
  %125 = load i32, i32* @VM_EXEC, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @VM_WRITE, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %123, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %120
  br label %262

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %115
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %135 = load i64, i64* %6, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @handle_mm_fault(%struct.vm_area_struct* %134, i64 %135, i32 %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @VM_FAULT_RETRY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %146 = call i64 @fatal_signal_pending(%struct.TYPE_5__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %281

149:                                              ; preds = %144, %133
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @VM_FAULT_ERROR, align 4
  %152 = and i32 %150, %151
  %153 = call i64 @unlikely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %149
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @VM_FAULT_OOM, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %215

161:                                              ; preds = %155
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @VM_FAULT_SIGSEGV, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %249

167:                                              ; preds = %161
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %236

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  %176 = call i32 (...) @BUG()
  br label %177

177:                                              ; preds = %175, %149
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %177
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  br label %197

192:                                              ; preds = %182
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %192, %187
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @VM_FAULT_RETRY, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %11, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* @FAULT_FLAG_TRIED, align 4
  %208 = load i32, i32* %11, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %11, align 4
  br label %51

210:                                              ; preds = %197
  br label %211

211:                                              ; preds = %210, %177
  %212 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %213 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %212, i32 0, i32 0
  %214 = call i32 @up_read(i32* %213)
  store i32 0, i32* %4, align 4
  br label %281

215:                                              ; preds = %160
  %216 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %217 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %216, i32 0, i32 0
  %218 = call i32 @up_read(i32* %217)
  %219 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %220 = call i64 @user_mode(%struct.pt_regs* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %215
  br label %225

223:                                              ; preds = %215
  %224 = call i32 (...) @pagefault_out_of_memory()
  store i32 0, i32* %4, align 4
  br label %281

225:                                              ; preds = %222, %41
  %226 = load i8*, i8** @SIGBUS, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  store i8* %226, i8** %229, align 8
  %230 = load i64, i64* %6, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  store i64 %230, i64* %233, align 8
  %234 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %235 = call i32 @send_fault_sig(%struct.pt_regs* %234)
  store i32 %235, i32* %4, align 4
  br label %281

236:                                              ; preds = %172
  %237 = load i8*, i8** @SIGBUS, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  store i8* %237, i8** %240, align 8
  %241 = load i32, i32* @BUS_ADRERR, align 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 8
  %245 = load i64, i64* %6, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  store i64 %245, i64* %248, align 8
  br label %275

249:                                              ; preds = %166, %100, %93, %83, %60
  %250 = load i8*, i8** @SIGSEGV, align 8
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  store i8* %250, i8** %253, align 8
  %254 = load i32, i32* @SEGV_MAPERR, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  store i32 %254, i32* %257, align 8
  %258 = load i64, i64* %6, align 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store i64 %258, i64* %261, align 8
  br label %275

262:                                              ; preds = %131, %119, %114, %68
  %263 = load i8*, i8** @SIGSEGV, align 8
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  store i8* %263, i8** %266, align 8
  %267 = load i32, i32* @SEGV_ACCERR, align 4
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  store i32 %267, i32* %270, align 8
  %271 = load i64, i64* %6, align 8
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  store i64 %271, i64* %274, align 8
  br label %275

275:                                              ; preds = %262, %249, %236
  %276 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %277 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %276, i32 0, i32 0
  %278 = call i32 @up_read(i32* %277)
  %279 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %280 = call i32 @send_fault_sig(%struct.pt_regs* %279)
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %275, %225, %223, %211, %148
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @faulthandler_disabled(...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @rdusp(...) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @fatal_signal_pending(%struct.TYPE_5__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @pagefault_out_of_memory(...) #1

declare dso_local i32 @send_fault_sig(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
