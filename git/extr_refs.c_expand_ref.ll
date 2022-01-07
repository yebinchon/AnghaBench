; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_expand_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_expand_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@ref_rev_parse_rules = common dso_local global i8** null, align 8
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@warn_ambiguous_refs = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ignoring dangling symref %s\00", align 1
@REF_ISBROKEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ignoring broken ref %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_ref(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i8** %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca %struct.object_id, align 4
  %16 = alloca %struct.object_id*, align 8
  %17 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = load i8**, i8*** %10, align 8
  store i8* null, i8** %19, align 8
  %20 = load i8**, i8*** @ref_rev_parse_rules, align 8
  store i8** %20, i8*** %11, align 8
  br label %21

21:                                               ; preds = %94, %5
  %22 = load i8**, i8*** %11, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %97

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  %30 = load %struct.object_id*, %struct.object_id** %9, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi %struct.object_id* [ %15, %28 ], [ %30, %29 ]
  store %struct.object_id* %32, %struct.object_id** %16, align 8
  %33 = call i32 @strbuf_reset(%struct.strbuf* %14)
  %34 = load i8**, i8*** %11, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strbuf_addf(%struct.strbuf* %14, i8* %35, i32 %36, i8* %37)
  %39 = load %struct.repository*, %struct.repository** %6, align 8
  %40 = call i32 @get_main_ref_store(%struct.repository* %39)
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RESOLVE_REF_READING, align 4
  %44 = load %struct.object_id*, %struct.object_id** %16, align 8
  %45 = call i8* @refs_resolve_ref_unsafe(i32 %40, i32 %42, i32 %43, %struct.object_id* %44, i32* %17)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %31
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @xstrdup(i8* %53)
  %55 = load i8**, i8*** %10, align 8
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @warn_ambiguous_refs, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %97

60:                                               ; preds = %56
  br label %93

61:                                               ; preds = %31
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @REF_ISSYMREF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strcmp(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @warning(i32 %72, i32 %74)
  br label %92

76:                                               ; preds = %66, %61
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* @REF_ISBROKEN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strchr(i32 %83, i8 signext 47)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @warning(i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %86, %81, %76
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %60
  br label %94

94:                                               ; preds = %93
  %95 = load i8**, i8*** %11, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %11, align 8
  br label %21

97:                                               ; preds = %59, %21
  %98 = call i32 @strbuf_release(%struct.strbuf* %14)
  %99 = load i32, i32* %13, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i8* @refs_resolve_ref_unsafe(i32, i32, i32, %struct.object_id*, i32*) #2

declare dso_local i32 @get_main_ref_store(%struct.repository*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @warning(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strchr(i32, i8 signext) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
