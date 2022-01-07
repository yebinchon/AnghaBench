; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_dump_irep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_dump_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRB_DUMP_GENERAL_FAILURE = common dso_local global i32 0, align 4
@DUMP_DEBUG_INFO = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32**, i64*)* @dump_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_irep(i32* %0, i32* %1, i32 %2, i32** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = load i32, i32* @MRB_DUMP_GENERAL_FAILURE, align 4
  store i32 %24, i32* %12, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32* null, i32** %17, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @debug_info_defined_p(i32* %25)
  store i64 %26, i64* %18, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @lv_defined_p(i32* %27)
  store i64 %28, i64* %19, align 8
  store i32* null, i32** %20, align 8
  store i32 0, i32* %21, align 4
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32**, i32*** %10, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @MRB_DUMP_GENERAL_FAILURE, align 4
  store i32 %33, i32* %6, align 4
  br label %188

34:                                               ; preds = %5
  store i64 4, i64* %14, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @get_irep_record_size(i32* %35, i32* %36)
  %38 = load i64, i64* %14, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %14, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @DUMP_DEBUG_INFO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %34
  %45 = load i64, i64* %18, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load i64, i64* %15, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %15, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @mrb_malloc(i32* %50, i64 5)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %22, align 8
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %15, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @get_filename_table_size(i32* %55, i32* %56, i32** %22, i32* %23)
  %58 = load i64, i64* %15, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %15, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @get_debug_record_size(i32* %60, i32* %61)
  %63 = load i64, i64* %15, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %15, align 8
  br label %65

65:                                               ; preds = %47, %44
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i64, i64* %19, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i64, i64* %16, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %16, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @create_lv_sym_table(i32* %72, i32* %73, i32** %20, i32* %21)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %20, align 8
  %78 = load i32, i32* %21, align 4
  %79 = call i64 @get_lv_section_size(i32* %75, i32* %76, i32* %77, i32 %78)
  %80 = load i64, i64* %16, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %16, align 8
  br label %82

82:                                               ; preds = %69, %66
  %83 = load i64, i64* %14, align 8
  %84 = add i64 4, %83
  %85 = load i64, i64* %15, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %16, align 8
  %88 = add i64 %86, %87
  %89 = add i64 %88, 4
  store i64 %89, i64* %13, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i64 @mrb_malloc(i32* %90, i64 %91)
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32**, i32*** %10, align 8
  store i32* %93, i32** %94, align 8
  store i32* %93, i32** %17, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32* %96, i32** %17, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @write_section_irep(i32* %97, i32* %98, i32* %99, i64* %14, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @MRB_DUMP_OK, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %82
  br label %170

106:                                              ; preds = %82
  %107 = load i64, i64* %14, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 %107
  store i32* %109, i32** %17, align 8
  %110 = load i64, i64* %14, align 8
  %111 = add i64 4, %110
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %111, %112
  %114 = load i64, i64* %16, align 8
  %115 = add i64 %113, %114
  %116 = add i64 %115, 4
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @DUMP_DEBUG_INFO, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %106
  %123 = load i64, i64* %18, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = load i32*, i32** %22, align 8
  %130 = load i32, i32* %23, align 4
  %131 = call i32 @write_section_debug(i32* %126, i32* %127, i32* %128, i32* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @MRB_DUMP_OK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %170

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %122
  %138 = load i64, i64* %15, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 %138
  store i32* %140, i32** %17, align 8
  br label %141

141:                                              ; preds = %137, %106
  %142 = load i64, i64* %19, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i32*, i32** %17, align 8
  %148 = load i32*, i32** %20, align 8
  %149 = load i32, i32* %21, align 4
  %150 = call i32 @write_section_lv(i32* %145, i32* %146, i32* %147, i32* %148, i32 %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @MRB_DUMP_OK, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %170

155:                                              ; preds = %144
  %156 = load i64, i64* %16, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %17, align 8
  br label %159

159:                                              ; preds = %155, %141
  %160 = load i32*, i32** %7, align 8
  %161 = load i32*, i32** %17, align 8
  %162 = call i32 @write_footer(i32* %160, i32* %161)
  %163 = load i32*, i32** %7, align 8
  %164 = load i64*, i64** %11, align 8
  %165 = load i64, i64* %164, align 8
  %166 = load i32**, i32*** %10, align 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @write_rite_binary_header(i32* %163, i64 %165, i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %159, %154, %135, %105
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @MRB_DUMP_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i32*, i32** %7, align 8
  %176 = load i32**, i32*** %10, align 8
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @mrb_free(i32* %175, i32* %177)
  %179 = load i32**, i32*** %10, align 8
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %174, %170
  %181 = load i32*, i32** %7, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = call i32 @mrb_free(i32* %181, i32* %182)
  %184 = load i32*, i32** %7, align 8
  %185 = load i32*, i32** %22, align 8
  %186 = call i32 @mrb_free(i32* %184, i32* %185)
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %180, %31
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i64 @debug_info_defined_p(i32*) #1

declare dso_local i64 @lv_defined_p(i32*) #1

declare dso_local i64 @get_irep_record_size(i32*, i32*) #1

declare dso_local i64 @mrb_malloc(i32*, i64) #1

declare dso_local i64 @get_filename_table_size(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @get_debug_record_size(i32*, i32*) #1

declare dso_local i32 @create_lv_sym_table(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @get_lv_section_size(i32*, i32*, i32*, i32) #1

declare dso_local i32 @write_section_irep(i32*, i32*, i32*, i64*, i32) #1

declare dso_local i32 @write_section_debug(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @write_section_lv(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @write_footer(i32*, i32*) #1

declare dso_local i32 @write_rite_binary_header(i32*, i64, i32*, i32) #1

declare dso_local i32 @mrb_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
