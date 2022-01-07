; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_exists_prefix_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_exists_prefix_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64)*, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"multiple matches for prefix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_20__*, i64, i32)* @odb_exists_prefix_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odb_exists_prefix_1(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__, align 4
  %16 = alloca %struct.TYPE_20__, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %85, %5
  %22 = load i64, i64* %12, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %21
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %12, align 8
  %32 = call %struct.TYPE_23__* @git_vector_get(%struct.TYPE_18__* %30, i64 %31)
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %17, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %18, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %85

44:                                               ; preds = %38, %28
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64)*, i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64)* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %85

50:                                               ; preds = %44
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64)*, i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64)** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 %53(%struct.TYPE_20__* %16, %struct.TYPE_21__* %54, %struct.TYPE_20__* %55, i64 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @GIT_ENOTFOUND, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %50
  br label %85

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %100

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = call i64 @git_oid__cmp(%struct.TYPE_20__* %15, %struct.TYPE_20__* %16)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @git_odb__error_ambiguous(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %6, align 4
  br label %100

79:                                               ; preds = %74
  br label %84

80:                                               ; preds = %71
  %81 = call i32 @git_oid_cpy(%struct.TYPE_20__* %15, %struct.TYPE_20__* %16)
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %80, %79
  br label %85

85:                                               ; preds = %84, %65, %49, %43
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %21

88:                                               ; preds = %21
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %92, i32* %6, align 4
  br label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %95 = icmp ne %struct.TYPE_20__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = call i32 @git_oid_cpy(%struct.TYPE_20__* %97, %struct.TYPE_20__* %15)
  br label %99

99:                                               ; preds = %96, %93
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %91, %77, %69
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_23__* @git_vector_get(%struct.TYPE_18__*, i64) #2

declare dso_local i64 @git_oid__cmp(%struct.TYPE_20__*, %struct.TYPE_20__*) #2

declare dso_local i32 @git_odb__error_ambiguous(i8*) #2

declare dso_local i32 @git_oid_cpy(%struct.TYPE_20__*, %struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
