; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_expressions_parse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_expressions_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32, i32*, i32* }
%struct.tl_expression = type { i8*, i64, i64, %struct.tl_expression*, %struct.tl_expression*, i32*, i32, %struct.tl_expression*, %struct.tl_expression* }

@tlet_simple = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"duplicate expression: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"magic collision for expressions %s and %s\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"combinator collision for expressions %s and %s\00", align 1
@TL_SECTION_TYPES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_list_expressions_parse(%struct.tl_compiler* %0, %struct.tl_expression* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca %struct.tl_expression*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  %7 = alloca %struct.tl_expression*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tl_expression*, align 8
  %10 = alloca %struct.tl_expression*, align 8
  %11 = alloca %struct.tl_expression*, align 8
  %12 = alloca %struct.tl_expression*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %5, align 8
  %13 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %14 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %13, i32 0, i32 8
  %15 = load %struct.tl_expression*, %struct.tl_expression** %14, align 8
  store %struct.tl_expression* %15, %struct.tl_expression** %6, align 8
  br label %16

16:                                               ; preds = %180, %2
  %17 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %18 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %19 = icmp ne %struct.tl_expression* %17, %18
  br i1 %19, label %20, label %182

20:                                               ; preds = %16
  %21 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %22 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %21, i32 0, i32 8
  %23 = load %struct.tl_expression*, %struct.tl_expression** %22, align 8
  store %struct.tl_expression* %23, %struct.tl_expression** %7, align 8
  %24 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %25 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %26 = call i64 @tl_expression_parse(%struct.tl_compiler* %24, %struct.tl_expression* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %183

29:                                               ; preds = %20
  %30 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %31 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %32 = call i8* @tl_expression_join(%struct.tl_compiler* %30, %struct.tl_expression* %31, i32 0)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %183

36:                                               ; preds = %29
  %37 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %38 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %37, i32 0, i32 0
  %39 = call i32 @cstr_free(i8** %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %42 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %44 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %45 = call i64 @tl_expression_compute_magic(%struct.tl_compiler* %43, %struct.tl_expression* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %183

48:                                               ; preds = %36
  %49 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %50 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @tlet_simple, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %179

54:                                               ; preds = %48
  %55 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %56 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %59 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %63 = call %struct.tl_expression* @tl_hashmap_get_f(i32* %61, %struct.tl_expression* %62, i32 1)
  store %struct.tl_expression* %63, %struct.tl_expression** %9, align 8
  %64 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %65 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %66 = icmp ne %struct.tl_expression* %64, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %54
  %68 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %69 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %72 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i8* %70, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @verbosity, align 4
  %78 = icmp sge i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %82 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %87 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %86, i32 0, i32 7
  %88 = load %struct.tl_expression*, %struct.tl_expression** %87, align 8
  store %struct.tl_expression* %88, %struct.tl_expression** %10, align 8
  %89 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %90 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %89, i32 0, i32 8
  %91 = load %struct.tl_expression*, %struct.tl_expression** %90, align 8
  store %struct.tl_expression* %91, %struct.tl_expression** %11, align 8
  %92 = load %struct.tl_expression*, %struct.tl_expression** %11, align 8
  %93 = load %struct.tl_expression*, %struct.tl_expression** %10, align 8
  %94 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %93, i32 0, i32 8
  store %struct.tl_expression* %92, %struct.tl_expression** %94, align 8
  %95 = load %struct.tl_expression*, %struct.tl_expression** %10, align 8
  %96 = load %struct.tl_expression*, %struct.tl_expression** %11, align 8
  %97 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %96, i32 0, i32 7
  store %struct.tl_expression* %95, %struct.tl_expression** %97, align 8
  %98 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %99 = call i32 @tl_expression_free(%struct.tl_expression* %98)
  br label %180

100:                                              ; preds = %67
  %101 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %102 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %103 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %106 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @tl_failf(%struct.tl_compiler* %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %104, i8* %107)
  store i32 %108, i32* %3, align 4
  br label %183

109:                                              ; preds = %54
  %110 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %111 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %137, label %114

114:                                              ; preds = %109
  %115 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %116 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %119 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %123 = call %struct.tl_expression* @tl_hashmap_get_f(i32* %121, %struct.tl_expression* %122, i32 1)
  store %struct.tl_expression* %123, %struct.tl_expression** %9, align 8
  %124 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %125 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %126 = icmp ne %struct.tl_expression* %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %114
  %128 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %129 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %130 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %133 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @tl_failf(%struct.tl_compiler* %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %131, i8* %134)
  store i32 %135, i32* %3, align 4
  br label %183

136:                                              ; preds = %114
  br label %137

137:                                              ; preds = %136, %109
  %138 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %139 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @tlet_simple, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %137
  %144 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %145 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %178

148:                                              ; preds = %143
  %149 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %150 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TL_SECTION_TYPES, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %148
  %155 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %156 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %155, i32 0, i32 0
  %157 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %158 = call %struct.tl_expression* @tl_hashmap_get_f(i32* %156, %struct.tl_expression* %157, i32 1)
  store %struct.tl_expression* %158, %struct.tl_expression** %12, align 8
  %159 = load %struct.tl_expression*, %struct.tl_expression** %12, align 8
  %160 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %161 = icmp eq %struct.tl_expression* %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %164 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %165 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %164, i32 0, i32 4
  store %struct.tl_expression* %163, %struct.tl_expression** %165, align 8
  br label %175

166:                                              ; preds = %154
  %167 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %168 = load %struct.tl_expression*, %struct.tl_expression** %12, align 8
  %169 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %168, i32 0, i32 4
  %170 = load %struct.tl_expression*, %struct.tl_expression** %169, align 8
  %171 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %170, i32 0, i32 3
  store %struct.tl_expression* %167, %struct.tl_expression** %171, align 8
  %172 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %173 = load %struct.tl_expression*, %struct.tl_expression** %12, align 8
  %174 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %173, i32 0, i32 4
  store %struct.tl_expression* %172, %struct.tl_expression** %174, align 8
  br label %175

175:                                              ; preds = %166, %162
  %176 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %177 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %176, i32 0, i32 3
  store %struct.tl_expression* null, %struct.tl_expression** %177, align 8
  br label %178

178:                                              ; preds = %175, %148, %143, %137
  br label %179

179:                                              ; preds = %178, %48
  br label %180

180:                                              ; preds = %179, %85
  %181 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  store %struct.tl_expression* %181, %struct.tl_expression** %6, align 8
  br label %16

182:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %127, %100, %47, %35, %28
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i64 @tl_expression_parse(%struct.tl_compiler*, %struct.tl_expression*) #1

declare dso_local i8* @tl_expression_join(%struct.tl_compiler*, %struct.tl_expression*, i32) #1

declare dso_local i32 @cstr_free(i8**) #1

declare dso_local i64 @tl_expression_compute_magic(%struct.tl_compiler*, %struct.tl_expression*) #1

declare dso_local %struct.tl_expression* @tl_hashmap_get_f(i32*, %struct.tl_expression*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @tl_expression_free(%struct.tl_expression*) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
