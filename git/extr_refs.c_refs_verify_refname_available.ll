; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refs_verify_refname_available.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refs_verify_refname_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }
%struct.ref_store = type { i32 }
%struct.string_list = type { i32 }
%struct.object_id = type { i32 }
%struct.ref_iterator = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"'%s' exists; cannot create '%s'\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot process '%s' and '%s' at the same time\00", align 1
@DO_FOR_EACH_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@ITER_OK = common dso_local global i32 0, align 4
@ITER_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"error while iterating over references\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refs_verify_refname_available(%struct.ref_store* %0, i8* %1, %struct.string_list* %2, %struct.string_list* %3, %struct.strbuf* %4) #0 {
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca %struct.object_id, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ref_iterator*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.string_list* %2, %struct.string_list** %8, align 8
  store %struct.string_list* %3, %struct.string_list** %9, align 8
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  %20 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %21 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 -1, i32* %19, align 4
  %22 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %23 = call i32 @assert(%struct.strbuf* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add nsw i64 %25, 1
  %27 = call i32 @strbuf_grow(%struct.strbuf* %13, i64 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %89, %5
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %93

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @strbuf_add(%struct.strbuf* %13, i8* %38, i32 %48)
  %50 = load %struct.string_list*, %struct.string_list** %9, align 8
  %51 = icmp ne %struct.string_list* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load %struct.string_list*, %struct.string_list** %9, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @string_list_has_string(%struct.string_list* %53, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %89

59:                                               ; preds = %52, %33
  %60 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @refs_read_raw_ref(%struct.ref_store* %60, i8* %62, %struct.object_id* %15, %struct.strbuf* %14, i32* %16)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strbuf_addf(%struct.strbuf* %66, i32 %67, i8* %69, i8* %70)
  br label %154

72:                                               ; preds = %59
  %73 = load %struct.string_list*, %struct.string_list** %8, align 8
  %74 = icmp ne %struct.string_list* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.string_list*, %struct.string_list** %8, align 8
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @string_list_has_string(%struct.string_list* %76, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %83 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strbuf_addf(%struct.strbuf* %82, i32 %83, i8* %84, i8* %86)
  br label %154

88:                                               ; preds = %75, %72
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i8* @strchr(i8* %91, i8 signext 47)
  store i8* %92, i8** %11, align 8
  br label %30

93:                                               ; preds = %30
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* %98)
  %100 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 47)
  %101 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @DO_FOR_EACH_INCLUDE_BROKEN, align 4
  %105 = call %struct.ref_iterator* @refs_ref_iterator_begin(%struct.ref_store* %101, i8* %103, i32 0, i32 %104)
  store %struct.ref_iterator* %105, %struct.ref_iterator** %17, align 8
  br label %106

106:                                              ; preds = %121, %93
  %107 = load %struct.ref_iterator*, %struct.ref_iterator** %17, align 8
  %108 = call i32 @ref_iterator_advance(%struct.ref_iterator* %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* @ITER_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %106
  %112 = load %struct.string_list*, %struct.string_list** %9, align 8
  %113 = icmp ne %struct.string_list* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.string_list*, %struct.string_list** %9, align 8
  %116 = load %struct.ref_iterator*, %struct.ref_iterator** %17, align 8
  %117 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @string_list_has_string(%struct.string_list* %115, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %106

122:                                              ; preds = %114, %111
  %123 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %124 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.ref_iterator*, %struct.ref_iterator** %17, align 8
  %126 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @strbuf_addf(%struct.strbuf* %123, i32 %124, i8* %127, i8* %128)
  %130 = load %struct.ref_iterator*, %struct.ref_iterator** %17, align 8
  %131 = call i32 @ref_iterator_abort(%struct.ref_iterator* %130)
  br label %154

132:                                              ; preds = %106
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @ITER_DONE, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %132
  %139 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.string_list*, %struct.string_list** %8, align 8
  %142 = load %struct.string_list*, %struct.string_list** %9, align 8
  %143 = call i8* @find_descendant_ref(i8* %140, %struct.string_list* %141, %struct.string_list* %142)
  store i8* %143, i8** %12, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %148 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = call i32 @strbuf_addf(%struct.strbuf* %147, i32 %148, i8* %149, i8* %150)
  br label %153

152:                                              ; preds = %138
  store i32 0, i32* %19, align 4
  br label %153

153:                                              ; preds = %152, %146
  br label %154

154:                                              ; preds = %153, %122, %81, %65
  %155 = call i32 @strbuf_release(%struct.strbuf* %14)
  %156 = call i32 @strbuf_release(%struct.strbuf* %13)
  %157 = load i32, i32* %19, align 4
  ret i32 %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.strbuf*) #2

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @string_list_has_string(%struct.string_list*, i8*) #2

declare dso_local i32 @refs_read_raw_ref(%struct.ref_store*, i8*, %struct.object_id*, %struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local %struct.ref_iterator* @refs_ref_iterator_begin(%struct.ref_store*, i8*, i32, i32) #2

declare dso_local i32 @ref_iterator_advance(%struct.ref_iterator*) #2

declare dso_local i32 @ref_iterator_abort(%struct.ref_iterator*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i8* @find_descendant_ref(i8*, %struct.string_list*, %struct.string_list*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
