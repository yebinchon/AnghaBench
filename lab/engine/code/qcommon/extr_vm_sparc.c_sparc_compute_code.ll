; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_sparc_compute_code.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_sparc_compute_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i64 }
%struct.func_info = type { i32, i32*, %struct.dst_insn*, %struct.dst_insn*, i8**, %struct.jump_insn* }
%struct.dst_insn = type { i32, i32, i32, %struct.dst_insn*, %struct.dst_insn*, i32*, i8*, i32* }
%struct.jump_insn = type { i64, %struct.jump_insn*, i32, i64 }
%struct.data_hunk = type { i32, i32, i32, %struct.data_hunk*, %struct.data_hunk*, i32*, i8*, i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32, i32*, i32, i32, i32 }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@THUNK_ICOUNT = common dso_local global i32 0, align 4
@SPARC_NOP = common dso_local global i32 0, align 4
@CALL_THUNK_INSN_OFFSET = common dso_local global i32 0, align 4
@asmcall = common dso_local global i32 0, align 4
@blockcopy = common dso_local global i32 0, align 4
@ErrJump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.func_info*)* @sparc_compute_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_compute_code(%struct.TYPE_5__* %0, %struct.func_info* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.func_info*, align 8
  %5 = alloca %struct.dst_insn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.data_hunk*, align 8
  %13 = alloca %struct.jump_insn*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.data_hunk*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.dst_insn*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.func_info* %1, %struct.func_info** %4, align 8
  %23 = load %struct.func_info*, %struct.func_info** %4, align 8
  %24 = getelementptr inbounds %struct.func_info, %struct.func_info* %23, i32 0, i32 2
  %25 = load %struct.dst_insn*, %struct.dst_insn** %24, align 8
  store %struct.dst_insn* %25, %struct.dst_insn** %5, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %29, %2
  %27 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %28 = icmp ne %struct.dst_insn* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %31 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %36 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %35, i32 0, i32 4
  %37 = load %struct.dst_insn*, %struct.dst_insn** %36, align 8
  store %struct.dst_insn* %37, %struct.dst_insn** %5, align 8
  br label %26

38:                                               ; preds = %26
  %39 = load %struct.func_info*, %struct.func_info** %4, align 8
  %40 = getelementptr inbounds %struct.func_info, %struct.func_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = add i64 48, %43
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PROT_READ, align 4
  %52 = load i32, i32* @PROT_WRITE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MAP_SHARED, align 4
  %55 = load i32, i32* @MAP_ANONYMOUS, align 4
  %56 = or i32 %54, %55
  %57 = call i8* @mmap(i32* null, i32 %50, i32 %53, i32 %56, i32 -1, i32 0)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** @MAP_FAILED, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %38
  %62 = call i32 @DIE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %38
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = load %struct.func_info*, %struct.func_info** %4, align 8
  %67 = getelementptr inbounds %struct.func_info, %struct.func_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %69
  %71 = call i32 @VM_Data_Offset(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %64, i64 %72
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %7, align 8
  store i32* %74, i32** %6, align 8
  %75 = load %struct.func_info*, %struct.func_info** %4, align 8
  %76 = getelementptr inbounds %struct.func_info, %struct.func_info* %75, i32 0, i32 2
  %77 = load %struct.dst_insn*, %struct.dst_insn** %76, align 8
  store %struct.dst_insn* %77, %struct.dst_insn** %5, align 8
  br label %78

78:                                               ; preds = %160, %63
  %79 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %80 = icmp ne %struct.dst_insn* %79, null
  br i1 %80, label %81, label %164

81:                                               ; preds = %78
  %82 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %83 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @THUNK_ICOUNT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load %struct.func_info*, %struct.func_info** %4, align 8
  %90 = getelementptr inbounds %struct.func_info, %struct.func_info* %89, i32 0, i32 4
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %88
  %98 = load i32*, i32** %6, align 8
  %99 = bitcast i32* %98 to i8*
  %100 = load %struct.func_info*, %struct.func_info** %4, align 8
  %101 = getelementptr inbounds %struct.func_info, %struct.func_info* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  br label %106

106:                                              ; preds = %97, %88
  br label %107

107:                                              ; preds = %106, %81
  %108 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %109 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %108, i32 0, i32 3
  %110 = load %struct.dst_insn*, %struct.dst_insn** %109, align 8
  %111 = icmp ne %struct.dst_insn* %110, null
  br i1 %111, label %131, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %115 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %119 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i32* %113, i32* %117, i32 %123)
  %125 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %126 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %6, align 8
  br label %160

131:                                              ; preds = %107
  %132 = load i32*, i32** %6, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %135 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %134, i32 0, i32 3
  %136 = load %struct.dst_insn*, %struct.dst_insn** %135, align 8
  %137 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %136, i32 0, i32 6
  store i8* %133, i8** %137, align 8
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %150, %131
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %141 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load i32, i32* @SPARC_NOP, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %138

153:                                              ; preds = %138
  %154 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %155 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %6, align 8
  br label %160

160:                                              ; preds = %153, %112
  %161 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %162 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %161, i32 0, i32 4
  %163 = load %struct.dst_insn*, %struct.dst_insn** %162, align 8
  store %struct.dst_insn* %163, %struct.dst_insn** %5, align 8
  br label %78

164:                                              ; preds = %78
  %165 = load %struct.func_info*, %struct.func_info** %4, align 8
  %166 = getelementptr inbounds %struct.func_info, %struct.func_info* %165, i32 0, i32 5
  %167 = load %struct.jump_insn*, %struct.jump_insn** %166, align 8
  store %struct.jump_insn* %167, %struct.jump_insn** %13, align 8
  br label %168

168:                                              ; preds = %171, %164
  %169 = load %struct.jump_insn*, %struct.jump_insn** %13, align 8
  %170 = icmp ne %struct.jump_insn* %169, null
  br i1 %170, label %171, label %203

171:                                              ; preds = %168
  %172 = load %struct.jump_insn*, %struct.jump_insn** %13, align 8
  %173 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i8*
  %176 = bitcast i8* %175 to i32*
  store i32* %176, i32** %17, align 8
  %177 = load %struct.func_info*, %struct.func_info** %4, align 8
  %178 = getelementptr inbounds %struct.func_info, %struct.func_info* %177, i32 0, i32 4
  %179 = load i8**, i8*** %178, align 8
  %180 = load %struct.jump_insn*, %struct.jump_insn** %13, align 8
  %181 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = bitcast i8* %184 to i32*
  store i32* %185, i32** %18, align 8
  %186 = load i32*, i32** %18, align 8
  %187 = load i32*, i32** %17, align 8
  %188 = ptrtoint i32* %186 to i64
  %189 = ptrtoint i32* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %19, align 4
  %193 = load %struct.jump_insn*, %struct.jump_insn** %13, align 8
  %194 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %19, align 4
  %197 = shl i32 %196, 2
  %198 = call i32 @IN(i32 %195, i32 %197)
  %199 = load i32*, i32** %17, align 8
  store i32 %198, i32* %199, align 4
  %200 = load %struct.jump_insn*, %struct.jump_insn** %13, align 8
  %201 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %200, i32 0, i32 1
  %202 = load %struct.jump_insn*, %struct.jump_insn** %201, align 8
  store %struct.jump_insn* %202, %struct.jump_insn** %13, align 8
  br label %168

203:                                              ; preds = %168
  %204 = load i8*, i8** %8, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = bitcast i8* %210 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %211, %struct.TYPE_6__** %14, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* @CALL_THUNK_INSN_OFFSET, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32* %215, i32** %217, align 8
  %218 = load i32, i32* @asmcall, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @blockcopy, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i32*
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  store i32* %227, i32** %229, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %231 = load %struct.func_info*, %struct.func_info** %4, align 8
  %232 = getelementptr inbounds %struct.func_info, %struct.func_info* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %234
  %236 = call i32 @VM_Data_Offset(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %235)
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load i32*, i32** %6, align 8
  %240 = load i32*, i32** %7, align 8
  %241 = ptrtoint i32* %239 to i64
  %242 = ptrtoint i32* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 4
  %245 = mul i64 %244, 4
  %246 = trunc i64 %245 to i32
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @ErrJump, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 5
  store i32 %249, i32* %251, align 8
  %252 = load %struct.func_info*, %struct.func_info** %4, align 8
  %253 = getelementptr inbounds %struct.func_info, %struct.func_info* %252, i32 0, i32 3
  %254 = load %struct.dst_insn*, %struct.dst_insn** %253, align 8
  %255 = bitcast %struct.dst_insn* %254 to %struct.data_hunk*
  store %struct.data_hunk* %255, %struct.data_hunk** %12, align 8
  store i32 0, i32* %11, align 4
  br label %256

256:                                              ; preds = %288, %203
  %257 = load %struct.data_hunk*, %struct.data_hunk** %12, align 8
  %258 = icmp ne %struct.data_hunk* %257, null
  br i1 %258, label %259, label %298

259:                                              ; preds = %256
  %260 = load %struct.data_hunk*, %struct.data_hunk** %12, align 8
  %261 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %260, i32 0, i32 4
  %262 = load %struct.data_hunk*, %struct.data_hunk** %261, align 8
  store %struct.data_hunk* %262, %struct.data_hunk** %20, align 8
  store i32 0, i32* %21, align 4
  br label %263

263:                                              ; preds = %285, %259
  %264 = load i32, i32* %21, align 4
  %265 = load %struct.data_hunk*, %struct.data_hunk** %12, align 8
  %266 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %288

269:                                              ; preds = %263
  %270 = load %struct.data_hunk*, %struct.data_hunk** %12, align 8
  %271 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %270, i32 0, i32 5
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %21, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 4
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* %21, align 4
  %282 = add nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %279, i64 %283
  store i32 %276, i32* %284, align 4
  br label %285

285:                                              ; preds = %269
  %286 = load i32, i32* %21, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %21, align 4
  br label %263

288:                                              ; preds = %263
  %289 = load %struct.data_hunk*, %struct.data_hunk** %12, align 8
  %290 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %11, align 4
  %294 = load %struct.data_hunk*, %struct.data_hunk** %12, align 8
  %295 = bitcast %struct.data_hunk* %294 to %struct.dst_insn*
  %296 = call i32 @Z_Free(%struct.dst_insn* %295)
  %297 = load %struct.data_hunk*, %struct.data_hunk** %20, align 8
  store %struct.data_hunk* %297, %struct.data_hunk** %12, align 8
  br label %256

298:                                              ; preds = %256
  %299 = load %struct.func_info*, %struct.func_info** %4, align 8
  %300 = getelementptr inbounds %struct.func_info, %struct.func_info* %299, i32 0, i32 3
  store %struct.dst_insn* null, %struct.dst_insn** %300, align 8
  %301 = load %struct.func_info*, %struct.func_info** %4, align 8
  %302 = getelementptr inbounds %struct.func_info, %struct.func_info* %301, i32 0, i32 0
  store i32 0, i32* %302, align 8
  %303 = load %struct.func_info*, %struct.func_info** %4, align 8
  %304 = getelementptr inbounds %struct.func_info, %struct.func_info* %303, i32 0, i32 2
  %305 = load %struct.dst_insn*, %struct.dst_insn** %304, align 8
  store %struct.dst_insn* %305, %struct.dst_insn** %5, align 8
  br label %306

306:                                              ; preds = %322, %298
  %307 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %308 = icmp ne %struct.dst_insn* %307, null
  br i1 %308, label %309, label %326

309:                                              ; preds = %306
  %310 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %311 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %310, i32 0, i32 4
  %312 = load %struct.dst_insn*, %struct.dst_insn** %311, align 8
  store %struct.dst_insn* %312, %struct.dst_insn** %22, align 8
  %313 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %314 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %313, i32 0, i32 3
  %315 = load %struct.dst_insn*, %struct.dst_insn** %314, align 8
  %316 = icmp ne %struct.dst_insn* %315, null
  br i1 %316, label %317, label %322

317:                                              ; preds = %309
  %318 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %319 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %318, i32 0, i32 3
  %320 = load %struct.dst_insn*, %struct.dst_insn** %319, align 8
  %321 = call i32 @Z_Free(%struct.dst_insn* %320)
  br label %322

322:                                              ; preds = %317, %309
  %323 = load %struct.dst_insn*, %struct.dst_insn** %5, align 8
  %324 = call i32 @Z_Free(%struct.dst_insn* %323)
  %325 = load %struct.dst_insn*, %struct.dst_insn** %22, align 8
  store %struct.dst_insn* %325, %struct.dst_insn** %5, align 8
  br label %306

326:                                              ; preds = %306
  %327 = load %struct.func_info*, %struct.func_info** %4, align 8
  %328 = getelementptr inbounds %struct.func_info, %struct.func_info* %327, i32 0, i32 1
  store i32* null, i32** %328, align 8
  %329 = load %struct.func_info*, %struct.func_info** %4, align 8
  %330 = getelementptr inbounds %struct.func_info, %struct.func_info* %329, i32 0, i32 2
  store %struct.dst_insn* null, %struct.dst_insn** %330, align 8
  ret void
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIE(i8*) #1

declare dso_local i32 @VM_Data_Offset(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @IN(i32, i32) #1

declare dso_local i32 @Z_Free(%struct.dst_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
