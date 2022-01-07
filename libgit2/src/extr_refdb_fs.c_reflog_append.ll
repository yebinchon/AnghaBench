; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_reflog_append.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_reflog_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_RMDIR_SKIP_NONEMPTY = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"cannot create reflog at '%s', there are reflogs beneath that folder\00", align 1
@GIT_EDIRECTORY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@GIT_REFLOG_FILE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*, i8*)* @reflog_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reflog_append(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 4
  %18 = alloca %struct.TYPE_20__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = bitcast %struct.TYPE_20__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = bitcast %struct.TYPE_20__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %25, i32* %20, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %21, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %6
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GIT_HEAD_FILE, align 4
  %42 = call i64 @strcmp(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = icmp ne %struct.TYPE_20__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %49 = icmp ne %struct.TYPE_20__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %7, align 4
  br label %184

51:                                               ; preds = %47, %37, %6
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %53 = icmp ne %struct.TYPE_20__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = call i32 @git_oid_cpy(%struct.TYPE_20__* %17, %struct.TYPE_20__* %55)
  br label %72

57:                                               ; preds = %51
  %58 = load i32*, i32** %21, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @git_reference_name_to_id(%struct.TYPE_20__* %17, i32* %58, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @GIT_ENOTFOUND, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %7, align 4
  br label %184

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71, %54
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %74 = icmp ne %struct.TYPE_20__* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %77 = call i32 @git_oid_cpy(%struct.TYPE_20__* %18, %struct.TYPE_20__* %76)
  br label %106

78:                                               ; preds = %72
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %83 = call %struct.TYPE_20__* @git_reference_target(%struct.TYPE_19__* %82)
  %84 = call i32 @git_oid_cpy(%struct.TYPE_20__* %18, %struct.TYPE_20__* %83)
  br label %105

85:                                               ; preds = %78
  %86 = load i32*, i32** %21, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = call i32 @git_reference_symbolic_target(%struct.TYPE_19__* %87)
  %89 = call i32 @git_reference_name_to_id(%struct.TYPE_20__* %18, i32* %86, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @GIT_ENOTFOUND, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %7, align 4
  br label %184

98:                                               ; preds = %92, %85
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @GIT_ENOTFOUND, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %184

103:                                              ; preds = %98
  %104 = call i32 (...) @git_error_clear()
  br label %105

105:                                              ; preds = %103, %81
  br label %106

106:                                              ; preds = %105, %75
  %107 = load i32*, i32** %12, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @serialize_reflog_entry(i32* %19, %struct.TYPE_20__* %17, %struct.TYPE_20__* %18, i32* %107, i8* %108)
  store i32 %109, i32* %14, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %180

112:                                              ; preds = %106
  %113 = load i32*, i32** %21, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @retrieve_reflog_path(i32* %20, i32* %113, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %180

120:                                              ; preds = %112
  %121 = call i32 @git_buf_cstr(i32* %20)
  %122 = call i32 @git_futils_mkpath2file(i32 %121, i32 511)
  store i32 %122, i32* %14, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @GIT_EEXISTS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %180

129:                                              ; preds = %124, %120
  %130 = call i32 @git_buf_cstr(i32* %20)
  %131 = call i64 @git_path_isdir(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %161

133:                                              ; preds = %129
  %134 = call i32 @git_buf_cstr(i32* %20)
  %135 = load i32, i32* @GIT_RMDIR_SKIP_NONEMPTY, align 4
  %136 = call i32 @git_futils_rmdir_r(i32 %134, i32* null, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @GIT_ENOTFOUND, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  br label %143

143:                                              ; preds = %142, %138
  br label %156

144:                                              ; preds = %133
  %145 = call i32 @git_buf_cstr(i32* %20)
  %146 = call i64 @git_path_isdir(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @git_error_set(i32 %149, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @GIT_EDIRECTORY, align 4
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %148, %144
  br label %156

156:                                              ; preds = %155, %143
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %180

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %129
  %162 = load i32, i32* @O_WRONLY, align 4
  %163 = load i32, i32* @O_CREAT, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @O_APPEND, align 4
  %166 = or i32 %164, %165
  store i32 %166, i32* %16, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = load i32, i32* @O_FSYNC, align 4
  %173 = load i32, i32* %16, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %16, align 4
  br label %175

175:                                              ; preds = %171, %161
  %176 = call i32 @git_buf_cstr(i32* %20)
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @GIT_REFLOG_FILE_MODE, align 4
  %179 = call i32 @git_futils_writebuffer(i32* %19, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %175, %159, %128, %119, %111
  %181 = call i32 @git_buf_dispose(i32* %19)
  %182 = call i32 @git_buf_dispose(i32* %20)
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %180, %102, %96, %69, %50
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i32 @git_oid_cpy(%struct.TYPE_20__*, %struct.TYPE_20__*) #2

declare dso_local i32 @git_reference_name_to_id(%struct.TYPE_20__*, i32*, i32) #2

declare dso_local %struct.TYPE_20__* @git_reference_target(%struct.TYPE_19__*) #2

declare dso_local i32 @git_reference_symbolic_target(%struct.TYPE_19__*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @serialize_reflog_entry(i32*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*, i8*) #2

declare dso_local i32 @retrieve_reflog_path(i32*, i32*, i32) #2

declare dso_local i32 @git_futils_mkpath2file(i32, i32) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i64 @git_path_isdir(i32) #2

declare dso_local i32 @git_futils_rmdir_r(i32, i32*, i32) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_futils_writebuffer(i32*, i32, i32, i32) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
