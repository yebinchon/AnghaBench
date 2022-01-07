; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_partial_comb_app_decl.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_partial_comb_app_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tl_constructor = type { i8*, i32, i32, i64, i64, i32 }
%struct.tl_combinator_tree = type { i32 }

@type_partial_comb_app_decl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Can not make partial app for undefined combinator\0A\00", align 1
@L = common dso_local global i64 0, align 8
@R = common dso_local global i64 0, align 8
@X = common dso_local global i64 0, align 8
@Z = common dso_local global i64 0, align 8
@TL_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Partial app: not enougth variables (i = %d)\0A\00", align 1
@tl_parse_partial_comb_app_decl._buf = internal global [100000 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1
@buf_pos = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_parse_partial_comb_app_decl(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_constructor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tl_combinator_tree*, align 8
  %10 = alloca %struct.tl_constructor*, align 8
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tree*, %struct.tree** %4, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @type_partial_comb_app_decl, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = load %struct.tree*, %struct.tree** %4, align 8
  %22 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tree*, %struct.tree** %4, align 8
  %29 = getelementptr inbounds %struct.tree, %struct.tree* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.tl_constructor* @tl_get_constructor(i32 %27, i32 %34)
  br label %52

36:                                               ; preds = %2
  %37 = load %struct.tree*, %struct.tree** %4, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tree*, %struct.tree** %4, align 8
  %45 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.tl_constructor* @tl_get_function(i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %36, %20
  %53 = phi %struct.tl_constructor* [ %35, %20 ], [ %51, %36 ]
  store %struct.tl_constructor* %53, %struct.tl_constructor** %6, align 8
  %54 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %55 = icmp ne %struct.tl_constructor* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @TL_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %181

58:                                               ; preds = %52
  %59 = load i64, i64* @L, align 8
  %60 = call i32 @TL_INIT(i64 %59)
  %61 = load i64, i64* @R, align 8
  %62 = call i32 @TL_INIT(i64 %61)
  %63 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %64 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @tl_tree_dup(i64 %65)
  store i64 %66, i64* @L, align 8
  %67 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %68 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @tl_tree_dup(i64 %69)
  store i64 %70, i64* @R, align 8
  store i32* null, i32** %7, align 8
  %71 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %72 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @L, align 8
  %75 = call i32 @change_var_ptrs(i64 %73, i64 %74, i32** %7)
  %76 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %77 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @R, align 8
  %80 = call i32 @change_var_ptrs(i64 %78, i64 %79, i32** %7)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32* @tree_clear_var_value(i32* %81)
  store i32* %82, i32** %7, align 8
  %83 = call i32 (...) @tl_buf_reset()
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %132, %58
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.tree*, %struct.tree** %4, align 8
  %87 = getelementptr inbounds %struct.tree, %struct.tree* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %84
  %91 = load i64, i64* @X, align 8
  %92 = call i32 @TL_INIT(i64 %91)
  %93 = load i64, i64* @Z, align 8
  %94 = call i32 @TL_INIT(i64 %93)
  %95 = load %struct.tree*, %struct.tree** %4, align 8
  %96 = getelementptr inbounds %struct.tree, %struct.tree* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %97, i64 %99
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = call i64 @tl_parse_any_term(%struct.TYPE_2__* %101, i32 0)
  store i64 %102, i64* @X, align 8
  store %struct.tl_combinator_tree* null, %struct.tl_combinator_tree** %9, align 8
  %103 = load i64, i64* @L, align 8
  %104 = load i64, i64* @X, align 8
  %105 = call i64 @change_first_var(i64 %103, %struct.tl_combinator_tree** %9, i64 %104)
  store i64 %105, i64* @Z, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %90
  %108 = load i32, i32* @TL_FAIL, align 4
  br label %109

109:                                              ; preds = %107, %90
  %110 = load i64, i64* @Z, align 8
  store i64 %110, i64* @L, align 8
  %111 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %9, align 8
  %112 = icmp ne %struct.tl_combinator_tree* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (i8*, ...) @TL_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @TL_FAIL, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i64, i64* @R, align 8
  %119 = load i64, i64* @X, align 8
  %120 = call i64 @change_first_var(i64 %118, %struct.tl_combinator_tree** %9, i64 %119)
  store i64 %120, i64* @Z, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @TL_FAIL, align 4
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i64, i64* @Z, align 8
  %126 = load i64, i64* @R, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i64, i64* @X, align 8
  %131 = call i32 @tl_buf_add_tree(i64 %130, i32 1)
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %84

135:                                              ; preds = %84
  %136 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %137 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* @buf_pos, align 4
  %140 = load i32, i32* @buf, align 4
  %141 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @tl_parse_partial_comb_app_decl._buf, i64 0, i64 0), i32 100000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %138, i32 %139, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %135
  %145 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %146 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @strlen(i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @tl_parse_partial_comb_app_decl._buf, i64 0, i64 0))
  %149 = call %struct.tl_constructor* @tl_add_constructor(i32 %147, i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @tl_parse_partial_comb_app_decl._buf, i64 0, i64 0), i32 %148, i32 1)
  br label %156

