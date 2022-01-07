; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_aux.c_parse_slice.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_aux.c_parse_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@JV_KIND_NULL = common dso_local global i64 0, align 8
@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @parse_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_slice(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @jv_copy(i32 %17)
  %19 = call i32 @jv_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @jv_object_get(i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @jv_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @jv_object_get(i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @jv_get_kind(i32 %24)
  %26 = load i64, i64* @JV_KIND_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @jv_free(i32 %29)
  %31 = call i32 @jv_number(i32 0)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @jv_get_kind(i32 %33)
  %35 = load i64, i64* @JV_KIND_ARRAY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @jv_array_length(i32 %38)
  store i32 %39, i32* %12, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @jv_get_kind(i32 %41)
  %43 = load i64, i64* @JV_KIND_STRING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @jv_string_length_codepoints(i32 %46)
  store i32 %47, i32* %12, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @jv_free(i32 %49)
  store i32 0, i32* %5, align 4
  br label %165

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @jv_get_kind(i32 %53)
  %55 = load i64, i64* @JV_KIND_NULL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @jv_free(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @jv_number(i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @jv_get_kind(i32 %63)
  %65 = load i64, i64* @JV_KIND_NUMBER, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @jv_get_kind(i32 %68)
  %70 = load i64, i64* @JV_KIND_NUMBER, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @jv_free(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @jv_free(i32 %75)
  store i32 0, i32* %5, align 4
  br label %165

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = call double @jv_number_value(i32 %78)
  store double %79, double* %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call double @jv_number_value(i32 %80)
  store double %81, double* %14, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @jv_free(i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @jv_free(i32 %84)
  %86 = load double, double* %13, align 8
  %87 = fcmp olt double %86, 0.000000e+00
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %13, align 8
  %92 = fadd double %91, %90
  store double %92, double* %13, align 8
  br label %93

93:                                               ; preds = %88, %77
  %94 = load double, double* %14, align 8
  %95 = fcmp olt double %94, 0.000000e+00
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = sitofp i32 %97 to double
  %99 = load double, double* %14, align 8
  %100 = fadd double %99, %98
  store double %100, double* %14, align 8
  br label %101

101:                                              ; preds = %96, %93
  %102 = load double, double* %13, align 8
  %103 = fcmp olt double %102, 0.000000e+00
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store double 0.000000e+00, double* %13, align 8
  br label %105

105:                                              ; preds = %104, %101
  %106 = load double, double* %13, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sitofp i32 %107 to double
  %109 = fcmp ogt double %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %12, align 4
  %112 = sitofp i32 %111 to double
  store double %112, double* %13, align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = load double, double* %13, align 8
  %115 = fptosi double %114 to i32
  store i32 %115, i32* %15, align 4
  %116 = load double, double* %14, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sitofp i32 %117 to double
  %119 = fcmp ogt double %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %12, align 4
  br label %125

122:                                              ; preds = %113
  %123 = load double, double* %14, align 8
  %124 = fptosi double %123 to i32
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi i32 [ %121, %120 ], [ %124, %122 ]
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sitofp i32 %127 to double
  %129 = load double, double* %14, align 8
  %130 = fcmp olt double %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i32, i32* %15, align 4
  %148 = icmp sle i32 0, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp sle i32 %154, %155
  br label %157

157:                                              ; preds = %153, %149, %146
  %158 = phi i1 [ false, %149 ], [ false, %146 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32, i32* %15, align 4
  %162 = load i32*, i32** %8, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32*, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  store i32 1, i32* %5, align 4
  br label %165

165:                                              ; preds = %157, %72, %48
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @jv_object_get(i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_number(i32) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_string_length_codepoints(i32) #1

declare dso_local double @jv_number_value(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
