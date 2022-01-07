; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_conflict_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_conflict_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid filemode for stage %d entry\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_conflict_add(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca [3 x %struct.TYPE_10__*], align 16
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %13 = bitcast [3 x %struct.TYPE_10__*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 0
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = call i32 @index_entry_dup(%struct.TYPE_10__** %19, i32* %20, %struct.TYPE_10__* %21)
  store i32 %22, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %18, %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 1
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = call i32 @index_entry_dup(%struct.TYPE_10__** %28, i32* %29, %struct.TYPE_10__* %30)
  store i32 %31, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 2
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = call i32 @index_entry_dup(%struct.TYPE_10__** %37, i32* %38, %struct.TYPE_10__* %39)
  store i32 %40, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %27, %18
  br label %144

43:                                               ; preds = %36, %33
  store i16 0, i16* %11, align 2
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i16, i16* %11, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i16, i16* %11, align 2
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i16, i16* %11, align 2
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @valid_filemode(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %65 = load i16, i16* %11, align 2
  %66 = zext i16 %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = trunc i32 %67 to i16
  %69 = call i32 @git_error_set(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %68)
  store i32 -1, i32* %12, align 4
  br label %144

70:                                               ; preds = %54, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i16, i16* %11, align 2
  %73 = add i16 %72, 1
  store i16 %73, i16* %11, align 2
  br label %44

74:                                               ; preds = %44
  store i16 0, i16* %11, align 2
  br label %75

75:                                               ; preds = %104, %74
  %76 = load i16, i16* %11, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load i16, i16* %11, align 2
  %81 = zext i16 %80 to i64
  %82 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = icmp eq %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %104

86:                                               ; preds = %79
  %87 = load i32*, i32** %6, align 8
  %88 = load i16, i16* %11, align 2
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @git_index_remove(i32* %87, i32 %93, i32 0)
  store i32 %94, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @GIT_ENOTFOUND, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %144

101:                                              ; preds = %96
  %102 = call i32 (...) @git_error_clear()
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %101, %86
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i16, i16* %11, align 2
  %106 = add i16 %105, 1
  store i16 %106, i16* %11, align 2
  br label %75

107:                                              ; preds = %75
  store i16 0, i16* %11, align 2
  br label %108

108:                                              ; preds = %140, %107
  %109 = load i16, i16* %11, align 2
  %110 = zext i16 %109 to i32
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %143

112:                                              ; preds = %108
  %113 = load i16, i16* %11, align 2
  %114 = zext i16 %113 to i64
  %115 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = icmp eq %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %140

119:                                              ; preds = %112
  %120 = load i16, i16* %11, align 2
  %121 = zext i16 %120 to i64
  %122 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load i16, i16* %11, align 2
  %125 = zext i16 %124 to i32
  %126 = add nsw i32 %125, 1
  %127 = trunc i32 %126 to i16
  %128 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__* %123, i16 zeroext %127)
  %129 = load i32*, i32** %6, align 8
  %130 = load i16, i16* %11, align 2
  %131 = zext i16 %130 to i64
  %132 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %131
  %133 = call i32 @index_insert(i32* %129, %struct.TYPE_10__** %132, i32 1, i32 1, i32 1, i32 0)
  store i32 %133, i32* %12, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  br label %144

136:                                              ; preds = %119
  %137 = load i16, i16* %11, align 2
  %138 = zext i16 %137 to i64
  %139 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %138
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %139, align 8
  br label %140

140:                                              ; preds = %136, %118
  %141 = load i16, i16* %11, align 2
  %142 = add i16 %141, 1
  store i16 %142, i16* %11, align 2
  br label %108

143:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %167

144:                                              ; preds = %135, %100, %63, %42
  store i16 0, i16* %11, align 2
  br label %145

145:                                              ; preds = %162, %144
  %146 = load i16, i16* %11, align 2
  %147 = zext i16 %146 to i32
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load i16, i16* %11, align 2
  %151 = zext i16 %150 to i64
  %152 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %151
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = icmp ne %struct.TYPE_10__* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i16, i16* %11, align 2
  %157 = zext i16 %156 to i64
  %158 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = call i32 @index_entry_free(%struct.TYPE_10__* %159)
  br label %161

161:                                              ; preds = %155, %149
  br label %162

162:                                              ; preds = %161
  %163 = load i16, i16* %11, align 2
  %164 = add i16 %163, 1
  store i16 %164, i16* %11, align 2
  br label %145

165:                                              ; preds = %145
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %143
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32*) #2

declare dso_local i32 @index_entry_dup(%struct.TYPE_10__**, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @valid_filemode(i32) #2

declare dso_local i32 @git_error_set(i32, i8*, i16 zeroext) #2

declare dso_local i32 @git_index_remove(i32*, i32, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__*, i16 zeroext) #2

declare dso_local i32 @index_insert(i32*, %struct.TYPE_10__**, i32, i32, i32, i32) #2

declare dso_local i32 @index_entry_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
