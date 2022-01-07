; ModuleID = '/home/carl/AnghaBench/jq/src/extr_util.c_jq_util_input_next_input.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_util.c_jq_util_input_next_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jq_util_input_next_input(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i8* (...) @jv_invalid()
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %184, %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %95

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i32 @jq_util_input_read_more(%struct.TYPE_4__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %178

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @jv_is_valid(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @jv_string_sized(i8* %33, i64 %36)
  %38 = call i8* @jv_string_concat(i8* %30, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %94

41:                                               ; preds = %21
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @jv_is_valid(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i8* @jv_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %78

59:                                               ; preds = %47
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @jv_string_sized(i8* %71, i64 %75)
  %77 = call i8* @jv_string_concat(i8* %68, i32 %76)
  store i8* %77, i8** %2, align 8
  br label %201

78:                                               ; preds = %47
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @jv_string_sized(i8* %82, i64 %85)
  %87 = call i8* @jv_string_concat(i8* %79, i32 %86)
  store i8* %87, i8** %6, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 0, i8* %91, align 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %78, %27
  br label %177

95:                                               ; preds = %8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @jv_parser_remaining(i32* %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %95
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = call i32 @jq_util_input_read_more(%struct.TYPE_4__* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i8* (...) @jv_invalid()
  store i8* %112, i8** %6, align 8
  br label %113

113:                                              ; preds = %111, %106, %101
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @jv_parser_set_buf(i32* %116, i8* %119, i64 %122, i32 %126)
  br label %128

128:                                              ; preds = %113, %95
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i8* @jv_parser_next(i32* %131)
  store i8* %132, i8** %6, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @jv_is_valid(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %128
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @jv_parser_remaining(i32* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = call i64 @jv_is_valid(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %138
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = call i8* @jv_array_append(i8* %149, i8* %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = call i8* (...) @jv_invalid()
  store i8* %154, i8** %6, align 8
  br label %163

155:                                              ; preds = %138
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @jv_copy(i8* %156)
  %158 = call i64 @jv_invalid_has_msg(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i8*, i8** %6, align 8
  store i8* %161, i8** %2, align 8
  br label %201

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %146
  br label %176

164:                                              ; preds = %128
  %165 = load i8*, i8** %6, align 8
  %166 = call i64 @jv_is_valid(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @jv_copy(i8* %169)
  %171 = call i64 @jv_invalid_has_msg(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168, %164
  %174 = load i8*, i8** %6, align 8
  store i8* %174, i8** %2, align 8
  br label %201

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %163
  br label %177

177:                                              ; preds = %176, %94
  br label %178

178:                                              ; preds = %177, %20
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i1 [ true, %178 ], [ %183, %181 ]
  br i1 %185, label %8, label %186

186:                                              ; preds = %184
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @jv_is_valid(i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %6, align 8
  %196 = call i8* (...) @jv_invalid()
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  br label %199

199:                                              ; preds = %192, %186
  %200 = load i8*, i8** %6, align 8
  store i8* %200, i8** %2, align 8
  br label %201

201:                                              ; preds = %199, %173, %160, %59
  %202 = load i8*, i8** %2, align 8
  ret i8* %202
}

declare dso_local i8* @jv_invalid(...) #1

declare dso_local i32 @jq_util_input_read_more(%struct.TYPE_4__*) #1

declare dso_local i64 @jv_is_valid(i8*) #1

declare dso_local i8* @jv_string_concat(i8*, i32) #1

declare dso_local i32 @jv_string_sized(i8*, i64) #1

declare dso_local i8* @jv_string(i8*) #1

declare dso_local i32 @jv_parser_remaining(i32*) #1

declare dso_local i32 @jv_parser_set_buf(i32*, i8*, i64, i32) #1

declare dso_local i8* @jv_parser_next(i32*) #1

declare dso_local i8* @jv_array_append(i8*, i8*) #1

declare dso_local i64 @jv_invalid_has_msg(i32) #1

declare dso_local i32 @jv_copy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
