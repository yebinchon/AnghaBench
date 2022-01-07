; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_forward_decode_idx.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_forward_decode_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlist_decoder = type { i32, i32, i32, i32, i32, %struct.mlist_decoder_stack_entry* }
%struct.mlist_decoder_stack_entry = type { i32, i32, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlist_forward_decode_idx(%struct.mlist_decoder* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlist_decoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlist_decoder_stack_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlist_decoder_stack_entry*, align 8
  store %struct.mlist_decoder* %0, %struct.mlist_decoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %16 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  store i32 2147483647, i32* %4, align 4
  br label %329

21:                                               ; preds = %3
  %22 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %23 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %22, i32 0, i32 5
  %24 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %23, align 8
  store %struct.mlist_decoder_stack_entry* %24, %struct.mlist_decoder_stack_entry** %8, align 8
  %25 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %26 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %29 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %31, i64 %32
  store %struct.mlist_decoder_stack_entry* %33, %struct.mlist_decoder_stack_entry** %8, align 8
  br label %34

34:                                               ; preds = %40, %21
  %35 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %36 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %42 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %41, i32 -1
  store %struct.mlist_decoder_stack_entry* %42, %struct.mlist_decoder_stack_entry** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %48 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %45
  %52 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %53 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %56 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %54, %57
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %61 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %71, %64
  %66 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %67 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @mlist_decode_pair(%struct.mlist_decoder* %72, i32* %73)
  br label %65

75:                                               ; preds = %65
  br label %86

76:                                               ; preds = %51
  %77 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %78 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %77, i32 0, i32 4
  %79 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %80 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @bread_seek(i32* %78, i64 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %85 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %76, %75
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %89 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %45
  br label %91

91:                                               ; preds = %322, %90
  %92 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %93 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %96 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %94, %97
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %101 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %91
  %106 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %107 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %117, %110
  %112 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %113 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @mlist_decode_pair(%struct.mlist_decoder* %118, i32* %119)
  br label %111

121:                                              ; preds = %111
  br label %132

122:                                              ; preds = %105
  %123 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %124 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %123, i32 0, i32 4
  %125 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %126 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @bread_seek(i32* %124, i64 %127)
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %131 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %122, %121
  %133 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %134 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  %137 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %138 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %4, align 4
  br label %329

140:                                              ; preds = %91
  %141 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %142 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %145 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp sge i32 %148, 2
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %224

154:                                              ; preds = %140
  %155 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %156 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = icmp sge i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %163 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %154
  %168 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %169 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %172 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  %175 = icmp eq i32 %170, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32*, i32** %7, align 8
  store i32 0, i32* %177, align 4
  store i32 2147483647, i32* %4, align 4
  br label %329

178:                                              ; preds = %167
  %179 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %180 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %181 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %182 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @mlist_uptree(%struct.mlist_decoder* %179, %struct.mlist_decoder_stack_entry* %180, i32 %183, i32* %184)
  %186 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %187 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %4, align 4
  br label %329

189:                                              ; preds = %154
  %190 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %191 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %198 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %200 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %7, align 8
  store i32 %201, i32* %202, align 4
  %203 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %204 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %4, align 4
  br label %329

206:                                              ; preds = %189
  %207 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %208 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = icmp sge i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %215 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %216 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %217 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @mlist_uptree(%struct.mlist_decoder* %214, %struct.mlist_decoder_stack_entry* %215, i32 %218, i32* %219)
  %221 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %222 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %4, align 4
  br label %329

224:                                              ; preds = %140
  %225 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %226 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %225, i64 1
  store %struct.mlist_decoder_stack_entry* %226, %struct.mlist_decoder_stack_entry** %13, align 8
  %227 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %228 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %272

232:                                              ; preds = %224
  %233 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %234 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %11, align 4
  %237 = sub nsw i32 %236, 1
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %232
  %240 = load i32, i32* %11, align 4
  %241 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %242 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %244 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %7, align 8
  store i32 %245, i32* %246, align 4
  %247 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %248 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %4, align 4
  br label %329

250:                                              ; preds = %232
  %251 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %252 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %255 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %257 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %260 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %259, i32 0, i32 6
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %263 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  %264 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %265 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %268 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %270 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %271 = call i32 @mlist_decode_node(%struct.mlist_decoder* %269, %struct.mlist_decoder_stack_entry* %270)
  br label %321

272:                                              ; preds = %224
  %273 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %274 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %272
  br label %278

278:                                              ; preds = %284, %277
  %279 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %280 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %11, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %278
  %285 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 @mlist_decode_pair(%struct.mlist_decoder* %285, i32* %286)
  br label %278

288:                                              ; preds = %278
  br label %299

289:                                              ; preds = %272
  %290 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %291 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %290, i32 0, i32 4
  %292 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %293 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @bread_seek(i32* %291, i64 %294)
  %296 = load i32, i32* %11, align 4
  %297 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %298 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 8
  br label %299

299:                                              ; preds = %289, %288
  %300 = load i32, i32* %11, align 4
  %301 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %302 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  %303 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %304 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %307 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %306, i32 0, i32 6
  store i32 %305, i32* %307, align 8
  %308 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %309 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %312 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 8
  %313 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %314 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %317 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 8
  %318 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %319 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %13, align 8
  %320 = call i32 @mlist_decode_node(%struct.mlist_decoder* %318, %struct.mlist_decoder_stack_entry* %319)
  br label %321

321:                                              ; preds = %299, %250
  br label %322

322:                                              ; preds = %321
  %323 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %324 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %324, align 4
  %327 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %328 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %327, i32 1
  store %struct.mlist_decoder_stack_entry* %328, %struct.mlist_decoder_stack_entry** %8, align 8
  br label %91

329:                                              ; preds = %239, %206, %195, %178, %176, %132, %19
  %330 = load i32, i32* %4, align 4
  ret i32 %330
}

declare dso_local i32 @mlist_decode_pair(%struct.mlist_decoder*, i32*) #1

declare dso_local i32 @bread_seek(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mlist_uptree(%struct.mlist_decoder*, %struct.mlist_decoder_stack_entry*, i32, i32*) #1

declare dso_local i32 @mlist_decode_node(%struct.mlist_decoder*, %struct.mlist_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
