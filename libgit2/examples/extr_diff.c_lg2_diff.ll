; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_diff.c_lg2_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_diff.c_lg2_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i32, i8*, i64, i8*, i8*, i64, i32, i64, i32, %struct.TYPE_2__, i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"diff trees\00", align 1
@CACHE_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@CACHE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"diff tree to working directory\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"diff tree to index\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"diff index to working directory\00", align 1
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"finding renames and copies\00", align 1
@OUTPUT_DIFF = common dso_local global i32 0, align 4
@colors = common dso_local global i32* null, align 8
@stdout = common dso_local global i32 0, align 4
@color_printer = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"displaying diff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_diff(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.opts, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 0
  %12 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 1
  %14 = load i32, i32* @GIT_DIFF_FIND_OPTIONS_INIT, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %15, align 8
  %16 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 3
  store i64 -1, i64* %16, align 8
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 4
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 5
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 6
  %20 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 7
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 9
  store i32 ptrtoint ([2 x i8]* @.str to i32), i32* %24, align 8
  %25 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 10
  %26 = bitcast %struct.TYPE_2__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 11
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 12
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 13
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 14
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 15
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 16
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 17
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 18
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i8**, i8*** %6, align 8
  %37 = call i32 @parse_opts(%struct.opts* %10, i32 %35, i8** %36)
  %38 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = call i32 @compute_diff_no_index(i32** %9, %struct.opts* %10)
  br label %132

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @treeish_to_tree(i32** %7, i32* %48, i8* %50)
  br label %52

52:                                               ; preds = %47, %43
  %53 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @treeish_to_tree(i32** %8, i32* %57, i8* %59)
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 11
  %72 = call i32 @git_diff_tree_to_tree(i32** %9, i32* %68, i32* %69, i32* %70, i32* %71)
  %73 = call i32 @check_lg2(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %119

74:                                               ; preds = %64, %61
  %75 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CACHE_NORMAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @treeish_to_tree(i32** %7, i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %79
  %86 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CACHE_NONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32*, i32** %4, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 11
  %94 = call i32 @git_diff_tree_to_workdir(i32** %9, i32* %91, i32* %92, i32* %93)
  %95 = call i32 @check_lg2(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %102

96:                                               ; preds = %85
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 11
  %100 = call i32 @git_diff_tree_to_index(i32** %9, i32* %97, i32* %98, i32* null, i32* %99)
  %101 = call i32 @check_lg2(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* null)
  br label %102

102:                                              ; preds = %96, %90
  br label %118

103:                                              ; preds = %74
  %104 = load i32*, i32** %7, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 11
  %110 = call i32 @git_diff_tree_to_workdir_with_index(i32** %9, i32* %107, i32* %108, i32* %109)
  %111 = call i32 @check_lg2(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %117

112:                                              ; preds = %103
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 11
  %115 = call i32 @git_diff_index_to_workdir(i32** %9, i32* %113, i32* null, i32* %114)
  %116 = call i32 @check_lg2(i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32* null)
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %102
  br label %119

119:                                              ; preds = %118, %67
  %120 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 10
  %129 = call i32 @git_diff_find_similar(i32* %127, %struct.TYPE_2__* %128)
  %130 = call i32 @check_lg2(i32 %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32* null)
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %41
  %133 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @OUTPUT_DIFF, align 4
  %138 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 7
  store i32 %137, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %132
  %140 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @OUTPUT_DIFF, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @diff_print_stats(i32* %145, %struct.opts* %10)
  br label %147

147:                                              ; preds = %144, %139
  %148 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @OUTPUT_DIFF, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %181

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i32*, i32** @colors, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @stdout, align 4
  %162 = call i32 @fputs(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %153
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 9
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @color_printer, align 4
  %168 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 8
  %169 = call i32 @git_diff_print(i32* %164, i32 %166, i32 %167, i64* %168)
  %170 = call i32 @check_lg2(i32 %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %171 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = icmp sge i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %163
  %175 = load i32*, i32** @colors, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @stdout, align 4
  %179 = call i32 @fputs(i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %163
  br label %181

181:                                              ; preds = %180, %147
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @git_diff_free(i32* %182)
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @git_tree_free(i32* %184)
  %186 = load i32*, i32** %8, align 8
  %187 = call i32 @git_tree_free(i32* %186)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_opts(%struct.opts*, i32, i8**) #2

declare dso_local i32 @compute_diff_no_index(i32**, %struct.opts*) #2

declare dso_local i32 @treeish_to_tree(i32**, i32*, i8*) #2

declare dso_local i32 @check_lg2(i32, i8*, i32*) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_tree_to_workdir_with_index(i32**, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_2__*) #2

declare dso_local i32 @diff_print_stats(i32*, %struct.opts*) #2

declare dso_local i32 @fputs(i32, i32) #2

declare dso_local i32 @git_diff_print(i32*, i32, i32, i64*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
