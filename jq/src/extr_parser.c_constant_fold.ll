; ModuleID = '/home/carl/AnghaBench/jq/src/extr_parser.c_constant_fold.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_parser.c_constant_fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NULL = common dso_local global i64 0, align 8
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8
@JV_KIND_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @constant_fold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_fold(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @block_is_single(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @block_is_const(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @block_is_single(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @block_is_const(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %21, %17, %3
  %30 = call i32 (...) @gen_noop()
  store i32 %30, i32* %4, align 4
  br label %187

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @block_const_kind(i32 %35)
  %37 = load i64, i64* @JV_KIND_NULL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @block_free(i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %4, align 4
  br label %187

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @block_const_kind(i32 %44)
  %46 = load i64, i64* @JV_KIND_NULL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @block_free(i32 %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %4, align 4
  br label %187

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @block_const_kind(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @block_const_kind(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 (...) @gen_noop()
  store i32 %60, i32* %4, align 4
  br label %187

61:                                               ; preds = %53
  %62 = call i32 (...) @jv_invalid()
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @block_const_kind(i32 %63)
  %65 = load i64, i64* @JV_KIND_NUMBER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %156

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @block_const(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @block_const(i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call double @jv_number_value(i32 %72)
  store double %73, double* %11, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call double @jv_number_value(i32 %74)
  store double %75, double* %12, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @jv_cmp(i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  switch i32 %79, label %154 [
    i32 43, label %80
    i32 45, label %85
    i32 42, label %90
    i32 47, label %95
    i32 131, label %100
    i32 128, label %109
    i32 60, label %118
    i32 62, label %127
    i32 129, label %136
    i32 130, label %145
  ]

80:                                               ; preds = %67
  %81 = load double, double* %11, align 8
  %82 = load double, double* %12, align 8
  %83 = fadd double %81, %82
  %84 = call i32 @jv_number(double %83)
  store i32 %84, i32* %8, align 4
  br label %155

85:                                               ; preds = %67
  %86 = load double, double* %11, align 8
  %87 = load double, double* %12, align 8
  %88 = fsub double %86, %87
  %89 = call i32 @jv_number(double %88)
  store i32 %89, i32* %8, align 4
  br label %155

90:                                               ; preds = %67
  %91 = load double, double* %11, align 8
  %92 = load double, double* %12, align 8
  %93 = fmul double %91, %92
  %94 = call i32 @jv_number(double %93)
  store i32 %94, i32* %8, align 4
  br label %155

95:                                               ; preds = %67
  %96 = load double, double* %11, align 8
  %97 = load double, double* %12, align 8
  %98 = fdiv double %96, %97
  %99 = call i32 @jv_number(double %98)
  store i32 %99, i32* %8, align 4
  br label %155

100:                                              ; preds = %67
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (...) @jv_true()
  br label %107

105:                                              ; preds = %100
  %106 = call i32 (...) @jv_false()
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %8, align 4
  br label %155

109:                                              ; preds = %67
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (...) @jv_true()
  br label %116

114:                                              ; preds = %109
  %115 = call i32 (...) @jv_false()
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %8, align 4
  br label %155

118:                                              ; preds = %67
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (...) @jv_true()
  br label %125

123:                                              ; preds = %118
  %124 = call i32 (...) @jv_false()
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %8, align 4
  br label %155

127:                                              ; preds = %67
  %128 = load i32, i32* %13, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (...) @jv_true()
  br label %134

132:                                              ; preds = %127
  %133 = call i32 (...) @jv_false()
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %8, align 4
  br label %155

136:                                              ; preds = %67
  %137 = load i32, i32* %13, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (...) @jv_true()
  br label %143

141:                                              ; preds = %136
  %142 = call i32 (...) @jv_false()
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %8, align 4
  br label %155

145:                                              ; preds = %67
  %146 = load i32, i32* %13, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (...) @jv_true()
  br label %152

150:                                              ; preds = %145
  %151 = call i32 (...) @jv_false()
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  store i32 %153, i32* %8, align 4
  br label %155

154:                                              ; preds = %67
  br label %155

155:                                              ; preds = %154, %152, %143, %134, %125, %116, %107, %95, %90, %85, %80
  br label %173

156:                                              ; preds = %61
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 43
  br i1 %158, label %159, label %170

159:                                              ; preds = %156
  %160 = load i32, i32* %5, align 4
  %161 = call i64 @block_const_kind(i32 %160)
  %162 = load i64, i64* @JV_KIND_STRING, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @block_const(i32 %165)
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @block_const(i32 %167)
  %169 = call i32 @jv_string_concat(i32 %166, i32 %168)
  store i32 %169, i32* %8, align 4
  br label %172

170:                                              ; preds = %159, %156
  %171 = call i32 (...) @gen_noop()
  store i32 %171, i32* %4, align 4
  br label %187

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %155
  %174 = load i32, i32* %8, align 4
  %175 = call i64 @jv_get_kind(i32 %174)
  %176 = load i64, i64* @JV_KIND_INVALID, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = call i32 (...) @gen_noop()
  store i32 %179, i32* %4, align 4
  br label %187

180:                                              ; preds = %173
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @block_free(i32 %181)
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @block_free(i32 %183)
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @gen_const(i32 %185)
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %180, %178, %170, %59, %48, %39, %29
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @block_is_single(i32) #1

declare dso_local i32 @block_is_const(i32) #1

declare dso_local i32 @gen_noop(...) #1

declare dso_local i64 @block_const_kind(i32) #1

declare dso_local i32 @block_free(i32) #1

declare dso_local i32 @jv_invalid(...) #1

declare dso_local i32 @block_const(i32) #1

declare dso_local double @jv_number_value(i32) #1

declare dso_local i32 @jv_cmp(i32, i32) #1

declare dso_local i32 @jv_number(double) #1

declare dso_local i32 @jv_true(...) #1

declare dso_local i32 @jv_false(...) #1

declare dso_local i32 @jv_string_concat(i32, i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @gen_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
