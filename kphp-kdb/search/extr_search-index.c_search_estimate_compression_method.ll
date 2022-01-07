; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_search_estimate_compression_method.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_search_estimate_compression_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@compression_speed = common dso_local global i64 0, align 8
@le_interpolative_ext = common dso_local global i32 0, align 4
@NCOMPRESSION_METHODS = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@cur_offs = common dso_local global i64 0, align 8
@word_index_offset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"cur_offs - word_index_offset == %lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"get_compression_bytes (%d) = %lld\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [133 x i8] c"Compression method: %s, %lld(%.6lf%%) = %lld(%.6lf%%)+%lld(%.6lf%%) bytes in %d lists (%.6lf seconds).\0AMax encoded list bytes = %d.\0A\00", align 1
@encoded_bytes = common dso_local global i64* null, align 8
@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@lists_encoded = common dso_local global i32 0, align 4
@max_encoded_list_size = common dso_local global i64* null, align 8
@interpolative_percent = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Choose %s+%s coding.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_estimate_compression_method(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @memset(i32* %8, i32 0, i32 8)
  %10 = load i64, i64* @compression_speed, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @le_interpolative_ext, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  br label %189

18:                                               ; preds = %1
  %19 = load i64, i64* @compression_speed, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %189

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %171, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NCOMPRESSION_METHODS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %174

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %32 = call double @get_utime(i32 %31)
  %33 = fneg double %32
  store double %33, double* %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @get_compression_bytes(i32 %34)
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %41 = call i32 @search_encode_lists(i32* %40, i32 1)
  %42 = load i64, i64* @cur_offs, align 8
  %43 = load i64, i64* @word_index_offset, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @get_compression_bytes(i32 %45)
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %27
  %49 = load i64, i64* @cur_offs, align 8
  %50 = load i64, i64* @word_index_offset, align 8
  %51 = sub nsw i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @get_compression_bytes(i32 %55)
  %57 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %56)
  %58 = call i32 @assert(i32 0)
  br label %59

59:                                               ; preds = %48, %27
  %60 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %61 = call double @get_utime(i32 %60)
  %62 = load double, double* %5, align 8
  %63 = fadd double %62, %61
  store double %63, double* %5, align 8
  %64 = load i64, i64* @verbosity, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %59
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i8* @list_get_compression_method_description(i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @get_compression_bytes(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @get_compression_bytes(i32 %73)
  %75 = call i64 @get_compression_bytes(i32 0)
  %76 = call double @percent(i64 %74, i64 %75)
  %77 = load i64*, i64** @encoded_bytes, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** @encoded_bytes, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = call double @percent(i64 %82, i64 %85)
  %87 = load i64*, i64** @encoded_bytes, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** @encoded_bytes, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = call double @percent(i64 %92, i64 %95)
  %97 = load i32, i32* @lists_encoded, align 4
  %98 = load double, double* %5, align 8
  %99 = load i64*, i64** @max_encoded_list_size, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** @max_encoded_list_size, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %66
  %107 = load i64*, i64** @max_encoded_list_size, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  br label %114

110:                                              ; preds = %66
  %111 = load i64*, i64** @max_encoded_list_size, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i64 [ %109, %106 ], [ %113, %110 ]
  %116 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %72, double %76, i64 %79, double %86, i64 %89, double %96, i32 %97, double %98, i64 %115)
  br label %117

117:                                              ; preds = %114, %59
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %170

120:                                              ; preds = %117
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %166, %120
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %124, label %169

124:                                              ; preds = %121
  %125 = load i64*, i64** @encoded_bytes, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 8
  %131 = load i32*, i32** %2, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 2
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %130, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call double @percent(i64 %129, i64 %141)
  store double %142, double* %7, align 8
  %143 = load i32, i32* %3, align 4
  switch i32 %143, label %165 [
    i32 1, label %144
    i32 2, label %154
  ]

144:                                              ; preds = %124
  %145 = load double, double* %7, align 8
  %146 = fcmp olt double %145, 1.000000e+02
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32, i32* %3, align 4
  %149 = load i32*, i32** %2, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %147, %144
  br label %165

154:                                              ; preds = %124
  %155 = load double, double* %7, align 8
  %156 = load double, double* @interpolative_percent, align 8
  %157 = fcmp olt double %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* %3, align 4
  %160 = load i32*, i32** %2, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %154
  br label %165

165:                                              ; preds = %124, %164, %153
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %121

169:                                              ; preds = %121
  br label %170

170:                                              ; preds = %169, %117
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %3, align 4
  br label %23

174:                                              ; preds = %23
  %175 = load i64, i64* @verbosity, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load i32, i32* @stderr, align 4
  %179 = load i32*, i32** %2, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @list_get_compression_method_description(i32 %181)
  %183 = load i32*, i32** %2, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @list_get_compression_method_description(i32 %185)
  %187 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %182, i8* %186)
  br label %188

188:                                              ; preds = %177, %174
  br label %189

189:                                              ; preds = %188, %21, %12
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_compression_bytes(i32) #1

declare dso_local i32 @search_encode_lists(i32*, i32) #1

declare dso_local i32 @kprintf(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @list_get_compression_method_description(i32) #1

declare dso_local double @percent(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
