; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_bpf_int_jit_compile.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_bpf_int_jit_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i64, %struct.TYPE_2__*, i32, i8*, i64, i32 }
%struct.TYPE_2__ = type { %struct.s390_jit_data* }
%struct.s390_jit_data = type { i32, %struct.bpf_jit, %struct.bpf_binary_header* }
%struct.bpf_jit = type { i64, %struct.s390_jit_data*, i64, i32 }
%struct.bpf_binary_header = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BPF_SIZE_MAX = common dso_local global i64 0, align 8
@jit_fill_hole = common dso_local global i32 0, align 4
@bpf_jit_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_binary_header*, align 8
  %7 = alloca %struct.s390_jit_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_jit, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %12, %struct.bpf_prog** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %18, %struct.bpf_prog** %2, align 8
  br label %221

19:                                               ; preds = %1
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %21 = call %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog* %20)
  store %struct.bpf_prog* %21, %struct.bpf_prog** %4, align 8
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %23 = call i64 @IS_ERR(%struct.bpf_prog* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %26, %struct.bpf_prog** %2, align 8
  br label %221

27:                                               ; preds = %19
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %30 = icmp ne %struct.bpf_prog* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %32, %struct.bpf_prog** %3, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %35 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.s390_jit_data*, %struct.s390_jit_data** %37, align 8
  store %struct.s390_jit_data* %38, %struct.s390_jit_data** %7, align 8
  %39 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %40 = icmp ne %struct.s390_jit_data* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.s390_jit_data* @kzalloc(i32 48, i32 %42)
  store %struct.s390_jit_data* %43, %struct.s390_jit_data** %7, align 8
  %44 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %45 = icmp ne %struct.s390_jit_data* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %47, %struct.bpf_prog** %3, align 8
  br label %204

48:                                               ; preds = %41
  %49 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %51 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.s390_jit_data* %49, %struct.s390_jit_data** %53, align 8
  br label %54

54:                                               ; preds = %48, %33
  %55 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %56 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %56, i32 0, i32 1
  %58 = load %struct.s390_jit_data*, %struct.s390_jit_data** %57, align 8
  %59 = icmp ne %struct.s390_jit_data* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %62 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %61, i32 0, i32 1
  %63 = bitcast %struct.bpf_jit* %10 to i8*
  %64 = bitcast %struct.bpf_jit* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 32, i1 false)
  %65 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %66 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %65, i32 0, i32 2
  %67 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %66, align 8
  store %struct.bpf_binary_header* %67, %struct.bpf_binary_header** %6, align 8
  store i32 1, i32* %9, align 4
  %68 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %69 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %119

72:                                               ; preds = %54
  %73 = call i32 @memset(%struct.bpf_jit* %10, i32 0, i32 32)
  %74 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %75 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.s390_jit_data* @kcalloc(i64 %77, i32 48, i32 %78)
  %80 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 1
  store %struct.s390_jit_data* %79, %struct.s390_jit_data** %80, align 8
  %81 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 1
  %82 = load %struct.s390_jit_data*, %struct.s390_jit_data** %81, align 8
  %83 = icmp eq %struct.s390_jit_data* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %85, %struct.bpf_prog** %3, align 8
  br label %204

86:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %98, %86
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 3
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @bpf_jit_prog(%struct.bpf_jit* %10, %struct.bpf_prog* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %96, %struct.bpf_prog** %3, align 8
  br label %193

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %87

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BPF_SIZE_MAX, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %107, %struct.bpf_prog** %3, align 8
  br label %193

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 2
  %112 = load i32, i32* @jit_fill_hole, align 4
  %113 = call %struct.bpf_binary_header* @bpf_jit_binary_alloc(i64 %110, i64* %111, i32 2, i32 %112)
  store %struct.bpf_binary_header* %113, %struct.bpf_binary_header** %6, align 8
  %114 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %115 = icmp ne %struct.bpf_binary_header* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %117, %struct.bpf_prog** %3, align 8
  br label %193

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %60
  %120 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @bpf_jit_prog(%struct.bpf_jit* %10, %struct.bpf_prog* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %126 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %125)
  %127 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %127, %struct.bpf_prog** %3, align 8
  br label %193

128:                                              ; preds = %119
  %129 = load i32, i32* @bpf_jit_enable, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %133 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @bpf_jit_dump(i64 %134, i64 %136, i32 %137, i64 %139)
  %141 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @print_fn_code(i64 %142, i32 %144)
  br label %146

146:                                              ; preds = %131, %128
  %147 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %148 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151, %146
  %155 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %156 = call i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header* %155)
  br label %168

157:                                              ; preds = %151
  %158 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %159 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %160 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %159, i32 0, i32 2
  store %struct.bpf_binary_header* %158, %struct.bpf_binary_header** %160, align 8
  %161 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %162 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %161, i32 0, i32 1
  %163 = bitcast %struct.bpf_jit* %162 to i8*
  %164 = bitcast %struct.bpf_jit* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 32, i1 false)
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %167 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %157, %154
  %169 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %173 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %175 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  %176 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %179 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %181 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %168
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %184, %168
  %188 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %189 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 1
  %190 = load %struct.s390_jit_data*, %struct.s390_jit_data** %189, align 8
  %191 = getelementptr inbounds %struct.s390_jit_data, %struct.s390_jit_data* %190, i64 1
  %192 = call i32 @bpf_prog_fill_jited_linfo(%struct.bpf_prog* %188, %struct.s390_jit_data* %191)
  br label %193

193:                                              ; preds = %187, %124, %116, %106, %95
  %194 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 1
  %195 = load %struct.s390_jit_data*, %struct.s390_jit_data** %194, align 8
  %196 = call i32 @kfree(%struct.s390_jit_data* %195)
  %197 = load %struct.s390_jit_data*, %struct.s390_jit_data** %7, align 8
  %198 = call i32 @kfree(%struct.s390_jit_data* %197)
  %199 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %200 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %199, i32 0, i32 2
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  store %struct.s390_jit_data* null, %struct.s390_jit_data** %202, align 8
  br label %203

203:                                              ; preds = %193, %184
  br label %204

204:                                              ; preds = %203, %84, %46
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %209 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %210 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %211 = icmp eq %struct.bpf_prog* %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  br label %216

214:                                              ; preds = %207
  %215 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi %struct.bpf_prog* [ %213, %212 ], [ %215, %214 ]
  %218 = call i32 @bpf_jit_prog_release_other(%struct.bpf_prog* %208, %struct.bpf_prog* %217)
  br label %219

219:                                              ; preds = %216, %204
  %220 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %220, %struct.bpf_prog** %2, align 8
  br label %221

221:                                              ; preds = %219, %25, %17
  %222 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %222
}

declare dso_local %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local %struct.s390_jit_data* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.bpf_jit*, i32, i32) #1

declare dso_local %struct.s390_jit_data* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @bpf_jit_prog(%struct.bpf_jit*, %struct.bpf_prog*, i32) #1

declare dso_local %struct.bpf_binary_header* @bpf_jit_binary_alloc(i64, i64*, i32, i32) #1

declare dso_local i32 @bpf_jit_binary_free(%struct.bpf_binary_header*) #1

declare dso_local i32 @bpf_jit_dump(i64, i64, i32, i64) #1

declare dso_local i32 @print_fn_code(i64, i32) #1

declare dso_local i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header*) #1

declare dso_local i32 @bpf_prog_fill_jited_linfo(%struct.bpf_prog*, %struct.s390_jit_data*) #1

declare dso_local i32 @kfree(%struct.s390_jit_data*) #1

declare dso_local i32 @bpf_jit_prog_release_other(%struct.bpf_prog*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
