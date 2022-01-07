; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_format_ref_array_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_format_ref_array_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_formatting_state = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ref_array_item = type { i32 }
%struct.ref_format = type { i8*, i64, i32 }
%struct.strbuf = type { i32 }
%struct.atom_value = type { i32, i64 (%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*)* }

@REF_FORMATTING_STATE_INIT = common dso_local global %struct.ref_formatting_state zeroinitializer, align 8
@GIT_COLOR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"format: %%(end) atom missing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format_ref_array_item(%struct.ref_array_item* %0, %struct.ref_format* %1, %struct.strbuf* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_array_item*, align 8
  %7 = alloca %struct.ref_format*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ref_formatting_state, align 8
  %14 = alloca %struct.atom_value*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.atom_value, align 8
  store %struct.ref_array_item* %0, %struct.ref_array_item** %6, align 8
  store %struct.ref_format* %1, %struct.ref_format** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %17 = bitcast %struct.ref_formatting_state* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.ref_formatting_state* @REF_FORMATTING_STATE_INIT to i8*), i64 16, i1 false)
  %18 = load %struct.ref_format*, %struct.ref_format** %7, align 8
  %19 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 0
  %23 = call i32 @push_stack_element(%struct.TYPE_3__** %22)
  %24 = load %struct.ref_format*, %struct.ref_format** %7, align 8
  %25 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %75, %4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @find_next(i8* %33)
  store i8* %34, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  br i1 %37, label %38, label %78

38:                                               ; preds = %36
  %39 = load i8*, i8** %11, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 41)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @append_literal(i8* %45, i8* %46, %struct.ref_formatting_state* %13)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.ref_format*, %struct.ref_format** %7, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %54 = call i32 @parse_ref_filter_atom(%struct.ref_format* %49, i8* %51, i8* %52, %struct.strbuf* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %48
  %58 = load %struct.ref_array_item*, %struct.ref_array_item** %6, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %61 = call i64 @get_ref_atom_value(%struct.ref_array_item* %58, i32 %59, %struct.atom_value** %14, %struct.strbuf* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load %struct.atom_value*, %struct.atom_value** %14, align 8
  %65 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %64, i32 0, i32 1
  %66 = load i64 (%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*)*, i64 (%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*)** %65, align 8
  %67 = load %struct.atom_value*, %struct.atom_value** %14, align 8
  %68 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %69 = call i64 %66(%struct.atom_value* %67, %struct.ref_formatting_state* %13, %struct.strbuf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63, %57, %48
  %72 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 0
  %73 = call i32 @pop_stack_element(%struct.TYPE_3__** %72)
  store i32 -1, i32* %5, align 4
  br label %126

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %10, align 8
  br label %27

78:                                               ; preds = %36
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @append_literal(i8* %88, i8* %89, %struct.ref_formatting_state* %13)
  br label %91

91:                                               ; preds = %82, %78
  %92 = load %struct.ref_format*, %struct.ref_format** %7, align 8
  %93 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load i32, i32* @GIT_COLOR_RESET, align 4
  %98 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %16, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %100 = call i64 @append_atom(%struct.atom_value* %16, %struct.ref_formatting_state* %13, %struct.strbuf* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 0
  %104 = call i32 @pop_stack_element(%struct.TYPE_3__** %103)
  store i32 -1, i32* %5, align 4
  br label %126

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %91
  %107 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 0
  %114 = call i32 @pop_stack_element(%struct.TYPE_3__** %113)
  %115 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %116 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %117 = call i32 @strbuf_addf_ret(%struct.strbuf* %115, i32 -1, i32 %116)
  store i32 %117, i32* %5, align 4
  br label %126

118:                                              ; preds = %106
  %119 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %120 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @strbuf_addbuf(%struct.strbuf* %119, i32* %122)
  %124 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %13, i32 0, i32 0
  %125 = call i32 @pop_stack_element(%struct.TYPE_3__** %124)
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %118, %112, %102, %71
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @push_stack_element(%struct.TYPE_3__**) #2

declare dso_local i8* @find_next(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @append_literal(i8*, i8*, %struct.ref_formatting_state*) #2

declare dso_local i32 @parse_ref_filter_atom(%struct.ref_format*, i8*, i8*, %struct.strbuf*) #2

declare dso_local i64 @get_ref_atom_value(%struct.ref_array_item*, i32, %struct.atom_value**, %struct.strbuf*) #2

declare dso_local i32 @pop_stack_element(%struct.TYPE_3__**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @append_atom(%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
