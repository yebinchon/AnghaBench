; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-comparison.c_ecma_op_abstract_relational_compare.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-comparison.c_ecma_op_abstract_relational_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@ECMA_PREFERRED_TYPE_NUMBER = common dso_local global i32 0, align 4
@nx = common dso_local global i64 0, align 8
@ny = common dso_local global i64 0, align 8
@ECMA_VALUE_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_abstract_relational_compare(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ECMA_PREFERRED_TYPE_NUMBER, align 4
  %23 = call i32 @ecma_op_to_primitive(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @ECMA_IS_VALUE_ERROR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %222

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ECMA_PREFERRED_TYPE_NUMBER, align 4
  %32 = call i32 @ecma_op_to_primitive(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @ECMA_IS_VALUE_ERROR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ecma_free_value(i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %222

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ecma_is_value_string(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ecma_is_value_string(i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %197, label %66

66:                                               ; preds = %63, %55
  %67 = load i64, i64* @nx, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i64 %67, i32 %68, i32 %69)
  %71 = load i64, i64* @ny, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i64 %71, i32 %72, i32 %73)
  %75 = load i64, i64* @nx, align 8
  %76 = call i64 @ecma_number_is_nan(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %66
  %79 = load i64, i64* @ny, align 8
  %80 = call i64 @ecma_number_is_nan(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %66
  %83 = load i32, i32* @ECMA_VALUE_UNDEFINED, align 4
  store i32 %83, i32* %8, align 4
  br label %192

84:                                               ; preds = %78
  %85 = load i64, i64* @nx, align 8
  %86 = load i64, i64* @ny, align 8
  %87 = icmp slt i64 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %15, align 4
  %89 = load i64, i64* @nx, align 8
  %90 = load i64, i64* @ny, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load i64, i64* @nx, align 8
  %94 = call i64 @ecma_number_is_zero(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i64, i64* @ny, align 8
  %98 = call i64 @ecma_number_is_zero(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %84
  store i32 0, i32* %16, align 4
  br label %184

101:                                              ; preds = %96, %92
  %102 = load i64, i64* @nx, align 8
  %103 = call i64 @ecma_number_is_infinity(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i64, i64* @nx, align 8
  %107 = call i64 @ecma_number_is_negative(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 0, i32* %16, align 4
  br label %183

110:                                              ; preds = %105, %101
  %111 = load i64, i64* @ny, align 8
  %112 = call i64 @ecma_number_is_infinity(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i64, i64* @ny, align 8
  %116 = call i64 @ecma_number_is_negative(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  store i32 1, i32* %16, align 4
  br label %182

119:                                              ; preds = %114, %110
  %120 = load i64, i64* @ny, align 8
  %121 = call i64 @ecma_number_is_infinity(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i64, i64* @ny, align 8
  %125 = call i64 @ecma_number_is_negative(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 0, i32* %16, align 4
  br label %181

128:                                              ; preds = %123, %119
  %129 = load i64, i64* @nx, align 8
  %130 = call i64 @ecma_number_is_infinity(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i64, i64* @nx, align 8
  %134 = call i64 @ecma_number_is_negative(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 1, i32* %16, align 4
  br label %180

137:                                              ; preds = %132, %128
  %138 = load i64, i64* @nx, align 8
  %139 = call i64 @ecma_number_is_nan(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* @nx, align 8
  %143 = call i64 @ecma_number_is_infinity(i64 %142)
  %144 = icmp ne i64 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %141, %137
  %147 = phi i1 [ false, %137 ], [ %145, %141 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 @JERRY_ASSERT(i32 %148)
  %150 = load i64, i64* @ny, align 8
  %151 = call i64 @ecma_number_is_nan(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %146
  %154 = load i64, i64* @ny, align 8
  %155 = call i64 @ecma_number_is_infinity(i64 %154)
  %156 = icmp ne i64 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %153, %146
  %159 = phi i1 [ false, %146 ], [ %157, %153 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @JERRY_ASSERT(i32 %160)
  %162 = load i64, i64* @nx, align 8
  %163 = call i64 @ecma_number_is_zero(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i64, i64* @ny, align 8
  %167 = call i64 @ecma_number_is_zero(i64 %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %165, %158
  %170 = phi i1 [ false, %158 ], [ %168, %165 ]
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 @JERRY_ASSERT(i32 %172)
  %174 = load i64, i64* @nx, align 8
  %175 = load i64, i64* @ny, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  store i32 1, i32* %16, align 4
  br label %179

178:                                              ; preds = %169
  store i32 0, i32* %16, align 4
  br label %179

179:                                              ; preds = %178, %177
  br label %180

180:                                              ; preds = %179, %136
  br label %181

181:                                              ; preds = %180, %127
  br label %182

182:                                              ; preds = %181, %118
  br label %183

183:                                              ; preds = %182, %109
  br label %184

184:                                              ; preds = %183, %100
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @JERRY_ASSERT(i32 %188)
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @ecma_make_boolean_value(i32 %190)
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %184, %82
  %193 = load i64, i64* @ny, align 8
  %194 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i64 %193)
  %195 = load i64, i64* @nx, align 8
  %196 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i64 %195)
  br label %216

197:                                              ; preds = %63
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br label %203

203:                                              ; preds = %200, %197
  %204 = phi i1 [ false, %197 ], [ %202, %200 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @JERRY_ASSERT(i32 %205)
  %207 = load i32, i32* %11, align 4
  %208 = call i32* @ecma_get_string_from_value(i32 %207)
  store i32* %208, i32** %17, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32* @ecma_get_string_from_value(i32 %209)
  store i32* %210, i32** %18, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = call i32 @ecma_compare_ecma_strings_relational(i32* %211, i32* %212)
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @ecma_make_boolean_value(i32 %214)
  store i32 %215, i32* %8, align 4
  br label %216

216:                                              ; preds = %203, %192
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @ecma_free_value(i32 %217)
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @ecma_free_value(i32 %219)
  %221 = load i32, i32* %8, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %216, %36, %27
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @ecma_op_to_primitive(i32, i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i32 @ecma_is_value_string(i32) #1

declare dso_local i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i64, i32, i32) #1

declare dso_local i64 @ecma_number_is_nan(i64) #1

declare dso_local i64 @ecma_number_is_zero(i64) #1

declare dso_local i64 @ecma_number_is_infinity(i64) #1

declare dso_local i64 @ecma_number_is_negative(i64) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_make_boolean_value(i32) #1

declare dso_local i32 @ECMA_OP_TO_NUMBER_FINALIZE(i64) #1

declare dso_local i32* @ecma_get_string_from_value(i32) #1

declare dso_local i32 @ecma_compare_ecma_strings_relational(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
