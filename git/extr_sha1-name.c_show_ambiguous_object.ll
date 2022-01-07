; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_show_ambiguous_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_show_ambiguous_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.disambiguate_state = type { i32, i32, i32 (i32, %struct.object_id*, i32)* }
%struct.commit = type { i32 }
%struct.pretty_print_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tag = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4
@DATE_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" %ad - %s\00", align 1
@OBJ_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"  %s %s%s\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*)* @show_ambiguous_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_ambiguous_object(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.disambiguate_state*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.pretty_print_context, align 4
  %11 = alloca %struct.tag*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.disambiguate_state*
  store %struct.disambiguate_state* %13, %struct.disambiguate_state** %6, align 8
  %14 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %16 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %15, i32 0, i32 2
  %17 = load i32 (i32, %struct.object_id*, i32)*, i32 (i32, %struct.object_id*, i32)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.object_id*, i32)* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %21 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %20, i32 0, i32 2
  %22 = load i32 (i32, %struct.object_id*, i32)*, i32 (i32, %struct.object_id*, i32)** %21, align 8
  %23 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %24 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.object_id*, %struct.object_id** %4, align 8
  %27 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %28 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %22(i32 %25, %struct.object_id* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %103

33:                                               ; preds = %19, %2
  %34 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %35 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.object_id*, %struct.object_id** %4, align 8
  %38 = call i32 @oid_object_info(i32 %36, %struct.object_id* %37, i32* null)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @OBJ_COMMIT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %44 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.object_id*, %struct.object_id** %4, align 8
  %47 = call %struct.commit* @lookup_commit(i32 %45, %struct.object_id* %46)
  store %struct.commit* %47, %struct.commit** %9, align 8
  %48 = load %struct.commit*, %struct.commit** %9, align 8
  %49 = icmp ne %struct.commit* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = bitcast %struct.pretty_print_context* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %51, i8 0, i64 8, i1 false)
  %52 = load i32, i32* @DATE_SHORT, align 4
  %53 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %10, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.commit*, %struct.commit** %9, align 8
  %56 = call i32 @format_commit_message(%struct.commit* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.strbuf* %7, %struct.pretty_print_context* %10)
  br label %57

57:                                               ; preds = %50, %42
  br label %83

58:                                               ; preds = %33
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @OBJ_TAG, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %64 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.object_id*, %struct.object_id** %4, align 8
  %67 = call %struct.tag* @lookup_tag(i32 %65, %struct.object_id* %66)
  store %struct.tag* %67, %struct.tag** %11, align 8
  %68 = load %struct.tag*, %struct.tag** %11, align 8
  %69 = call i32 @parse_tag(%struct.tag* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %62
  %72 = load %struct.tag*, %struct.tag** %11, align 8
  %73 = getelementptr inbounds %struct.tag, %struct.tag* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.tag*, %struct.tag** %11, align 8
  %78 = getelementptr inbounds %struct.tag, %struct.tag* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %76, %71, %62
  br label %82

82:                                               ; preds = %81, %58
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.disambiguate_state*, %struct.disambiguate_state** %6, align 8
  %85 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.object_id*, %struct.object_id** %4, align 8
  %88 = load i32, i32* @DEFAULT_ABBREV, align 4
  %89 = call i32 @repo_find_unique_abbrev(i32 %86, %struct.object_id* %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i8* @type_name(i32 %90)
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  %95 = call i8* @type_name(i32 %94)
  br label %97

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i8* [ %95, %93 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %96 ]
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @advise(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %89, i8* %98, i32 %100)
  %102 = call i32 @strbuf_release(%struct.strbuf* %7)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %32
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #2

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local %struct.tag* @lookup_tag(i32, %struct.object_id*) #2

declare dso_local i32 @parse_tag(%struct.tag*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @advise(i8*, i32, i8*, i32) #2

declare dso_local i32 @repo_find_unique_abbrev(i32, %struct.object_id*, i32) #2

declare dso_local i8* @type_name(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
