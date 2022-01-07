; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32*, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to read index: The index is in-memory only\00", align 1
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to read index: '%s' no longer exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_read(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @create_index_error(i32 -1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @git_path_exists(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call i32 @git_index_clear(%struct.TYPE_10__* %35)
  store i32 %36, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %106

40:                                               ; preds = %34, %31
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %106

43:                                               ; preds = %20
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @git_futils_filestamp_check(i32* %9, i32 %46)
  %48 = icmp slt i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  br i1 %48, label %54, label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = call i32 @compare_checksum(%struct.TYPE_10__* %51)
  store i32 %52, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50, %43
  %55 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @git_error_set(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %106

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %106

68:                                               ; preds = %64, %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @git_futils_readbuffer(%struct.TYPE_11__* %8, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %106

77:                                               ; preds = %68
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = call i32 @git_pool_clear(i32* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = call i32 @git_index_clear(%struct.TYPE_10__* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %77
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @parse_index(%struct.TYPE_10__* %88, i32 %90, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %77
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = call i32 @git_futils_filestamp_set(i32* %99, i32* %9)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %94
  %104 = call i32 @git_buf_dispose(%struct.TYPE_11__* %8)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %75, %67, %54, %40, %38, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @create_index_error(i32, i8*) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_index_clear(%struct.TYPE_10__*) #2

declare dso_local i64 @git_futils_filestamp_check(i32*, i32) #2

declare dso_local i32 @compare_checksum(%struct.TYPE_10__*) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @git_pool_clear(i32*) #2

declare dso_local i32 @parse_index(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @git_futils_filestamp_set(i32*, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
