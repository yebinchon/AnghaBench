; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_args_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_args_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg = type { i32, i32, i32, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@schema_version = common dso_local global i32 0, align 4
@TLS_ARG = common dso_local global i8* null, align 8
@TLS_ARG_V2 = common dso_local global i8* null, align 8
@FLAG_OPT_FIELD = common dso_local global i32 0, align 4
@FLAG_NOVAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_args_list(%struct.arg** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arg**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.arg** %0, %struct.arg*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %287, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %290

13:                                               ; preds = %9
  %14 = call %struct.arg* @zzmalloc0(i32 40)
  %15 = load %struct.arg**, %struct.arg*** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.arg*, %struct.arg** %15, i64 %17
  store %struct.arg* %14, %struct.arg** %18, align 8
  %19 = load %struct.arg**, %struct.arg*** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.arg*, %struct.arg** %19, i64 %21
  %23 = load %struct.arg*, %struct.arg** %22, align 8
  %24 = getelementptr inbounds %struct.arg, %struct.arg* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.arg**, %struct.arg*** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.arg*, %struct.arg** %25, i64 %27
  %29 = load %struct.arg*, %struct.arg** %28, align 8
  %30 = getelementptr inbounds %struct.arg, %struct.arg* %29, i32 0, i32 4
  store i8* null, i8** %30, align 8
  %31 = call i32 @ADD_PMALLOC(i32 40)
  %32 = load i32, i32* @schema_version, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %13
  %35 = call i8* (...) @tl_parse_int()
  %36 = load i8*, i8** @TLS_ARG, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %291

39:                                               ; preds = %34
  br label %46

40:                                               ; preds = %13
  %41 = call i8* (...) @tl_parse_int()
  %42 = load i8*, i8** @TLS_ARG_V2, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %291

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.arg**, %struct.arg*** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.arg*, %struct.arg** %47, i64 %49
  %51 = load %struct.arg*, %struct.arg** %50, align 8
  %52 = getelementptr inbounds %struct.arg, %struct.arg* %51, i32 0, i32 5
  %53 = call i64 @tl_parse_string(i32* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %291

56:                                               ; preds = %46
  %57 = load %struct.arg**, %struct.arg*** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.arg*, %struct.arg** %57, i64 %59
  %61 = load %struct.arg*, %struct.arg** %60, align 8
  %62 = getelementptr inbounds %struct.arg, %struct.arg* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @strlen(i32 %63)
  %65 = call i32 @ADD_MALLOC(i32 %64)
  %66 = load %struct.arg**, %struct.arg*** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.arg*, %struct.arg** %66, i64 %68
  %70 = load %struct.arg*, %struct.arg** %69, align 8
  %71 = getelementptr inbounds %struct.arg, %struct.arg* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @strlen(i32 %72)
  %74 = call i32 @ADD_PMALLOC(i32 %73)
  %75 = call i8* (...) @tl_parse_int()
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.arg**, %struct.arg*** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.arg*, %struct.arg** %77, i64 %79
  %81 = load %struct.arg*, %struct.arg** %80, align 8
  %82 = getelementptr inbounds %struct.arg, %struct.arg* %81, i32 0, i32 1
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* @schema_version, align 4
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %85, label %147

85:                                               ; preds = %56
  %86 = load %struct.arg**, %struct.arg*** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.arg*, %struct.arg** %86, i64 %88
  %90 = load %struct.arg*, %struct.arg** %89, align 8
  %91 = getelementptr inbounds %struct.arg, %struct.arg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %85
  %96 = load %struct.arg**, %struct.arg*** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.arg*, %struct.arg** %96, i64 %98
  %100 = load %struct.arg*, %struct.arg** %99, align 8
  %101 = getelementptr inbounds %struct.arg, %struct.arg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, -3
  store i32 %103, i32* %101, align 4
  %104 = load %struct.arg**, %struct.arg*** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.arg*, %struct.arg** %104, i64 %106
  %108 = load %struct.arg*, %struct.arg** %107, align 8
  %109 = getelementptr inbounds %struct.arg, %struct.arg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, 1048576
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %95, %85
  %113 = load %struct.arg**, %struct.arg*** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.arg*, %struct.arg** %113, i64 %115
  %117 = load %struct.arg*, %struct.arg** %116, align 8
  %118 = getelementptr inbounds %struct.arg, %struct.arg* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %112
  %123 = load %struct.arg**, %struct.arg*** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.arg*, %struct.arg** %123, i64 %125
  %127 = load %struct.arg*, %struct.arg** %126, align 8
  %128 = getelementptr inbounds %struct.arg, %struct.arg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, -5
  store i32 %130, i32* %128, align 4
  %131 = call i8* (...) @tl_parse_int()
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.arg**, %struct.arg*** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.arg*, %struct.arg** %133, i64 %135
  %137 = load %struct.arg*, %struct.arg** %136, align 8
  %138 = getelementptr inbounds %struct.arg, %struct.arg* %137, i32 0, i32 2
  store i32 %132, i32* %138, align 8
  br label %146

139:                                              ; preds = %112
  %140 = load %struct.arg**, %struct.arg*** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.arg*, %struct.arg** %140, i64 %142
  %144 = load %struct.arg*, %struct.arg** %143, align 8
  %145 = getelementptr inbounds %struct.arg, %struct.arg* %144, i32 0, i32 2
  store i32 -1, i32* %145, align 8
  br label %146

146:                                              ; preds = %139, %122
  br label %156

147:                                              ; preds = %56
  %148 = call i8* (...) @tl_parse_int()
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.arg**, %struct.arg*** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.arg*, %struct.arg** %150, i64 %152
  %154 = load %struct.arg*, %struct.arg** %153, align 8
  %155 = getelementptr inbounds %struct.arg, %struct.arg* %154, i32 0, i32 2
  store i32 %149, i32* %155, align 8
  br label %156

156:                                              ; preds = %147, %146
  %157 = load %struct.arg**, %struct.arg*** %5, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.arg*, %struct.arg** %157, i64 %159
  %161 = load %struct.arg*, %struct.arg** %160, align 8
  %162 = getelementptr inbounds %struct.arg, %struct.arg* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp sge i32 %163, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %156
  %168 = load %struct.arg**, %struct.arg*** %5, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.arg*, %struct.arg** %168, i64 %170
  %172 = load %struct.arg*, %struct.arg** %171, align 8
  %173 = getelementptr inbounds %struct.arg, %struct.arg* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  %176 = load i32*, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %156
  %178 = load %struct.arg**, %struct.arg*** %5, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.arg*, %struct.arg** %178, i64 %180
  %182 = load %struct.arg*, %struct.arg** %181, align 8
  %183 = getelementptr inbounds %struct.arg, %struct.arg* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @FLAG_OPT_FIELD, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %177
  %189 = call i8* (...) @tl_parse_int()
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.arg**, %struct.arg*** %5, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.arg*, %struct.arg** %191, i64 %193
  %195 = load %struct.arg*, %struct.arg** %194, align 8
  %196 = getelementptr inbounds %struct.arg, %struct.arg* %195, i32 0, i32 0
  store i32 %190, i32* %196, align 8
  %197 = call i8* (...) @tl_parse_int()
  %198 = load %struct.arg**, %struct.arg*** %5, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.arg*, %struct.arg** %198, i64 %200
  %202 = load %struct.arg*, %struct.arg** %201, align 8
  %203 = getelementptr inbounds %struct.arg, %struct.arg* %202, i32 0, i32 4
  store i8* %197, i8** %203, align 8
  br label %204

204:                                              ; preds = %188, %177
  %205 = load i32, i32* @schema_version, align 4
  %206 = icmp sge i32 %205, 2
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i32*, i32** %7, align 8
  %209 = call %struct.TYPE_4__* @read_type_expr(i32* %208)
  %210 = load %struct.arg**, %struct.arg*** %5, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.arg*, %struct.arg** %210, i64 %212
  %214 = load %struct.arg*, %struct.arg** %213, align 8
  %215 = getelementptr inbounds %struct.arg, %struct.arg* %214, i32 0, i32 3
  store %struct.TYPE_4__* %209, %struct.TYPE_4__** %215, align 8
  br label %225

216:                                              ; preds = %204
  %217 = load i32*, i32** %7, align 8
  %218 = call %struct.TYPE_4__* @read_tree(i32* %217)
  %219 = load %struct.arg**, %struct.arg*** %5, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.arg*, %struct.arg** %219, i64 %221
  %223 = load %struct.arg*, %struct.arg** %222, align 8
  %224 = getelementptr inbounds %struct.arg, %struct.arg* %223, i32 0, i32 3
  store %struct.TYPE_4__* %218, %struct.TYPE_4__** %224, align 8
  br label %225

225:                                              ; preds = %216, %207
  %226 = load %struct.arg**, %struct.arg*** %5, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.arg*, %struct.arg** %226, i64 %228
  %230 = load %struct.arg*, %struct.arg** %229, align 8
  %231 = getelementptr inbounds %struct.arg, %struct.arg* %230, i32 0, i32 3
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = icmp ne %struct.TYPE_4__* %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %225
  store i32 -1, i32* %4, align 4
  br label %291

235:                                              ; preds = %225
  %236 = load %struct.arg**, %struct.arg*** %5, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.arg*, %struct.arg** %236, i64 %238
  %240 = load %struct.arg*, %struct.arg** %239, align 8
  %241 = getelementptr inbounds %struct.arg, %struct.arg* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %286

244:                                              ; preds = %235
  %245 = load %struct.arg**, %struct.arg*** %5, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.arg*, %struct.arg** %245, i64 %247
  %249 = load %struct.arg*, %struct.arg** %248, align 8
  %250 = getelementptr inbounds %struct.arg, %struct.arg* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %286

253:                                              ; preds = %244
  %254 = load %struct.arg**, %struct.arg*** %5, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.arg*, %struct.arg** %254, i64 %256
  %258 = load %struct.arg*, %struct.arg** %257, align 8
  %259 = getelementptr inbounds %struct.arg, %struct.arg* %258, i32 0, i32 3
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = call i64 @TL_IS_NAT_VAR(%struct.TYPE_4__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %276, label %263

263:                                              ; preds = %253
  %264 = load %struct.arg**, %struct.arg*** %5, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.arg*, %struct.arg** %264, i64 %266
  %268 = load %struct.arg*, %struct.arg** %267, align 8
  %269 = getelementptr inbounds %struct.arg, %struct.arg* %268, i32 0, i32 3
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @FLAG_NOVAR, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %263, %253
  %277 = load i32, i32* @FLAG_NOVAR, align 4
  %278 = load %struct.arg**, %struct.arg*** %5, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.arg*, %struct.arg** %278, i64 %280
  %282 = load %struct.arg*, %struct.arg** %281, align 8
  %283 = getelementptr inbounds %struct.arg, %struct.arg* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %277
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %276, %263, %244, %235
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %8, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %8, align 4
  br label %9

290:                                              ; preds = %9
  store i32 1, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %234, %55, %44, %38
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local %struct.arg* @zzmalloc0(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local i8* @tl_parse_int(...) #1

declare dso_local i64 @tl_parse_string(i32*) #1

declare dso_local i32 @ADD_MALLOC(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.TYPE_4__* @read_type_expr(i32*) #1

declare dso_local %struct.TYPE_4__* @read_tree(i32*) #1

declare dso_local i64 @TL_IS_NAT_VAR(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