150:                                              ; preds = %135
  %151 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %152 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @strlen(i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @tl_parse_partial_comb_app_decl._buf, i64 0, i64 0))
  %155 = call %struct.tl_constructor* @tl_add_function(i32 %153, i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @tl_parse_partial_comb_app_decl._buf, i64 0, i64 0), i32 %154, i32 1)
  br label %156

156:                                              ; preds = %150, %144
  %157 = phi %struct.tl_constructor* [ %149, %144 ], [ %155, %150 ]
  store %struct.tl_constructor* %157, %struct.tl_constructor** %10, align 8
  %158 = load i64, i64* @L, align 8
  %159 = load %struct.tl_constructor*, %struct.tl_constructor** %10, align 8
  %160 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %159, i32 0, i32 4
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* @R, align 8
  %162 = load %struct.tl_constructor*, %struct.tl_constructor** %10, align 8
  %163 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %162, i32 0, i32 3
  store i64 %161, i64* %163, align 8
  %164 = load %struct.tl_constructor*, %struct.tl_constructor** %6, align 8
  %165 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @tl_parse_partial_comb_app_decl._buf, i64 0, i64 0), i32 100000, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %166)
  %168 = call i32 @zstrdup(i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @tl_parse_partial_comb_app_decl._buf, i64 0, i64 0))
  %169 = load %struct.tl_constructor*, %struct.tl_constructor** %10, align 8
  %170 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  %171 = load %struct.tl_constructor*, %struct.tl_constructor** %10, align 8
  %172 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %156
  %176 = load %struct.tl_constructor*, %struct.tl_constructor** %10, align 8
  %177 = call i32 @tl_count_combinator_name(%struct.tl_constructor* %176)
  br label %178

178:                                              ; preds = %175, %156
  %179 = load %struct.tl_constructor*, %struct.tl_constructor** %10, align 8
  %180 = call i32 @tl_print_combinator(%struct.tl_constructor* %179)
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %56
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tl_constructor* @tl_get_constructor(i32, i32) #1

declare dso_local %struct.tl_constructor* @tl_get_function(i32, i32) #1

declare dso_local i32 @TL_ERROR(i8*, ...) #1

declare dso_local i32 @TL_INIT(i64) #1

declare dso_local i64 @tl_tree_dup(i64) #1

declare dso_local i32 @change_var_ptrs(i64, i64, i32**) #1

declare dso_local i32* @tree_clear_var_value(i32*) #1

declare dso_local i32 @tl_buf_reset(...) #1

declare dso_local i64 @tl_parse_any_term(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @change_first_var(i64, %struct.tl_combinator_tree**, i64) #1

declare dso_local i32 @tl_buf_add_tree(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.tl_constructor* @tl_add_constructor(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.tl_constructor* @tl_add_function(i32, i8*, i32, i32) #1

declare dso_local i32 @zstrdup(i8*) #1

declare dso_local i32 @tl_count_combinator_name(%struct.tl_constructor*) #1

declare dso_local i32 @tl_print_combinator(%struct.tl_constructor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
