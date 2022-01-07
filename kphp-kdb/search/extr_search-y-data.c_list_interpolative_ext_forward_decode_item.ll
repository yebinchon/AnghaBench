; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_list_interpolative_ext_forward_decode_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_list_interpolative_ext_forward_decode_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.list_decoder = type { i32, i32, i32, i32, i32 (%struct.list_decoder*)*, i64 }
%struct.interpolative_ext_decoder_stack_entry = type { i64, i32, i32, i64, i64, i64 }

@IndexItems = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_decoder*, i64)* @list_interpolative_ext_forward_decode_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_interpolative_ext_forward_decode_item(%struct.list_decoder* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_decoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  store %struct.list_decoder* %0, %struct.list_decoder** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %13 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.interpolative_ext_decoder_stack_entry*
  store %struct.interpolative_ext_decoder_stack_entry* %15, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %16 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %17 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %22, i64 %23
  store %struct.interpolative_ext_decoder_stack_entry* %24, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  br label %25

25:                                               ; preds = %35, %2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IndexItems, align 8
  %27 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %28 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %37 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %36, i32 -1
  store %struct.interpolative_ext_decoder_stack_entry* %37, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %7, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %43 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %40
  %47 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %48 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %51 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %56 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %66, %59
  %61 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %62 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %68 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %67, i32 0, i32 4
  %69 = load i32 (%struct.list_decoder*)*, i32 (%struct.list_decoder*)** %68, align 8
  %70 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %71 = call i32 %69(%struct.list_decoder* %70)
  br label %60

72:                                               ; preds = %60
  br label %83

73:                                               ; preds = %46
  %74 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %75 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %74, i32 0, i32 3
  %76 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %77 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @bread_seek(i32* %75, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %82 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %73, %72
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %86 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %40
  br label %88

88:                                               ; preds = %324, %87
  %89 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %90 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %93 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = ashr i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IndexItems, align 8
  %98 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %99 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %88
  %107 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %108 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %118, %111
  %113 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %114 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %120 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %119, i32 0, i32 4
  %121 = load i32 (%struct.list_decoder*)*, i32 (%struct.list_decoder*)** %120, align 8
  %122 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %123 = call i32 %121(%struct.list_decoder* %122)
  br label %112

124:                                              ; preds = %112
  br label %135

125:                                              ; preds = %106
  %126 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %127 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %126, i32 0, i32 3
  %128 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %129 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @bread_seek(i32* %127, i64 %130)
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %134 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %125, %124
  %136 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %137 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %3, align 4
  br label %331

140:                                              ; preds = %88
  %141 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %142 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %145 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %143, %146
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp sge i32 %148, 2
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %223

154:                                              ; preds = %140
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IndexItems, align 8
  %156 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %157 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %5, align 8
  %163 = icmp sge i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IndexItems, align 8
  %167 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %168 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %5, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %175, label %195

175:                                              ; preds = %154
  %176 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %177 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %180 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  %183 = icmp eq i32 %178, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  store i32 -1, i32* %3, align 4
  br label %331

185:                                              ; preds = %175
  %186 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %187 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %190 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %192 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %3, align 4
  br label %331

195:                                              ; preds = %154
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IndexItems, align 8
  %197 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %198 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %5, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %195
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %208 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %210 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %3, align 4
  br label %331

213:                                              ; preds = %195
  %214 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %215 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %218 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %220 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %3, align 4
  br label %331

223:                                              ; preds = %140
  %224 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %225 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %224, i64 1
  store %struct.interpolative_ext_decoder_stack_entry* %225, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IndexItems, align 8
  %227 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %228 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %5, align 8
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %272

235:                                              ; preds = %223
  %236 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %237 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sub nsw i32 %239, 1
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %235
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %245 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %247 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %3, align 4
  br label %331

250:                                              ; preds = %235
  %251 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %252 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %255 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  %256 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %257 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %260 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %259, i32 0, i32 5
  store i64 %258, i64* %260, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %263 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 4
  %264 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %265 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %268 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %267, i32 0, i32 0
  store i64 %266, i64* %268, align 8
  %269 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %270 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %271 = call i32 @interpolative_ext_decode_node(%struct.list_decoder* %269, %struct.interpolative_ext_decoder_stack_entry* %270)
  br label %323

272:                                              ; preds = %223
  %273 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %274 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %277, label %291

277:                                              ; preds = %272
  br label %278

278:                                              ; preds = %284, %277
  %279 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %280 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %9, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %278
  %285 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %286 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %285, i32 0, i32 4
  %287 = load i32 (%struct.list_decoder*)*, i32 (%struct.list_decoder*)** %286, align 8
  %288 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %289 = call i32 %287(%struct.list_decoder* %288)
  br label %278

290:                                              ; preds = %278
  br label %301

291:                                              ; preds = %272
  %292 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %293 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %292, i32 0, i32 3
  %294 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %295 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @bread_seek(i32* %293, i64 %296)
  %298 = load i32, i32* %9, align 4
  %299 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %300 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %291, %290
  %302 = load i32, i32* %9, align 4
  %303 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %304 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 8
  %305 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %306 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %309 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %308, i32 0, i32 5
  store i64 %307, i64* %309, align 8
  %310 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %311 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %314 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %313, i32 0, i32 2
  store i32 %312, i32* %314, align 4
  %315 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %316 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %319 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %318, i32 0, i32 0
  store i64 %317, i64* %319, align 8
  %320 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %321 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %11, align 8
  %322 = call i32 @interpolative_ext_decode_node(%struct.list_decoder* %320, %struct.interpolative_ext_decoder_stack_entry* %321)
  br label %323

323:                                              ; preds = %301, %250
  br label %324

324:                                              ; preds = %323
  %325 = load %struct.list_decoder*, %struct.list_decoder** %4, align 8
  %326 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 8
  %329 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %330 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %329, i32 1
  store %struct.interpolative_ext_decoder_stack_entry* %330, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  br label %88

331:                                              ; preds = %242, %213, %205, %185, %184, %135
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local i32 @bread_seek(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @interpolative_ext_decode_node(%struct.list_decoder*, %struct.interpolative_ext_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
