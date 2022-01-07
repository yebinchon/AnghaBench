; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_git_rebase_open.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_git_rebase_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@GIT_REBASE_TYPE_NONE = common dso_local global i32 0, align 4
@GIT_ERROR_REBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"there is no rebase in progress\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@HEAD_NAME_FILE = common dso_local global i32 0, align 4
@ORIG_DETACHED_HEAD = common dso_local global i32 0, align 4
@ORIG_HEAD_FILE = common dso_local global i32 0, align 4
@HEAD_FILE = common dso_local global i32 0, align 4
@ONTO_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"interactive rebase is not supported\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"patch application rebase is not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_rebase_open(%struct.TYPE_16__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca %struct.TYPE_17__, align 4
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = bitcast %struct.TYPE_17__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %17 = bitcast %struct.TYPE_17__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %18 = bitcast %struct.TYPE_17__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @assert(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @rebase_check_versions(i32* %21)
  store i32 %22, i32* %14, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %4, align 4
  br label %185

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @rebase_alloc(%struct.TYPE_16__** %8, i32* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %185

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 5
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @rebase_state_type(i32* %36, i32* %38, i32* %39)
  store i32 %40, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %170

43:                                               ; preds = %31
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GIT_REBASE_TYPE_NONE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %51 = call i32 @git_error_set(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %52, i32* %14, align 4
  br label %170

53:                                               ; preds = %43
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @git_buf_puts(%struct.TYPE_17__* %9, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %170

60:                                               ; preds = %53
  %61 = call i64 @git_buf_len(%struct.TYPE_17__* %9)
  store i64 %61, i64* %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HEAD_NAME_FILE, align 4
  %65 = call i32 @git_buf_joinpath(%struct.TYPE_17__* %9, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @git_futils_readbuffer(%struct.TYPE_17__* %10, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %60
  br label %170

73:                                               ; preds = %67
  %74 = call i32 @git_buf_rtrim(%struct.TYPE_17__* %10)
  %75 = load i32, i32* @ORIG_DETACHED_HEAD, align 4
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @strcmp(i32 %75, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @git_buf_truncate(%struct.TYPE_17__* %9, i64 %84)
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ORIG_HEAD_FILE, align 4
  %89 = call i32 @git_buf_joinpath(%struct.TYPE_17__* %9, i32 %87, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %170

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @git_path_isfile(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @git_buf_truncate(%struct.TYPE_17__* %9, i64 %98)
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @HEAD_FILE, align 4
  %103 = call i32 @git_buf_joinpath(%struct.TYPE_17__* %9, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %170

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %92
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @git_futils_readbuffer(%struct.TYPE_17__* %11, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %170

113:                                              ; preds = %107
  %114 = call i32 @git_buf_rtrim(%struct.TYPE_17__* %11)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @git_oid_fromstr(i32* %116, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %170

122:                                              ; preds = %113
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @git_buf_truncate(%struct.TYPE_17__* %9, i64 %123)
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ONTO_FILE, align 4
  %128 = call i32 @git_buf_joinpath(%struct.TYPE_17__* %9, i32 %126, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @git_futils_readbuffer(%struct.TYPE_17__* %12, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %122
  br label %170

136:                                              ; preds = %130
  %137 = call i32 @git_buf_rtrim(%struct.TYPE_17__* %12)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @git_oid_fromstr(i32* %139, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %170

145:                                              ; preds = %136
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = call i32 @git_buf_detach(%struct.TYPE_17__* %10)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %167 [
    i32 129, label %158
    i32 128, label %161
    i32 130, label %164
  ]

158:                                              ; preds = %154
  %159 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %160 = call i32 @git_error_set(i32 %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %169

161:                                              ; preds = %154
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %163 = call i32 @rebase_open_merge(%struct.TYPE_16__* %162)
  store i32 %163, i32* %14, align 4
  br label %169

164:                                              ; preds = %154
  %165 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %166 = call i32 @git_error_set(i32 %165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %169

167:                                              ; preds = %154
  %168 = call i32 (...) @abort() #4
  unreachable

169:                                              ; preds = %164, %161, %158
  br label %170

170:                                              ; preds = %169, %144, %135, %121, %112, %105, %91, %72, %59, %49, %42
  %171 = load i32, i32* %14, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  store %struct.TYPE_16__* %174, %struct.TYPE_16__** %175, align 8
  br label %179

176:                                              ; preds = %170
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %178 = call i32 @git_rebase_free(%struct.TYPE_16__* %177)
  br label %179

179:                                              ; preds = %176, %173
  %180 = call i32 @git_buf_dispose(%struct.TYPE_17__* %9)
  %181 = call i32 @git_buf_dispose(%struct.TYPE_17__* %10)
  %182 = call i32 @git_buf_dispose(%struct.TYPE_17__* %11)
  %183 = call i32 @git_buf_dispose(%struct.TYPE_17__* %12)
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %179, %30, %24
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32*) #2

declare dso_local i32 @rebase_check_versions(i32*) #2

declare dso_local i64 @rebase_alloc(%struct.TYPE_16__**, i32*) #2

declare dso_local i32 @rebase_state_type(i32*, i32*, i32*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_17__*, i32) #2

declare dso_local i64 @git_buf_len(%struct.TYPE_17__*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_17__*) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i32 @git_buf_truncate(%struct.TYPE_17__*, i64) #2

declare dso_local i32 @git_path_isfile(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i32) #2

declare dso_local i32 @git_buf_detach(%struct.TYPE_17__*) #2

declare dso_local i32 @rebase_open_merge(%struct.TYPE_16__*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @git_rebase_free(%struct.TYPE_16__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
