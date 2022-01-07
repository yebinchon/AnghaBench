; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_interpolative_ext_forward_decode_idx.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_interpolative_ext_forward_decode_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, i32, i32, i64 }
%struct.interpolative_ext_decoder_stack_entry = type { i32, i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_interpolative_ext_forward_decode_idx(%struct.list_decoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_decoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  store %struct.list_decoder* %0, %struct.list_decoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %14 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 2147483647, i32* %3, align 4
  br label %307

18:                                               ; preds = %2
  %19 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.interpolative_ext_decoder_stack_entry*
  store %struct.interpolative_ext_decoder_stack_entry* %22, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %23 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %24 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %29, i64 %30
  store %struct.interpolative_ext_decoder_stack_entry* %31, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  br label %32

32:                                               ; preds = %38, %18
  %33 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %34 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %40 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %39, i32 -1
  store %struct.interpolative_ext_decoder_stack_entry* %40, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  br label %32

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %46 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %51 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %54 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %52, %55
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %59 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %69, %62
  %64 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %65 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %71 = call i32 @interpolative_ext_decode_int(%struct.list_decoder* %70)
  br label %63

72:                                               ; preds = %63
  br label %83

73:                                               ; preds = %49
  %74 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %75 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %74, i32 0, i32 4
  %76 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %77 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @bread_seek(i32* %75, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %82 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %73, %72
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %86 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %43
  br label %88

88:                                               ; preds = %300, %87
  %89 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %90 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %93 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  %96 = ashr i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %98 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %88
  %103 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %104 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %114, %107
  %109 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %110 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %116 = call i32 @interpolative_ext_decode_int(%struct.list_decoder* %115)
  br label %108

117:                                              ; preds = %108
  br label %128

118:                                              ; preds = %102
  %119 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %120 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %119, i32 0, i32 4
  %121 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %122 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @bread_seek(i32* %120, i64 %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %127 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %118, %117
  %129 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %130 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %3, align 4
  br label %307

132:                                              ; preds = %88
  %133 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %134 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %137 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %135, %138
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp sge i32 %140, 2
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %207

146:                                              ; preds = %132
  %147 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %148 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = icmp sge i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %155 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %178

159:                                              ; preds = %146
  %160 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %161 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %164 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  %167 = icmp eq i32 %162, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  store i32 2147483647, i32* %3, align 4
  br label %307

169:                                              ; preds = %159
  %170 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %171 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %174 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %176 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %3, align 4
  br label %307

178:                                              ; preds = %146
  %179 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %180 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %187 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %189 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %3, align 4
  br label %307

191:                                              ; preds = %178
  %192 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %193 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp sge i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %200 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %203 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %205 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %3, align 4
  br label %307

207:                                              ; preds = %132
  %208 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %209 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %208, i64 1
  store %struct.interpolative_ext_decoder_stack_entry* %209, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %210 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %211 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %251

215:                                              ; preds = %207
  %216 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %217 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %9, align 4
  %220 = sub nsw i32 %219, 1
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %225 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %227 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %3, align 4
  br label %307

229:                                              ; preds = %215
  %230 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %231 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %234 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %236 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %239 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %238, i32 0, i32 5
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %242 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %244 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %247 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %249 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %250 = call i32 @interpolative_ext_decode_node(%struct.list_decoder* %248, %struct.interpolative_ext_decoder_stack_entry* %249)
  br label %299

251:                                              ; preds = %207
  %252 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %253 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %251
  br label %257

257:                                              ; preds = %263, %256
  %258 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %259 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %265 = call i32 @interpolative_ext_decode_int(%struct.list_decoder* %264)
  br label %257

266:                                              ; preds = %257
  br label %277

267:                                              ; preds = %251
  %268 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %269 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %268, i32 0, i32 4
  %270 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %271 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @bread_seek(i32* %269, i64 %272)
  %274 = load i32, i32* %9, align 4
  %275 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %276 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %267, %266
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %280 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %282 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %285 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 4
  %286 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %287 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %290 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %292 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %295 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %297 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %298 = call i32 @interpolative_ext_decode_node(%struct.list_decoder* %296, %struct.interpolative_ext_decoder_stack_entry* %297)
  br label %299

299:                                              ; preds = %277, %229
  br label %300

300:                                              ; preds = %299
  %301 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %302 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 4
  %305 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %306 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %305, i32 1
  store %struct.interpolative_ext_decoder_stack_entry* %306, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  br label %88

307:                                              ; preds = %222, %191, %184, %169, %168, %128, %17
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local i32 @interpolative_ext_decode_int(%struct.list_decoder*) #1

declare dso_local i32 @bread_seek(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @interpolative_ext_decode_node(%struct.list_decoder*, %struct.interpolative_ext_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
