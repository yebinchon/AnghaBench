; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_config_file_write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_config_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.write_data = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_14__, i32*, %struct.TYPE_14__* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_CONFIG_PARSER_INIT = common dso_local global i32 0, align 4
@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_FILEBUF_HASH_CONTENTS = common dso_local global i32 0, align 4
@GIT_CONFIG_FILE_MODE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@write_on_section = common dso_local global i32 0, align 4
@write_on_variable = common dso_local global i32 0, align 4
@write_on_comment = common dso_local global i32 0, align 4
@write_on_eof = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i8*, i32*, i8*)* @config_file_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_file_write(%struct.TYPE_15__* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.write_data, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %23 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %24 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %25 = load i32, i32* @GIT_CONFIG_PARSER_INIT, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %26, i32* %19, align 4
  %27 = call i32 @memset(%struct.write_data* %20, i32 0, i32 72)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %5
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = call i8* @git_buf_cstr(%struct.TYPE_14__* %34)
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = call i8* @git_buf_cstr(%struct.TYPE_14__* %40)
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %37 ], [ %41, %38 ]
  %44 = call i32 @git_buf_puts(%struct.TYPE_14__* %17, i8* %43)
  store i32 %44, i32* %21, align 4
  br label %61

45:                                               ; preds = %5
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GIT_FILEBUF_HASH_CONTENTS, align 4
  %51 = load i32, i32* @GIT_CONFIG_FILE_MODE, align 4
  %52 = call i32 @git_filebuf_open(i32* %19, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %21, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %165

55:                                               ; preds = %45
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @git_futils_readbuffer(%struct.TYPE_14__* %17, i32 %59)
  store i32 %60, i32* %21, align 4
  br label %61

61:                                               ; preds = %55, %42
  %62 = load i32, i32* %21, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* @GIT_ENOTFOUND, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %165

69:                                               ; preds = %64, %61
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @git_config_parser_init(i32* %18, i32 %73, i32 %75, i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %165

81:                                               ; preds = %69
  %82 = load i8*, i8** %8, align 8
  %83 = call i8* @strrchr(i8* %82, i8 signext 46)
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i8* @git__strndup(i8* %86, i32 %92)
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %94)
  %96 = load i8*, i8** %7, align 8
  %97 = call i8* @strrchr(i8* %96, i8 signext 46)
  store i8* %97, i8** %15, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %13, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i8* @git__strndup(i8* %100, i32 %106)
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %108)
  %110 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 7
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %110, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 1
  store i8* %113, i8** %114, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 2
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 3
  store i8* %117, i8** %118, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 6
  store i32* %119, i32** %120, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 4
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* @write_on_section, align 4
  %124 = load i32, i32* @write_on_variable, align 4
  %125 = load i32, i32* @write_on_comment, align 4
  %126 = load i32, i32* @write_on_eof, align 4
  %127 = call i32 @git_config_parse(i32* %18, i32 %123, i32 %124, i32 %125, i32 %126, %struct.write_data* %20)
  store i32 %127, i32* %21, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %81
  br label %165

130:                                              ; preds = %81
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %22, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = call i32 @git_buf_dispose(%struct.TYPE_14__* %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = call i32 @git_buf_detach(%struct.TYPE_14__* %16)
  %144 = load i64, i64* %22, align 8
  %145 = call i32 @git_buf_attach(%struct.TYPE_14__* %142, i32 %143, i64 %144)
  br label %164

146:                                              ; preds = %130
  %147 = call i8* @git_buf_cstr(%struct.TYPE_14__* %16)
  %148 = call i32 @git_buf_len(%struct.TYPE_14__* %16)
  %149 = call i32 @git_filebuf_write(i32* %19, i8* %147, i32 %148)
  %150 = call i32 @git_filebuf_commit(i32* %19)
  store i32 %150, i32* %21, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %165

153:                                              ; preds = %146
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @config_file_refresh_from_buffer(i32* %155, i32 %157, i32 %159)
  store i32 %160, i32* %21, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %165

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %135
  br label %165

165:                                              ; preds = %164, %162, %152, %129, %80, %68, %54
  %166 = load i8*, i8** %12, align 8
  %167 = call i32 @git__free(i8* %166)
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @git__free(i8* %168)
  %170 = getelementptr inbounds %struct.write_data, %struct.write_data* %20, i32 0, i32 5
  %171 = call i32 @git_buf_dispose(%struct.TYPE_14__* %170)
  %172 = call i32 @git_buf_dispose(%struct.TYPE_14__* %16)
  %173 = call i32 @git_buf_dispose(%struct.TYPE_14__* %17)
  %174 = call i32 @git_filebuf_cleanup(i32* %19)
  %175 = call i32 @git_config_parser_dispose(i32* %18)
  %176 = load i32, i32* %21, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.write_data*, i32, i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_14__*, i8*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_14__*) #2

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_14__*, i32) #2

declare dso_local i64 @git_config_parser_init(i32*, i32, i32, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @git__strndup(i8*, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #2

declare dso_local i32 @git_config_parse(i32*, i32, i32, i32, i32, %struct.write_data*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

declare dso_local i32 @git_buf_attach(%struct.TYPE_14__*, i32, i64) #2

declare dso_local i32 @git_buf_detach(%struct.TYPE_14__*) #2

declare dso_local i32 @git_filebuf_write(i32*, i8*, i32) #2

declare dso_local i32 @git_buf_len(%struct.TYPE_14__*) #2

declare dso_local i32 @git_filebuf_commit(i32*) #2

declare dso_local i32 @config_file_refresh_from_buffer(i32*, i32, i32) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_filebuf_cleanup(i32*) #2

declare dso_local i32 @git_config_parser_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
