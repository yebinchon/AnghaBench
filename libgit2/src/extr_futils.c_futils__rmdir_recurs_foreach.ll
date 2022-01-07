; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_futils__rmdir_recurs_foreach.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_futils__rmdir_recurs_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.stat = type { i32 }

@FUTILS_MAX_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"directory nesting too deep\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@GIT_RMDIR_REMOVE_BLOCKERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"parent is not directory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@GIT_RMDIR_SKIP_ROOT = common dso_local global i32 0, align 4
@GIT_RMDIR_SKIP_NONEMPTY = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"still present\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_8__*)* @futils__rmdir_recurs_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futils__rmdir_recurs_foreach(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FUTILS_MAX_DEPTH, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @futils__error_cannot_rmdir(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  br label %168

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @p_lstat_posixly(i32 %24, %struct.stat* %8)
  store i32 %25, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %62

32:                                               ; preds = %27
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOTDIR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GIT_RMDIR_REMOVE_BLOCKERS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @futils__rm_first_parent(%struct.TYPE_8__* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %54

49:                                               ; preds = %36
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @futils__error_cannot_rmdir(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %43
  br label %61

55:                                               ; preds = %32
  %56 = load i64, i64* @errno, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @git_path_set_error(i64 %56, i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %31
  br label %167

63:                                               ; preds = %21
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %132

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = call i32 @git_path_direach(%struct.TYPE_8__* %73, i32 0, i32 (i8*, %struct.TYPE_8__*)* @futils__rmdir_recurs_foreach, %struct.TYPE_9__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %170

84:                                               ; preds = %68
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @GIT_RMDIR_SKIP_ROOT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %170

98:                                               ; preds = %89, %84
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @p_rmdir(i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %98
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @GIT_RMDIR_SKIP_NONEMPTY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load i64, i64* @errno, align 8
  %113 = load i64, i64* @ENOTEMPTY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* @errno, align 8
  %117 = load i64, i64* @EEXIST, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* @errno, align 8
  %121 = load i64, i64* @EBUSY, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %115, %111
  store i32 0, i32* %6, align 4
  br label %130

124:                                              ; preds = %119, %104
  %125 = load i64, i64* @errno, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @git_path_set_error(i64 %125, i32 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %124, %123
  br label %131

131:                                              ; preds = %130, %98
  br label %166

132:                                              ; preds = %63
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %132
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @p_unlink(i32 %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i64, i64* @errno, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @git_path_set_error(i64 %146, i32 %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %145, %139
  br label %165

152:                                              ; preds = %132
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @GIT_RMDIR_SKIP_NONEMPTY, align 4
  %157 = and i32 %155, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @futils__error_cannot_rmdir(i32 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %159, %152
  br label %165

165:                                              ; preds = %164, %151
  br label %166

166:                                              ; preds = %165, %131
  br label %167

167:                                              ; preds = %166, %62
  br label %168

168:                                              ; preds = %167, %16
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %96, %82
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @futils__error_cannot_rmdir(i32, i8*) #1

declare dso_local i32 @p_lstat_posixly(i32, %struct.stat*) #1

declare dso_local i32 @futils__rm_first_parent(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @git_path_set_error(i64, i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @git_path_direach(%struct.TYPE_8__*, i32, i32 (i8*, %struct.TYPE_8__*)*, %struct.TYPE_9__*) #1

declare dso_local i32 @p_rmdir(i32) #1

declare dso_local i64 @p_unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
