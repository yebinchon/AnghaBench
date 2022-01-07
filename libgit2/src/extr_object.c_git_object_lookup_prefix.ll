; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_lookup_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_lookup_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i64 }

@GIT_OID_MINPREFIXLEN = common dso_local global i64 0, align 8
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ambiguous lookup - OID prefix is too short\00", align 1
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@GIT_CACHE_STORE_PARSED = common dso_local global i64 0, align 8
@GIT_OBJECT_ANY = common dso_local global i64 0, align 8
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"the requested type does not match the type in ODB\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_CACHE_STORE_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Wrong caching type in the global object cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_object_lookup_prefix(%struct.TYPE_24__** %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_24__** %0, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %19 = icmp ne %struct.TYPE_22__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %22 = icmp ne %struct.TYPE_24__** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %25 = icmp ne %struct.TYPE_23__* %24, null
  br label %26

26:                                               ; preds = %23, %20, %5
  %27 = phi i1 [ false, %20 ], [ false, %5 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @GIT_OID_MINPREFIXLEN, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %35 = call i32 @git_error_set(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  store i32 %36, i32* %6, align 4
  br label %129

37:                                               ; preds = %26
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = call i32 @git_repository_odb__weakptr(i32** %13, %struct.TYPE_22__* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %6, align 4
  br label %129

44:                                               ; preds = %37
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @GIT_OID_HEXSZ, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %50
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %16, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %58 = call %struct.TYPE_25__* @git_cache_get_any(i32* %56, %struct.TYPE_23__* %57)
  store %struct.TYPE_25__* %58, %struct.TYPE_25__** %16, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %60 = icmp ne %struct.TYPE_25__* %59, null
  br i1 %60, label %61, label %102

61:                                               ; preds = %54
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @GIT_CACHE_STORE_PARSED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %69 = bitcast %struct.TYPE_25__* %68 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %69, %struct.TYPE_24__** %12, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %82 = call i32 @git_object_free(%struct.TYPE_24__* %81)
  %83 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %84 = call i32 @git_error_set(i32 %83, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %85, i32* %6, align 4
  br label %129

86:                                               ; preds = %73, %67
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %88 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %88, align 8
  store i32 0, i32* %6, align 4
  br label %129

89:                                               ; preds = %61
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GIT_CACHE_STORE_RAW, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %97 = bitcast %struct.TYPE_25__* %96 to i32*
  store i32* %97, i32** %14, align 8
  br label %100

98:                                               ; preds = %89
  %99 = call i32 @assert(i32 0)
  br label %100

100:                                              ; preds = %98, %95
  br label %101

101:                                              ; preds = %100
  br label %106

102:                                              ; preds = %54
  %103 = load i32*, i32** %13, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %105 = call i32 @git_odb_read(i32** %14, i32* %103, %struct.TYPE_23__* %104)
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %102, %101
  br label %115

107:                                              ; preds = %50
  %108 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %108, i8 0, i64 4, i1 false)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @git_oid__cpy_prefix(%struct.TYPE_23__* %17, %struct.TYPE_23__* %109, i64 %110)
  %112 = load i32*, i32** %13, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @git_odb_read_prefix(i32** %14, i32* %112, %struct.TYPE_23__* %17, i64 %113)
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %107, %106
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %6, align 4
  br label %129

120:                                              ; preds = %115
  %121 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @git_object__from_odb_object(%struct.TYPE_24__** %121, %struct.TYPE_22__* %122, i32* %123, i64 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @git_odb_object_free(i32* %126)
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %120, %118, %86, %80, %42, %33
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_repository_odb__weakptr(i32**, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @git_cache_get_any(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @git_object_free(%struct.TYPE_24__*) #1

declare dso_local i32 @git_odb_read(i32**, i32*, %struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @git_oid__cpy_prefix(%struct.TYPE_23__*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @git_odb_read_prefix(i32**, i32*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @git_object__from_odb_object(%struct.TYPE_24__**, %struct.TYPE_22__*, i32*, i64) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
