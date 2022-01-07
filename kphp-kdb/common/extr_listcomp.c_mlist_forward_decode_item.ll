; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_forward_decode_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_forward_decode_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlist_decoder = type { i32, i32, i32, i32, %struct.mlist_decoder_stack_entry* }
%struct.mlist_decoder_stack_entry = type { i32, i32, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlist_forward_decode_item(%struct.mlist_decoder* %0, i64 %1, i64 (i32)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlist_decoder*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64 (i32)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlist_decoder_stack_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlist_decoder_stack_entry*, align 8
  store %struct.mlist_decoder* %0, %struct.mlist_decoder** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 (i32)* %2, i64 (i32)** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %17 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %16, i32 0, i32 4
  %18 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %17, align 8
  store %struct.mlist_decoder_stack_entry* %18, %struct.mlist_decoder_stack_entry** %10, align 8
  %19 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %20 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %23 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %25, i64 %26
  store %struct.mlist_decoder_stack_entry* %27, %struct.mlist_decoder_stack_entry** %10, align 8
  br label %28

28:                                               ; preds = %36, %4
  %29 = load i64 (i32)*, i64 (i32)** %8, align 8
  %30 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %31 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 %29(i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %38 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %37, i32 -1
  store %struct.mlist_decoder_stack_entry* %38, %struct.mlist_decoder_stack_entry** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %11, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %44 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %41
  %48 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %49 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %52 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %50, %53
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %12, align 4
  %56 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %57 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %67, %60
  %62 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %63 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @mlist_decode_pair(%struct.mlist_decoder* %68, i32* %69)
  br label %61

71:                                               ; preds = %61
  br label %82

72:                                               ; preds = %47
  %73 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %74 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %73, i32 0, i32 3
  %75 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %76 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @bread_seek(i32* %74, i64 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %81 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %71
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %85 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %41
  br label %87

87:                                               ; preds = %320, %86
  %88 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %89 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %92 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = load i64 (i32)*, i64 (i32)** %8, align 8
  %97 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %98 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i64 %96(i32 %99)
  %101 = load i64, i64* %7, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %87
  %104 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %105 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %115, %108
  %110 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %111 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @mlist_decode_pair(%struct.mlist_decoder* %116, i32* %117)
  br label %109

119:                                              ; preds = %109
  br label %130

120:                                              ; preds = %103
  %121 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %122 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %121, i32 0, i32 3
  %123 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %124 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @bread_seek(i32* %122, i64 %125)
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %129 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %120, %119
  %131 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %132 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %9, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %136 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %5, align 4
  br label %327

138:                                              ; preds = %87
  %139 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %140 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %143 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp sge i32 %146, 2
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %220

152:                                              ; preds = %138
  %153 = load i64 (i32)*, i64 (i32)** %8, align 8
  %154 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %155 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 %153(i32 %156)
  %158 = load i64, i64* %7, align 8
  %159 = icmp sge i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i64 (i32)*, i64 (i32)** %8, align 8
  %163 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %164 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i64 %162(i32 %165)
  %167 = load i64, i64* %7, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %152
  %170 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %171 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %174 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  %177 = icmp eq i32 %172, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  store i32 -1, i32* %5, align 4
  br label %327

179:                                              ; preds = %169
  %180 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %181 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %182 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %183 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @mlist_uptree(%struct.mlist_decoder* %180, %struct.mlist_decoder_stack_entry* %181, i32 %184, i32* %185)
  %187 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %188 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %5, align 4
  br label %327

190:                                              ; preds = %152
  %191 = load i64 (i32)*, i64 (i32)** %8, align 8
  %192 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %193 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = call i64 %191(i32 %194)
  %196 = load i64, i64* %7, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %190
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %201 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %203 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %9, align 8
  store i32 %204, i32* %205, align 4
  %206 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %207 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %5, align 4
  br label %327

209:                                              ; preds = %190
  %210 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %211 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %212 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %213 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %9, align 8
  %216 = call i32 @mlist_uptree(%struct.mlist_decoder* %210, %struct.mlist_decoder_stack_entry* %211, i32 %214, i32* %215)
  %217 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %218 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %5, align 4
  br label %327

220:                                              ; preds = %138
  %221 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %222 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %221, i64 1
  store %struct.mlist_decoder_stack_entry* %222, %struct.mlist_decoder_stack_entry** %15, align 8
  %223 = load i64 (i32)*, i64 (i32)** %8, align 8
  %224 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %225 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i64 %223(i32 %226)
  %228 = load i64, i64* %7, align 8
  %229 = icmp sgt i64 %227, %228
  br i1 %229, label %230, label %270

230:                                              ; preds = %220
  %231 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %232 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %13, align 4
  %235 = sub nsw i32 %234, 1
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %230
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %240 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %242 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %9, align 8
  store i32 %243, i32* %244, align 4
  %245 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %246 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %5, align 4
  br label %327

248:                                              ; preds = %230
  %249 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %250 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %253 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %255 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %258 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %257, i32 0, i32 6
  store i32 %256, i32* %258, align 8
  %259 = load i32, i32* %13, align 4
  %260 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %261 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %263 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %266 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  %267 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %268 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %269 = call i32 @mlist_decode_node(%struct.mlist_decoder* %267, %struct.mlist_decoder_stack_entry* %268)
  br label %319

270:                                              ; preds = %220
  %271 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %272 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = icmp slt i64 %273, 0
  br i1 %274, label %275, label %287

275:                                              ; preds = %270
  br label %276

276:                                              ; preds = %282, %275
  %277 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %278 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %13, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %284 = load i32*, i32** %9, align 8
  %285 = call i32 @mlist_decode_pair(%struct.mlist_decoder* %283, i32* %284)
  br label %276

286:                                              ; preds = %276
  br label %297

287:                                              ; preds = %270
  %288 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %289 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %288, i32 0, i32 3
  %290 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %291 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @bread_seek(i32* %289, i64 %292)
  %294 = load i32, i32* %13, align 4
  %295 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %296 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %287, %286
  %298 = load i32, i32* %13, align 4
  %299 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %300 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %302 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %305 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 8
  %306 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %307 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %310 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  %311 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %312 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %315 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %317 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %15, align 8
  %318 = call i32 @mlist_decode_node(%struct.mlist_decoder* %316, %struct.mlist_decoder_stack_entry* %317)
  br label %319

319:                                              ; preds = %297, %248
  br label %320

320:                                              ; preds = %319
  %321 = load %struct.mlist_decoder*, %struct.mlist_decoder** %6, align 8
  %322 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 8
  %325 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %10, align 8
  %326 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %325, i32 1
  store %struct.mlist_decoder_stack_entry* %326, %struct.mlist_decoder_stack_entry** %10, align 8
  br label %87

327:                                              ; preds = %237, %209, %198, %179, %178, %130
  %328 = load i32, i32* %5, align 4
  ret i32 %328
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
