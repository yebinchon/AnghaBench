; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__read_header_or_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__read_header_or_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot read object\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot read header for\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb__read_header_or_object(%struct.TYPE_7__** %0, i64* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %22 = icmp ne %struct.TYPE_7__** %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br label %29

29:                                               ; preds = %26, %23, %20, %17, %5
  %30 = phi i1 [ false, %23 ], [ false, %20 ], [ false, %17 ], [ false, %5 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @git_oid_is_zero(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @GIT_ENOTFOUND, align 4
  %39 = call i32 @error_null_oid(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %6, align 4
  br label %116

40:                                               ; preds = %29
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @odb_cache(i32* %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call %struct.TYPE_7__* @git_cache_get_raw(i32 %42, i32* %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %13, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %58, align 8
  store i32 0, i32* %6, align 4
  br label %116

59:                                               ; preds = %40
  %60 = load i64*, i64** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @odb_read_header_1(i64* %60, i32* %61, i32* %62, i32* %63, i32 0)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @GIT_ENOTFOUND, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @git_odb_refresh(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i64*, i64** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @odb_read_header_1(i64* %73, i32* %74, i32* %75, i32* %76, i32 1)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %72, %68, %59
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @GIT_ENOTFOUND, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %85 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  br label %116

86:                                               ; preds = %78
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %116

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @git_odb_read(%struct.TYPE_7__** %13, i32* %95, i32* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %8, align 8
  store i64 %104, i64* %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %112, align 8
  br label %113

113:                                              ; preds = %100, %94
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %89, %82, %46, %37
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32 @error_null_oid(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @git_cache_get_raw(i32, i32*) #1

declare dso_local i32 @odb_cache(i32*) #1

declare dso_local i32 @odb_read_header_1(i64*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @git_odb_refresh(i32*) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #1

declare dso_local i32 @git_odb_read(%struct.TYPE_7__**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
