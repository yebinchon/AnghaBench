; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_repo_dwim_log.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_repo_dwim_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.ref_store = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@ref_rev_parse_rules = common dso_local global i8** null, align 8
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@warn_ambiguous_refs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_dwim_log(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i8** %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.ref_store*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf, align 8
  %16 = alloca %struct.object_id, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store i8** %4, i8*** %10, align 8
  %19 = load %struct.repository*, %struct.repository** %6, align 8
  %20 = call %struct.ref_store* @get_main_ref_store(%struct.repository* %19)
  store %struct.ref_store* %20, %struct.ref_store** %11, align 8
  %21 = load %struct.repository*, %struct.repository** %6, align 8
  %22 = call i8* @substitute_branch_name(%struct.repository* %21, i8** %7, i32* %8)
  store i8* %22, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %23 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %24 = load i8**, i8*** %10, align 8
  store i8* null, i8** %24, align 8
  %25 = load i8**, i8*** @ref_rev_parse_rules, align 8
  store i8** %25, i8*** %13, align 8
  br label %26

26:                                               ; preds = %84, %5
  %27 = load i8**, i8*** %13, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %87

30:                                               ; preds = %26
  %31 = call i32 @strbuf_reset(%struct.strbuf* %15)
  %32 = load i8**, i8*** %13, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strbuf_addf(%struct.strbuf* %15, i8* %33, i32 %34, i8* %35)
  %37 = load %struct.ref_store*, %struct.ref_store** %11, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @RESOLVE_REF_READING, align 4
  %41 = call i8* @refs_resolve_ref_unsafe(%struct.ref_store* %37, i8* %39, i32 %40, %struct.object_id* %16, i32* null)
  store i8* %41, i8** %17, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  br label %84

45:                                               ; preds = %30
  %46 = load %struct.ref_store*, %struct.ref_store** %11, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @refs_reflog_exists(%struct.ref_store* %46, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %18, align 8
  br label %69

54:                                               ; preds = %45
  %55 = load i8*, i8** %17, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %55, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.ref_store*, %struct.ref_store** %11, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = call i64 @refs_reflog_exists(%struct.ref_store* %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i8*, i8** %17, align 8
  store i8* %66, i8** %18, align 8
  br label %68

67:                                               ; preds = %60, %54
  br label %84

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %18, align 8
  %75 = call i8* @xstrdup(i8* %74)
  %76 = load i8**, i8*** %10, align 8
  store i8* %75, i8** %76, align 8
  %77 = load %struct.object_id*, %struct.object_id** %9, align 8
  %78 = call i32 @oidcpy(%struct.object_id* %77, %struct.object_id* %16)
  br label %79

79:                                               ; preds = %73, %69
  %80 = load i32, i32* @warn_ambiguous_refs, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %87

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %67, %44
  %85 = load i8**, i8*** %13, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %13, align 8
  br label %26

87:                                               ; preds = %82, %26
  %88 = call i32 @strbuf_release(%struct.strbuf* %15)
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i32, i32* %14, align 4
  ret i32 %91
}

declare dso_local %struct.ref_store* @get_main_ref_store(%struct.repository*) #1

declare dso_local i8* @substitute_branch_name(%struct.repository*, i8**, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #1

declare dso_local i8* @refs_resolve_ref_unsafe(%struct.ref_store*, i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i64 @refs_reflog_exists(%struct.ref_store*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
