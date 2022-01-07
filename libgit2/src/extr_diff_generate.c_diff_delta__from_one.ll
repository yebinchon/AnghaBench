; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_delta__from_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_delta__from_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i8*, i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32 }

@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_INDEX_ENTRY_VALID = common dso_local global i32 0, align 4
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DELTA_UNREADABLE = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_UNREADABLE = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DIFF_FLAG_EXISTS = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i8* null, align 8
@GIT_DIFF_FLAG_VALID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_13__*, %struct.TYPE_13__*)* @diff_delta__from_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_delta__from_one(i32* %0, i64 %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  %17 = zext i1 %16 to i32
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  %20 = zext i1 %19 to i32
  %21 = xor i32 %17, %20
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %30 = call i64 @DIFF_FLAG_IS_SET(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GIT_INDEX_ENTRY_VALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %184

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %52 = call i64 @DIFF_FLAG_ISNT_SET(i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %184

55:                                               ; preds = %49, %45
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %62 = call i64 @DIFF_FLAG_ISNT_SET(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %184

65:                                               ; preds = %59, %55
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @GIT_DELTA_UNREADABLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @GIT_DIFF_INCLUDE_UNREADABLE, align 4
  %72 = call i64 @DIFF_FLAG_ISNT_SET(i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %184

75:                                               ; preds = %69, %65
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = call i32 @diff_pathspec_match(i8** %13, i32* %76, %struct.TYPE_13__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %184

81:                                               ; preds = %75
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_14__* @diff_delta__alloc(i32* %82, i64 %83, i32 %86)
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %12, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %89 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %88)
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %81
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @GIT_DIFF_FLAG_EXISTS, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = call i32 @git_oid_cpy(i32* %120, i32* %122)
  %124 = load i8*, i8** @GIT_OID_HEXSZ, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  br label %157

128:                                              ; preds = %81
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* @GIT_DIFF_FLAG_EXISTS, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = call i32 @git_oid_cpy(i32* %149, i32* %151)
  %153 = load i8*, i8** @GIT_OID_HEXSZ, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  br label %157

157:                                              ; preds = %128, %99
  %158 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %157
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = call i32 @git_oid_is_zero(i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %166, %157
  %173 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %172, %166
  %180 = load i32*, i32** %6, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = call i32 @diff_insert_delta(i32* %180, %struct.TYPE_14__* %181, i8* %182)
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %179, %80, %74, %64, %54, %44
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @DIFF_FLAG_IS_SET(i32*, i32) #1

declare dso_local i64 @DIFF_FLAG_ISNT_SET(i32*, i32) #1

declare dso_local i32 @diff_pathspec_match(i8**, i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @diff_delta__alloc(i32*, i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_oid_is_zero(i32*) #1

declare dso_local i32 @diff_insert_delta(i32*, %struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
