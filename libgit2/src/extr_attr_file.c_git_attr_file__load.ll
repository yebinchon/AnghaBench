; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_git_attr_file__load.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_git_attr_file__load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.stat = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown file source %d\00", align 1
@GIT_BOM_UTF8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_attr_file__load(%struct.TYPE_15__** %0, i32* %1, %struct.TYPE_14__* %2, %struct.TYPE_16__* %3, i32 %4, i32 (i32*, %struct.TYPE_15__*, i8*, i32)* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i32*, %struct.TYPE_15__*, i8*, i32)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca %struct.stat, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 (i32*, %struct.TYPE_15__*, i8*, i32)* %5, i32 (i32*, %struct.TYPE_15__*, i8*, i32)** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %30 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %30, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %31 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %31, align 8
  %32 = load i32, i32* %13, align 4
  switch i32 %32, label %120 [
    i32 128, label %33
    i32 129, label %34
    i32 131, label %57
    i32 130, label %89
  ]

33:                                               ; preds = %7
  br label %124

34:                                               ; preds = %7
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @attr_file_oid_from_index(i32* %27, i32* %35, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @git_blob_lookup(i32** %19, i32* %42, i32* %27)
  store i32 %43, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %213

47:                                               ; preds = %41
  %48 = load i32*, i32** %19, align 8
  %49 = call i32 @git_blob_rawsize(i32* %48)
  store i32 %49, i32* %28, align 4
  %50 = load i32, i32* %28, align 4
  %51 = call i32 @GIT_ERROR_CHECK_BLOBSIZE(i32 %50)
  %52 = load i32*, i32** %19, align 8
  %53 = call i32 @git_blob_rawcontent(i32* %52)
  %54 = load i32, i32* %28, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @git_buf_put(i32* %20, i32 %53, i64 %55)
  br label %124

57:                                               ; preds = %7
  store i32 -1, i32* %29, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @p_stat(i32 %60, %struct.stat* %23)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @S_ISDIR(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @git_futils_open_ro(i32 %71)
  store i32 %72, i32* %29, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %29, align 4
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @git_futils_readbuffer_fd(i32* %20, i32 %75, i64 %78)
  store i32 %79, i32* %16, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %68, %63, %57
  store i32 1, i32* %24, align 4
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i32, i32* %29, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %29, align 4
  %87 = call i32 @p_close(i32 %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %124

89:                                               ; preds = %7
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @git_repository_head_tree(i32** %17, i32* %90)
  store i32 %91, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** %17, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @git_tree_entry_bypath(i32** %18, i32* %94, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = call i32* @git_tree_entry_id(i32* %102)
  %104 = call i32 @git_blob_lookup(i32** %19, i32* %101, i32* %103)
  store i32 %104, i32* %16, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %93, %89
  br label %204

107:                                              ; preds = %100
  %108 = load i32*, i32** %19, align 8
  %109 = call i32 @git_blob_rawsize(i32* %108)
  store i32 %109, i32* %28, align 4
  %110 = load i32, i32* %28, align 4
  %111 = call i32 @GIT_ERROR_CHECK_BLOBSIZE(i32 %110)
  %112 = load i32*, i32** %19, align 8
  %113 = call i32 @git_blob_rawcontent(i32* %112)
  %114 = load i32, i32* %28, align 4
  %115 = sext i32 %114 to i64
  %116 = call i32 @git_buf_put(i32* %20, i32 %113, i64 %115)
  store i32 %116, i32* %16, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %204

119:                                              ; preds = %107
  br label %124

120:                                              ; preds = %7
  %121 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @git_error_set(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %8, align 4
  br label %213

124:                                              ; preds = %119, %88, %47, %33
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @git_attr_file__new(%struct.TYPE_15__** %22, %struct.TYPE_16__* %125, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %204

130:                                              ; preds = %124
  %131 = call i8* @git_buf_cstr(i32* %20)
  store i8* %131, i8** %21, align 8
  %132 = call i32 @git_buf_text_detect_bom(i64* %26, i32* %20)
  store i32 %132, i32* %25, align 4
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* @GIT_BOM_UTF8, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* %25, align 4
  %138 = load i8*, i8** %21, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %21, align 8
  br label %141

141:                                              ; preds = %136, %130
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %143 = icmp ne %struct.TYPE_14__* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %141
  %151 = load i32 (i32*, %struct.TYPE_15__*, i8*, i32)*, i32 (i32*, %struct.TYPE_15__*, i8*, i32)** %14, align 8
  %152 = icmp ne i32 (i32*, %struct.TYPE_15__*, i8*, i32)* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i32 (i32*, %struct.TYPE_15__*, i8*, i32)*, i32 (i32*, %struct.TYPE_15__*, i8*, i32)** %14, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %157 = load i8*, i8** %21, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32 %154(i32* %155, %struct.TYPE_15__* %156, i8* %157, i32 %158)
  store i32 %159, i32* %16, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %163 = call i32 @git_attr_file__free(%struct.TYPE_15__* %162)
  br label %204

164:                                              ; preds = %153, %150
  %165 = load i32, i32* %24, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 4
  br label %201

170:                                              ; preds = %164
  %171 = load i32, i32* %13, align 4
  %172 = icmp eq i32 %171, 129
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32*, i32** %19, align 8
  %178 = call i32 @git_blob_id(i32* %177)
  %179 = call i32 @git_oid_cpy(i32* %176, i32 %178)
  br label %200

180:                                              ; preds = %170
  %181 = load i32, i32* %13, align 4
  %182 = icmp eq i32 %181, 130
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32*, i32** %17, align 8
  %188 = call i32 @git_tree_id(i32* %187)
  %189 = call i32 @git_oid_cpy(i32* %186, i32 %188)
  br label %199

190:                                              ; preds = %180
  %191 = load i32, i32* %13, align 4
  %192 = icmp eq i32 %191, 131
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = call i32 @git_futils_filestamp_set_from_stat(i32* %196, %struct.stat* %23)
  br label %198

198:                                              ; preds = %193, %190
  br label %199

199:                                              ; preds = %198, %183
  br label %200

200:                                              ; preds = %199, %173
  br label %201

201:                                              ; preds = %200, %167
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %203 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %202, %struct.TYPE_15__** %203, align 8
  br label %204

204:                                              ; preds = %201, %161, %129, %118, %106
  %205 = load i32*, i32** %19, align 8
  %206 = call i32 @git_blob_free(i32* %205)
  %207 = load i32*, i32** %18, align 8
  %208 = call i32 @git_tree_entry_free(i32* %207)
  %209 = load i32*, i32** %17, align 8
  %210 = call i32 @git_tree_free(i32* %209)
  %211 = call i32 @git_buf_dispose(i32* %20)
  %212 = load i32, i32* %16, align 4
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %204, %120, %45
  %214 = load i32, i32* %8, align 4
  ret i32 %214
}

declare dso_local i32 @attr_file_oid_from_index(i32*, i32*, i32) #1

declare dso_local i32 @git_blob_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_blob_rawsize(i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_BLOBSIZE(i32) #1

declare dso_local i32 @git_buf_put(i32*, i32, i64) #1

declare dso_local i32 @git_blob_rawcontent(i32*) #1

declare dso_local i32 @p_stat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @git_futils_open_ro(i32) #1

declare dso_local i32 @git_futils_readbuffer_fd(i32*, i32, i64) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @git_repository_head_tree(i32**, i32*) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32*, i32) #1

declare dso_local i32* @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @git_attr_file__new(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_text_detect_bom(i64*, i32*) #1

declare dso_local i32 @git_attr_file__free(%struct.TYPE_15__*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_blob_id(i32*) #1

declare dso_local i32 @git_tree_id(i32*) #1

declare dso_local i32 @git_futils_filestamp_set_from_stat(i32*, %struct.stat*) #1

declare dso_local i32 @git_blob_free(i32*) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
