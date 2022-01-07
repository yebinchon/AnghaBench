; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_opportunistic_updates.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_opportunistic_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 (i32, %struct.TYPE_23__*, i32*, i32)*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i8*)* @opportunistic_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opportunistic_updates(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_24__, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = bitcast %struct.TYPE_24__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_24__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %16, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %106, %53, %4
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @next_head(%struct.TYPE_22__* %20, i32* %21, i32** %12, %struct.TYPE_20__** %13, i64* %9, i64* %10, i64* %11)
  store i32 %22, i32* %16, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %107

24:                                               ; preds = %19
  %25 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = call i32 @git_buf_clear(%struct.TYPE_24__* %15)
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @git_refspec_transform(%struct.TYPE_24__* %15, i32* %27, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %113

34:                                               ; preds = %24
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @git_reference_name_to_id(%struct.TYPE_23__* %17, i32 %37, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @GIT_ENOTFOUND, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %113

48:                                               ; preds = %43, %34
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = call i32 @git_oid_cmp(%struct.TYPE_23__* %17, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %19

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @git_reference_create(i32** %14, i32 %60, i32 %62, i32* %64, i32 1, i8* %65)
  store i32 %66, i32* %16, align 4
  br label %77

67:                                               ; preds = %54
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @git_reference_create_matching(i32** %14, i32 %70, i32 %72, i32* %74, i32 1, %struct.TYPE_23__* %17, i8* %75)
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %67, %57
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @git_reference_free(i32* %78)
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %113

83:                                               ; preds = %77
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = icmp ne %struct.TYPE_21__* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i64 (i32, %struct.TYPE_23__*, i32*, i32)*, i64 (i32, %struct.TYPE_23__*, i32*, i32)** %88, align 8
  %90 = icmp ne i64 (i32, %struct.TYPE_23__*, i32*, i32)* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i64 (i32, %struct.TYPE_23__*, i32*, i32)*, i64 (i32, %struct.TYPE_23__*, i32*, i32)** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 %94(i32 %96, %struct.TYPE_23__* %17, i32* %98, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %113

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %86, %83
  br label %19

107:                                              ; preds = %19
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* @GIT_ITEROVER, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %111, %107
  br label %113

113:                                              ; preds = %112, %104, %82, %47, %33
  %114 = call i32 @git_buf_dispose(%struct.TYPE_24__* %15)
  %115 = load i32, i32* %16, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @next_head(%struct.TYPE_22__*, i32*, i32**, %struct.TYPE_20__**, i64*, i64*, i64*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_buf_clear(%struct.TYPE_24__*) #2

declare dso_local i32 @git_refspec_transform(%struct.TYPE_24__*, i32*, i32) #2

declare dso_local i32 @git_reference_name_to_id(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i32 @git_oid_cmp(%struct.TYPE_23__*, i32*) #2

declare dso_local i32 @git_reference_create(i32**, i32, i32, i32*, i32, i8*) #2

declare dso_local i32 @git_reference_create_matching(i32**, i32, i32, i32*, i32, %struct.TYPE_23__*, i8*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_24__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
