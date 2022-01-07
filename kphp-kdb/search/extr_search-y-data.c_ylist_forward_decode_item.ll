; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_forward_decode_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_forward_decode_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ylist_decoder = type { i32, i32, i32, i32, %struct.ylist_decoder_stack_entry* }
%struct.ylist_decoder_stack_entry = type { i32, i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ylist_forward_decode_item(%struct.ylist_decoder* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ylist_decoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ylist_decoder_stack_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ylist_decoder_stack_entry*, align 8
  store %struct.ylist_decoder* %0, %struct.ylist_decoder** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %13 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %12, i32 0, i32 4
  %14 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %13, align 8
  store %struct.ylist_decoder_stack_entry* %14, %struct.ylist_decoder_stack_entry** %6, align 8
  %15 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %16 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %19 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %21, i64 %22
  store %struct.ylist_decoder_stack_entry* %23, %struct.ylist_decoder_stack_entry** %6, align 8
  br label %24

24:                                               ; preds = %31, %2
  %25 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %26 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @docid_to_itemid(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %32, i32 -1
  store %struct.ylist_decoder_stack_entry* %33, %struct.ylist_decoder_stack_entry** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  br label %24

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %39 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %36
  %43 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %44 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %47 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %62, %55
  %57 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %58 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %64 = call i32 @ylist_decode_int(%struct.ylist_decoder* %63)
  br label %56

65:                                               ; preds = %56
  br label %76

66:                                               ; preds = %42
  %67 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %68 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %67, i32 0, i32 3
  %69 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %70 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @bread_seek(i32* %68, i64 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %75 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %65
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %79 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %36
  br label %81

81:                                               ; preds = %302, %80
  %82 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %83 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %86 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  %89 = ashr i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %91 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @docid_to_itemid(i32 %92)
  %94 = load i64, i64* %5, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %81
  %97 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %98 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %108, %101
  %103 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %104 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %110 = call i32 @ylist_decode_int(%struct.ylist_decoder* %109)
  br label %102

111:                                              ; preds = %102
  br label %122

112:                                              ; preds = %96
  %113 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %114 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %113, i32 0, i32 3
  %115 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %116 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @bread_seek(i32* %114, i64 %117)
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %121 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %112, %111
  %123 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %124 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %125 = call i32 @ylist_copy_positions(%struct.ylist_decoder* %123, %struct.ylist_decoder_stack_entry* %124)
  %126 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %127 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %3, align 4
  br label %309

129:                                              ; preds = %81
  %130 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %131 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %134 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp sge i32 %137, 2
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %205

143:                                              ; preds = %129
  %144 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %145 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @docid_to_itemid(i32 %146)
  %148 = load i64, i64* %5, align 8
  %149 = icmp sge i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %153 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @docid_to_itemid(i32 %154)
  %156 = load i64, i64* %5, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %143
  %159 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %160 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %163 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  %166 = icmp eq i32 %161, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 -1, i32* %3, align 4
  br label %309

168:                                              ; preds = %158
  %169 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %170 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %171 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %172 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ylist_uptree(%struct.ylist_decoder* %169, %struct.ylist_decoder_stack_entry* %170, i32 %173)
  %175 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %176 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %3, align 4
  br label %309

178:                                              ; preds = %143
  %179 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %180 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @docid_to_itemid(i32 %181)
  %183 = load i64, i64* %5, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %178
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %188 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %190 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %191 = call i32 @ylist_copy_positions(%struct.ylist_decoder* %189, %struct.ylist_decoder_stack_entry* %190)
  %192 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %193 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %3, align 4
  br label %309

195:                                              ; preds = %178
  %196 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %197 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %198 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %199 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ylist_uptree(%struct.ylist_decoder* %196, %struct.ylist_decoder_stack_entry* %197, i32 %200)
  %202 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %203 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %3, align 4
  br label %309

205:                                              ; preds = %129
  %206 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %207 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %206, i64 1
  store %struct.ylist_decoder_stack_entry* %207, %struct.ylist_decoder_stack_entry** %11, align 8
  %208 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %209 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @docid_to_itemid(i32 %210)
  %212 = load i64, i64* %5, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %214, label %253

214:                                              ; preds = %205
  %215 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %216 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = sub nsw i32 %218, 1
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %214
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %224 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %226 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %227 = call i32 @ylist_copy_positions(%struct.ylist_decoder* %225, %struct.ylist_decoder_stack_entry* %226)
  %228 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %229 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  store i32 %230, i32* %3, align 4
  br label %309

231:                                              ; preds = %214
  %232 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %233 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %236 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %238 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %241 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %244 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %246 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %249 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  %250 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %251 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %252 = call i32 @ylist_decode_node(%struct.ylist_decoder* %250, %struct.ylist_decoder_stack_entry* %251)
  br label %301

253:                                              ; preds = %205
  %254 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %255 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %253
  br label %259

259:                                              ; preds = %265, %258
  %260 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %261 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %267 = call i32 @ylist_decode_int(%struct.ylist_decoder* %266)
  br label %259

268:                                              ; preds = %259
  br label %279

269:                                              ; preds = %253
  %270 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %271 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %270, i32 0, i32 3
  %272 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %273 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @bread_seek(i32* %271, i64 %274)
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %278 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %269, %268
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %282 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %284 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %287 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %286, i32 0, i32 5
  store i32 %285, i32* %287, align 4
  %288 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %289 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %292 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  %293 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %294 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %297 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %299 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %11, align 8
  %300 = call i32 @ylist_decode_node(%struct.ylist_decoder* %298, %struct.ylist_decoder_stack_entry* %299)
  br label %301

301:                                              ; preds = %279, %231
  br label %302

302:                                              ; preds = %301
  %303 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %304 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 8
  %307 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %308 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %307, i32 1
  store %struct.ylist_decoder_stack_entry* %308, %struct.ylist_decoder_stack_entry** %6, align 8
  br label %81

309:                                              ; preds = %221, %195, %185, %168, %167, %122
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i64 @docid_to_itemid(i32) #1

declare dso_local i32 @ylist_decode_int(%struct.ylist_decoder*) #1

declare dso_local i32 @bread_seek(i32*, i64) #1

declare dso_local i32 @ylist_copy_positions(%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ylist_uptree(%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*, i32) #1

declare dso_local i32 @ylist_decode_node(%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
