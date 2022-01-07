; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_http_get_info_packs.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_http_get_info_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.packed_git = type { i32 }
%struct.http_get_options = type { i32, i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"objects/info/packs\00", align 1
@HTTP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"P pack-\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".pack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_get_info_packs(i8* %0, %struct.packed_git** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.packed_git**, align 8
  %5 = alloca %struct.http_get_options, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.object_id, align 4
  store i8* %0, i8** %3, align 8
  store %struct.packed_git** %1, %struct.packed_git*** %4, align 8
  %11 = bitcast %struct.http_get_options* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  %12 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @end_url_with_slash(%struct.strbuf* %9, i8* %13)
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = call i8* @strbuf_detach(%struct.strbuf* %9, i32* null)
  store i8* %16, i8** %7, align 8
  %17 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %5, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @http_get_strbuf(i8* %18, %struct.strbuf* %9, %struct.http_get_options* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @HTTP_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %71

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %69, %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @skip_prefix(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @parse_oid_hex(i8* %36, %struct.object_id* %10, i8** %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @skip_prefix(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %43
  %54 = load %struct.packed_git**, %struct.packed_git*** %4, align 8
  %55 = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @fetch_and_setup_pack_index(%struct.packed_git** %54, i32 %56, i8* %57)
  br label %62

59:                                               ; preds = %48, %39, %35, %31
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strchrnul(i8* %60, i8 signext 10)
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %66, %62
  br label %27

70:                                               ; preds = %27
  br label %71

71:                                               ; preds = %70, %23
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @end_url_with_slash(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @http_get_strbuf(i8*, %struct.strbuf*, %struct.http_get_options*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @parse_oid_hex(i8*, %struct.object_id*, i8**) #2

declare dso_local i32 @fetch_and_setup_pack_index(%struct.packed_git**, i32, i8*) #2

declare dso_local i8* @strchrnul(i8*, i8 signext) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
