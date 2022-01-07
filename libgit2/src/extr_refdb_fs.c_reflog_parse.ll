; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_reflog_parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_reflog_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32 }

@GIT_PARSE_CTX_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i64)* @reflog_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reflog_parse(%struct.TYPE_18__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_19__* @GIT_PARSE_CTX_INIT to i8*), i64 24, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @git_parse_ctx_init(%struct.TYPE_19__* %8, i8* %14, i64 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %123

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %120, %19
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %122

24:                                               ; preds = %20
  %25 = call i8* @git__calloc(i32 1, i32 24)
  %26 = bitcast i8* %25 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %9, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_17__* %27)
  %29 = call i8* @git__calloc(i32 1, i32 24)
  %30 = bitcast i8* %29 to %struct.TYPE_17__*
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_17__* %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = call i64 @git_parse_advance_oid(i32* %38, %struct.TYPE_19__* %8)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %24
  %42 = call i64 @git_parse_advance_expected(%struct.TYPE_19__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = call i64 @git_parse_advance_oid(i32* %46, %struct.TYPE_19__* %8)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %41, %24
  br label %117

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %66, %50
  %54 = call i64 @git_parse_peek(i8* %11, %struct.TYPE_19__* %8, i32 0)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8, i8* %11, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 9
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8, i8* %11, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 10
  br label %64

64:                                               ; preds = %60, %56, %53
  %65 = phi i1 [ false, %56 ], [ false, %53 ], [ %63, %60 ]
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = call i32 @git_parse_advance_chars(%struct.TYPE_19__* %8, i32 1)
  br label %53

68:                                               ; preds = %64
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @git_signature__parse(%struct.TYPE_17__* %71, i8** %10, i8* %73, i32* null, i32 0)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %117

77:                                               ; preds = %68
  %78 = load i8, i8* %11, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 9
  br i1 %80, label %81, label %107

81:                                               ; preds = %77
  %82 = call i32 @git_parse_advance_chars(%struct.TYPE_19__* %8, i32 1)
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %93, %81
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call %struct.TYPE_17__* @git__strndup(i8* %98, i64 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_17__* %105)
  br label %107

107:                                              ; preds = %96, %77
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = call i64 @git_vector_insert(i32* %109, %struct.TYPE_17__* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = call i32 @git_reflog_entry__free(%struct.TYPE_17__* %114)
  store i32 -1, i32* %4, align 4
  br label %123

116:                                              ; preds = %107
  br label %120

117:                                              ; preds = %76, %49
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %119 = call i32 @git_reflog_entry__free(%struct.TYPE_17__* %118)
  br label %120

120:                                              ; preds = %117, %116
  %121 = call i32 @git_parse_advance_line(%struct.TYPE_19__* %8)
  br label %20

122:                                              ; preds = %20
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %113, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_parse_ctx_init(%struct.TYPE_19__*, i8*, i64) #2

declare dso_local i8* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_17__*) #2

declare dso_local i64 @git_parse_advance_oid(i32*, %struct.TYPE_19__*) #2

declare dso_local i64 @git_parse_advance_expected(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i64 @git_parse_peek(i8*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @git_parse_advance_chars(%struct.TYPE_19__*, i32) #2

declare dso_local i64 @git_signature__parse(%struct.TYPE_17__*, i8**, i8*, i32*, i32) #2

declare dso_local %struct.TYPE_17__* @git__strndup(i8*, i64) #2

declare dso_local i64 @git_vector_insert(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @git_reflog_entry__free(%struct.TYPE_17__*) #2

declare dso_local i32 @git_parse_advance_line(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
