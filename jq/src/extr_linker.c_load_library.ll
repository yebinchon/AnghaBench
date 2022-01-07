; ModuleID = '/home/carl/AnghaBench/jq/src/extr_linker.c_load_library.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_linker.c_load_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lib_loading_state = type { i32, i8**, i8** }
%struct.locfile = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"jq: error loading data file %s: %s\0A\00", align 1
@OP_IS_CALL_PSEUDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i8*, i8**, %struct.lib_loading_state*)* @load_library to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_library(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8** %6, %struct.lib_loading_state* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.lib_loading_state*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.locfile*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8** %6, i8*** %15, align 8
  store %struct.lib_loading_state* %7, %struct.lib_loading_state** %16, align 8
  store i32 0, i32* %17, align 4
  store %struct.locfile* null, %struct.locfile** %18, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %8
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @jv_string_value(i32 %29)
  %31 = call i32 @jv_load_file(i32 %30, i32 0)
  store i32 %31, i32* %20, align 4
  br label %36

32:                                               ; preds = %25, %8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @jv_string_value(i32 %33)
  %35 = call i32 @jv_load_file(i32 %34, i32 1)
  store i32 %35, i32* %20, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %20, align 4
  %38 = call i32 @jv_is_valid(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %36
  %41 = call i8* (...) @gen_noop()
  store i8* %41, i8** %19, align 8
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %20, align 4
  %46 = call i32 @jv_copy(i32 %45)
  %47 = call i64 @jv_invalid_has_msg(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @jv_invalid_get_msg(i32 %50)
  store i32 %51, i32* %20, align 4
  br label %54

52:                                               ; preds = %44
  %53 = call i32 @jv_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %20, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @jv_string_value(i32 %56)
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @jv_string_value(i32 %58)
  %60 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59)
  %61 = call i32 @jq_report_error(i32* %55, i32 %60)
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %54, %40
  br label %163

65:                                               ; preds = %36
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @jv_copy(i32 %69)
  %71 = load i8*, i8** %14, align 8
  %72 = call i8* @gen_const_global(i32 %70, i8* %71)
  store i8* %72, i8** %19, align 8
  br label %115

73:                                               ; preds = %65
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @jv_string_value(i32 %75)
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @jv_string_value(i32 %77)
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @jv_copy(i32 %79)
  %81 = call i32 @jv_string_length_bytes(i32 %80)
  %82 = call %struct.locfile* @locfile_init(i32* %74, i32 %76, i32 %78, i32 %81)
  store %struct.locfile* %82, %struct.locfile** %18, align 8
  %83 = load %struct.locfile*, %struct.locfile** %18, align 8
  %84 = call i64 @jq_parse_library(%struct.locfile* %83, i8** %19)
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %17, align 4
  %89 = load %struct.locfile*, %struct.locfile** %18, align 8
  %90 = call i32 @locfile_free(%struct.locfile* %89)
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %73
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @jv_string_value(i32 %94)
  %96 = call i8* @strdup(i32 %95)
  store i8* %96, i8** %22, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @jq_get_jq_origin(i32* %98)
  %100 = load i8*, i8** %22, align 8
  %101 = call i8* @dirname(i8* %100)
  %102 = call i32 @jv_string(i8* %101)
  %103 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %104 = call i64 @process_dependencies(i32* %97, i32 %99, i32 %102, i8** %19, %struct.lib_loading_state* %103)
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %17, align 4
  %109 = load i8*, i8** %22, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %19, align 8
  %112 = load i32, i32* @OP_IS_CALL_PSEUDO, align 4
  %113 = call i8* @block_bind_self(i8* %111, i32 %112)
  store i8* %113, i8** %19, align 8
  br label %114

114:                                              ; preds = %93, %73
  br label %115

115:                                              ; preds = %114, %68
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %118 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  store i32 %119, i32* %21, align 4
  %121 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %122 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %125 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 8
  %129 = trunc i64 %128 to i32
  %130 = call i8* @jv_mem_realloc(i8** %123, i32 %129)
  %131 = bitcast i8* %130 to i8**
  %132 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %133 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %132, i32 0, i32 2
  store i8** %131, i8*** %133, align 8
  %134 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %135 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %138 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = call i8* @jv_mem_realloc(i8** %136, i32 %142)
  %144 = bitcast i8* %143 to i8**
  %145 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %146 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %145, i32 0, i32 1
  store i8** %144, i8*** %146, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @jv_string_value(i32 %147)
  %149 = call i8* @strdup(i32 %148)
  %150 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %151 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  store i8* %149, i8** %155, align 8
  %156 = load i8*, i8** %19, align 8
  %157 = load %struct.lib_loading_state*, %struct.lib_loading_state** %16, align 8
  %158 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %157, i32 0, i32 1
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %156, i8** %162, align 8
  br label %163

163:                                              ; preds = %116, %64
  %164 = load i8*, i8** %19, align 8
  %165 = load i8**, i8*** %15, align 8
  store i8* %164, i8** %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @jv_free(i32 %166)
  %168 = load i32, i32* %20, align 4
  %169 = call i32 @jv_free(i32 %168)
  %170 = load i32, i32* %17, align 4
  ret i32 %170
}

declare dso_local i32 @jv_load_file(i32, i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i8* @gen_noop(...) #1

declare dso_local i64 @jv_invalid_has_msg(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_invalid_get_msg(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jq_report_error(i32*, i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32, i32) #1

declare dso_local i8* @gen_const_global(i32, i8*) #1

declare dso_local %struct.locfile* @locfile_init(i32*, i32, i32, i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i64 @jq_parse_library(%struct.locfile*, i8**) #1

declare dso_local i32 @locfile_free(%struct.locfile*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i64 @process_dependencies(i32*, i32, i32, i8**, %struct.lib_loading_state*) #1

declare dso_local i32 @jq_get_jq_origin(i32*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @block_bind_self(i8*, i32) #1

declare dso_local i8* @jv_mem_realloc(i8**, i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
