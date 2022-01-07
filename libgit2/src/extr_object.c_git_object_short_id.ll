; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_short_id.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_short_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@GIT_ABBREV_DEFAULT = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_ABBREV = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_object_short_id(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %11 = load i32, i32* @GIT_ABBREV_DEFAULT, align 4
  store i32 %11, i32* %7, align 4
  %12 = bitcast %struct.TYPE_17__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = icmp ne %struct.TYPE_19__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = icmp ne %struct.TYPE_18__* %16, null
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i1 [ false, %2 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = call i32 @git_buf_sanitize(%struct.TYPE_19__* %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = call i32* @git_object_owner(%struct.TYPE_18__* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @GIT_CONFIGMAP_ABBREV, align 4
  %28 = call i32 @git_repository__configmap_lookup(i32* %7, i32* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %100

32:                                               ; preds = %18
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @git_repository_odb(i32** %10, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %100

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %73, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = sdiv i32 %50, 2
  %52 = call i32 @memcpy(i32** %44, i32* %48, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sdiv i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 240
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %56, %43
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @git_odb_exists_prefix(i32* null, i32* %66, %struct.TYPE_17__* %9, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %65
  %74 = call i32 (...) @git_error_clear()
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %39

77:                                               ; preds = %72, %39
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @git_buf_grow(%struct.TYPE_19__* %81, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @git_oid_tostr(i32 %89, i32 %91, %struct.TYPE_17__* %9)
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %80, %77
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @git_odb_free(i32* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %36, %30
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_buf_sanitize(%struct.TYPE_19__*) #2

declare dso_local i32* @git_object_owner(%struct.TYPE_18__*) #2

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #2

declare dso_local i32 @git_repository_odb(i32**, i32*) #2

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @git_odb_exists_prefix(i32*, i32*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_buf_grow(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @git_oid_tostr(i32, i32, %struct.TYPE_17__*) #2

declare dso_local i32 @git_odb_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
