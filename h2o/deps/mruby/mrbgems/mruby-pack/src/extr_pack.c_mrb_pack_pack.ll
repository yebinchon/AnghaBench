; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_mrb_pack_pack.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_mrb_pack_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpl = type { i32 }

@PACK_DIR_INVALID = common dso_local global i32 0, align 4
@PACK_DIR_NUL = common dso_local global i32 0, align 4
@PACK_FLAG_WIDTH = common dso_local global i32 0, align 4
@PACK_TYPE_INTEGER = common dso_local global i32 0, align 4
@PACK_TYPE_FLOAT = common dso_local global i32 0, align 4
@PACK_TYPE_STRING = common dso_local global i32 0, align 4
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't convert %S into String\00", align 1
@E_RANGE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"negative (or overflowed) template size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_pack_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_pack_pack(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmpl, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @prepare_tmpl(i32* %16, %struct.tmpl* %8)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @mrb_str_new(i32* %18, i32* null, i32 128)
  store i32 %19, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %230, %34, %29, %2
  %21 = call i64 @has_tmpl(%struct.tmpl* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %231

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @read_tmpl(i32* %24, %struct.tmpl* %8, i32* %11, i32* %14, i32* %13, i32* %9, i32* %10)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PACK_DIR_INVALID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %20

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PACK_DIR_NUL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (...) @mrb_nil_value()
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @pack_x(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %20

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %220, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @RARRAY_LEN(i32 %50)
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %223

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %223

62:                                               ; preds = %56, %53
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @mrb_ary_ref(i32* %63, i32 %64, i64 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @mrb_to_int(i32* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %110

74:                                               ; preds = %62
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @mrb_float_p(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @mrb_to_flo(i32* %83, i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @mrb_float_value(i32* %86, i32 %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %82, %78
  br label %109

90:                                               ; preds = %74
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @PACK_TYPE_STRING, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @mrb_string_p(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @E_TYPE_ERROR, align 4
  %101 = load i32*, i32** %3, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @mrb_obj_class(i32* %102, i32 %103)
  %105 = call i32 @mrb_class_path(i32* %101, i32 %104)
  %106 = call i32 @mrb_raisef(i32* %99, i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %98, %94
  br label %108

108:                                              ; preds = %107, %90
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109, %70
  %111 = load i32, i32* %11, align 4
  switch i32 %111, label %206 [
    i32 136, label %112
    i32 130, label %121
    i32 132, label %130
    i32 131, label %139
    i32 137, label %148
    i32 133, label %158
    i32 129, label %168
    i32 135, label %178
    i32 134, label %187
    i32 128, label %196
  ]

112:                                              ; preds = %110
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @pack_c(i32* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %207

121:                                              ; preds = %110
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @pack_s(i32* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %207

130:                                              ; preds = %110
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @pack_l(i32* %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %207

139:                                              ; preds = %110
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @pack_q(i32* %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %12, align 4
  br label %207

148:                                              ; preds = %110
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @pack_m(i32* %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %207

158:                                              ; preds = %110
  %159 = load i32*, i32** %3, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @pack_h(i32* %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %12, align 4
  br label %207

168:                                              ; preds = %110
  %169 = load i32*, i32** %3, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @pack_a(i32* %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %12, align 4
  br label %207

178:                                              ; preds = %110
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @pack_double(i32* %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %12, align 4
  br label %207

187:                                              ; preds = %110
  %188 = load i32*, i32** %3, align 8
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @pack_float(i32* %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %207

196:                                              ; preds = %110
  %197 = load i32*, i32** %3, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @pack_utf8(i32* %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %12, align 4
  br label %207

206:                                              ; preds = %110
  br label %207

207:                                              ; preds = %206, %196, %187, %178, %168, %158, %148, %139, %130, %121, %112
  %208 = load i32, i32* %11, align 4
  %209 = icmp eq i32 %208, 129
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i64, i64* %7, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %7, align 8
  br label %223

213:                                              ; preds = %207
  %214 = load i32, i32* %9, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %216, %213
  br label %220

220:                                              ; preds = %219
  %221 = load i64, i64* %7, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %7, align 8
  br label %48

223:                                              ; preds = %210, %61, %48
  %224 = load i32, i32* %12, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32*, i32** %3, align 8
  %228 = load i32, i32* @E_RANGE_ERROR, align 4
  %229 = call i32 @mrb_raise(i32* %227, i32 %228, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %230

230:                                              ; preds = %226, %223
  br label %20

231:                                              ; preds = %20
  %232 = load i32*, i32** %3, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @mrb_str_resize(i32* %232, i32 %233, i32 %234)
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local i32 @prepare_tmpl(i32*, %struct.tmpl*) #1

declare dso_local i32 @mrb_str_new(i32*, i32*, i32) #1

declare dso_local i64 @has_tmpl(%struct.tmpl*) #1

declare dso_local i32 @read_tmpl(i32*, %struct.tmpl*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @pack_x(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_ary_ref(i32*, i32, i64) #1

declare dso_local i32 @mrb_to_int(i32*, i32) #1

declare dso_local i32 @mrb_float_p(i32) #1

declare dso_local i32 @mrb_to_flo(i32*, i32) #1

declare dso_local i32 @mrb_float_value(i32*, i32) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_class_path(i32*, i32) #1

declare dso_local i32 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @pack_c(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_s(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_l(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_q(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_m(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_h(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_a(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_double(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_float(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_utf8(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
