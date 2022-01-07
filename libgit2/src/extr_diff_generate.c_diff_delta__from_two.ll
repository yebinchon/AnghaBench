; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_delta__from_two.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_delta__from_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i8*, i32, i8*, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i8*, i32 }

@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i8* null, align 8
@GIT_DIFF_FLAG_VALID_ID = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_13__*, i8*, %struct.TYPE_13__*, i8*, i32*, i8*)* @diff_delta__from_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_delta__from_two(i32* %0, i64 %1, %struct.TYPE_13__* %2, i8* %3, %struct.TYPE_13__* %4, i8* %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i32* %25, i32** %18, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %20, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %35 = call i64 @DIFF_FLAG_ISNT_SET(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %152

38:                                               ; preds = %32, %8
  %39 = load i32*, i32** %16, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i32* %43, i32** %16, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %47 = call i64 @DIFF_FLAG_IS_SET(i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %13, align 8
  store i8* %50, i8** %21, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %22, align 8
  %52 = load i32*, i32** %18, align 8
  store i32* %52, i32** %23, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %12, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %14, align 8
  %55 = load i8*, i8** %15, align 8
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %21, align 8
  store i8* %56, i8** %15, align 8
  %57 = load i32*, i32** %16, align 8
  store i32* %57, i32** %18, align 8
  %58 = load i32*, i32** %23, align 8
  store i32* %58, i32** %16, align 8
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = call %struct.TYPE_14__* @diff_delta__alloc(i32* %60, i64 %61, i8* %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %19, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %65 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %69 = call i32 @git_index_entry_is_conflict(%struct.TYPE_13__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %99, label %71

71:                                               ; preds = %59
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  store i8* %78, i8** %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @git_oid_cpy(i32* %84, i32* %85)
  %87 = load i8*, i8** @GIT_OID_HEXSZ, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %92 = load i32, i32* @GIT_DIFF_FLAG_EXISTS, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %71, %59
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %101 = call i32 @git_index_entry_is_conflict(%struct.TYPE_13__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %147, label %103

103:                                              ; preds = %99
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @git_oid_cpy(i32* %106, i32* %107)
  %109 = load i8*, i8** @GIT_OID_HEXSZ, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  %123 = load i32, i32* @GIT_DIFF_FLAG_EXISTS, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @GIT_DIFF_FLAG_EXISTS, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = call i32 @git_oid_is_zero(i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %103
  %140 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %139, %103
  br label %147

147:                                              ; preds = %146, %99
  %148 = load i32*, i32** %10, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %150 = load i8*, i8** %17, align 8
  %151 = call i32 @diff_insert_delta(i32* %148, %struct.TYPE_14__* %149, i8* %150)
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %147, %37
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local i64 @DIFF_FLAG_ISNT_SET(i32*, i32) #1

declare dso_local i64 @DIFF_FLAG_IS_SET(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @diff_delta__alloc(i32*, i64, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__*) #1

declare dso_local i32 @git_index_entry_is_conflict(%struct.TYPE_13__*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_oid_is_zero(i32*) #1

declare dso_local i32 @diff_insert_delta(i32*, %struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
