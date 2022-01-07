; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_delete_some_range_rec_large.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_delete_some_range_rec_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.tree_payload = type { i64 }

@NIL = common dso_local global i64 0, align 8
@TF_MINUS = common dso_local global i64 0, align 8
@TF_PLUS = common dso_local global i64 0, align 8
@empty_string = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__**, %struct.TYPE_14__*, i32, i32, i32)* @listree_delete_some_range_rec_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @listree_delete_some_range_rec_large(%struct.TYPE_13__** %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tree_payload*, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = call i64 @SMALL_NODE(%struct.TYPE_13__* %22)
  %24 = load i64, i64* @NIL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = bitcast %struct.TYPE_14__* %32 to i32*
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @in_array(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @OARR_ENTRY(i32 %40, i32 %41)
  %43 = call i32 (...) @lrand48()
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i64, i64* @TF_MINUS, align 8
  %50 = call i32 @MAKE_RPOS(i32 %48, i64 %49)
  %51 = call %struct.TYPE_13__* @new_tree_subnode_large(i32 %42, i32 %43, i32 %50)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %6, align 8
  br label %267

57:                                               ; preds = %37
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %59, align 8
  %60 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call i64 @SMALL_NODE(%struct.TYPE_13__* %61)
  %63 = call i32 @tree_ext_relax(i64 %62)
  br label %67

64:                                               ; preds = %31
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %27

67:                                               ; preds = %57, %27
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = call i64 @SMALL_NODE(%struct.TYPE_13__* %69)
  %71 = load i64, i64* @NIL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %267

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %5
  %76 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %14, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %83 = call i32 @NODE_RPOS(%struct.TYPE_13__* %82)
  %84 = sub nsw i32 %81, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %89 = call i64 @NODE_TYPE(%struct.TYPE_13__* %88)
  %90 = load i64, i64* @TF_PLUS, align 8
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = add nsw i32 %87, %92
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  %97 = icmp sle i32 %94, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_13__* @listree_delete_some_range_rec_large(%struct.TYPE_13__** %101, %struct.TYPE_14__* %102, i32 %103, i32 %104, i32 %107)
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %12, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %110 = icmp ne %struct.TYPE_13__* %109, null
  br i1 %110, label %111, label %146

111:                                              ; preds = %75
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %119 = call i64 @SMALL_NODE(%struct.TYPE_13__* %118)
  %120 = call i32 @tree_ext_relax(i64 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %6, align 8
  br label %267

122:                                              ; preds = %111
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = bitcast %struct.TYPE_13__** %124 to i32**
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  %128 = bitcast %struct.TYPE_13__** %127 to i32**
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %130 = call i64 @SMALL_NODE(%struct.TYPE_13__* %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @tree_ext_split(i32** %125, i32** %128, i64 %130, i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %14, align 8
  %136 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %136, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %138 = call i64 @SMALL_NODE(%struct.TYPE_13__* %137)
  %139 = call i32 @tree_ext_relax(i64 %138)
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %142 = call i32 @NODE_RPOS(%struct.TYPE_13__* %141)
  %143 = sub nsw i32 %140, %142
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %18, align 4
  br label %146

146:                                              ; preds = %122, %75
  store i32 0, i32* %19, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %148 = call i64 @NODE_TYPE(%struct.TYPE_13__* %147)
  %149 = load i64, i64* @TF_MINUS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %194

151:                                              ; preds = %146
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %153 = call i64 @SMALL_NODE(%struct.TYPE_13__* %152)
  %154 = call i32 @in_tree(i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %194, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %158 = call i64 @NODE_TYPE(%struct.TYPE_13__* %157)
  %159 = load i64, i64* @TF_PLUS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 1, i32* %19, align 4
  br label %193

162:                                              ; preds = %156
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %164 = call %struct.tree_payload* @PAYLOAD(%struct.TYPE_13__* %163)
  store %struct.tree_payload* %164, %struct.tree_payload** %20, align 8
  %165 = load %struct.tree_payload*, %struct.tree_payload** %20, align 8
  %166 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %162
  %170 = load %struct.tree_payload*, %struct.tree_payload** %20, align 8
  %171 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @empty_string, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.tree_payload*, %struct.tree_payload** %20, align 8
  %177 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.tree_payload*, %struct.tree_payload** %20, align 8
  %180 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @get_text_data_len(i64 %181)
  %183 = call i32 @zfree(i64 %178, i32 %182)
  br label %184

184:                                              ; preds = %175, %169
  %185 = load %struct.tree_payload*, %struct.tree_payload** %20, align 8
  %186 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %184, %162
  %188 = load i64, i64* @TF_MINUS, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = or i64 %191, %188
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %187, %161
  br label %194

194:                                              ; preds = %193, %151, %146
  br label %195

195:                                              ; preds = %194, %238
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call %struct.TYPE_13__* @listree_delete_some_range_rec_large(%struct.TYPE_13__** %197, %struct.TYPE_14__* %198, i32 %199, i32 %200, i32 %203)
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %12, align 8
  %205 = load i32, i32* %19, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %195
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = call i64 @SMALL_NODE(%struct.TYPE_13__* %210)
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = call i64 @SMALL_NODE(%struct.TYPE_13__* %214)
  %216 = call i32 @tree_ext_merge(i64 %211, i64 %215)
  %217 = call %struct.TYPE_13__* @LARGE_NODE(i32 %216)
  %218 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %217, %struct.TYPE_13__** %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %220 = call i32 @free_tree_ext_large_node(%struct.TYPE_13__* %219)
  %221 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  store %struct.TYPE_13__* %222, %struct.TYPE_13__** %14, align 8
  store i32 0, i32* %19, align 4
  br label %227

223:                                              ; preds = %195
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %225 = call i64 @SMALL_NODE(%struct.TYPE_13__* %224)
  %226 = call i32 @tree_ext_relax(i64 %225)
  br label %227

227:                                              ; preds = %223, %207
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %229 = icmp ne %struct.TYPE_13__* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %230, %227
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %237, %struct.TYPE_13__** %6, align 8
  br label %267

238:                                              ; preds = %230
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 4
  %241 = bitcast %struct.TYPE_13__** %240 to i32**
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 3
  %244 = bitcast %struct.TYPE_13__** %243 to i32**
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %246 = call i64 @SMALL_NODE(%struct.TYPE_13__* %245)
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @tree_ext_split(i32** %241, i32** %244, i64 %246, i32 %249)
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %251, %struct.TYPE_13__** %14, align 8
  %252 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %251, %struct.TYPE_13__** %252, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %254 = call i64 @SMALL_NODE(%struct.TYPE_13__* %253)
  %255 = call i32 @tree_ext_relax(i64 %254)
  %256 = load i32, i32* %15, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %258 = call i32 @NODE_RPOS(%struct.TYPE_13__* %257)
  %259 = sub nsw i32 %256, %258
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %18, align 4
  %262 = icmp sge i32 %260, %261
  %263 = zext i1 %262 to i32
  %264 = call i32 @assert(i32 %263)
  %265 = load i32, i32* %16, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %18, align 4
  br label %195

267:                                              ; preds = %236, %117, %73, %55
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %268
}

declare dso_local i64 @SMALL_NODE(%struct.TYPE_13__*) #1

declare dso_local i32 @in_array(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @new_tree_subnode_large(i32, i32, i32) #1

declare dso_local i32 @OARR_ENTRY(i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @MAKE_RPOS(i32, i64) #1

declare dso_local i32 @tree_ext_relax(i64) #1

declare dso_local i32 @NODE_RPOS(%struct.TYPE_13__*) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tree_ext_split(i32**, i32**, i64, i32) #1

declare dso_local i32 @in_tree(i64) #1

declare dso_local %struct.tree_payload* @PAYLOAD(%struct.TYPE_13__*) #1

declare dso_local i32 @zfree(i64, i32) #1

declare dso_local i32 @get_text_data_len(i64) #1

declare dso_local %struct.TYPE_13__* @LARGE_NODE(i32) #1

declare dso_local i32 @tree_ext_merge(i64, i64) #1

declare dso_local i32 @free_tree_ext_large_node(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
