; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_submodule_helpers.c_rewrite_gitmodules.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_submodule_helpers.c_rewrite_gitmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"gitmodules\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"path =\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".gitted\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"url =\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"../testrepo.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewrite_gitmodules(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %3, i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %4, i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  br label %31

31:                                               ; preds = %152, %147, %108, %1
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @fgets(i8* %32, i32 256, i32* %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %175

36:                                               ; preds = %31
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %50, %36
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ true, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  br label %38

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @git__prefixcmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %104

57:                                               ; preds = %53
  %58 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i8*, i8** %9, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %67, %57
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %62

70:                                               ; preds = %62
  %71 = load i8*, i8** %2, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %5, i8* %71, i8* %72)
  %74 = call i32 @git_buf_rtrim(%struct.TYPE_9__* %5)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %5, i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %78 = call i32 @git_buf_oom(%struct.TYPE_9__* %5)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %103, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @F_OK, align 4
  %84 = call i64 @p_access(i8* %82, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i8*, i8** %2, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %4, i8* %87, i8* %88)
  %90 = call i32 @git_buf_rtrim(%struct.TYPE_9__* %4)
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %4, i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %94 = call i32 @git_buf_oom(%struct.TYPE_9__* %4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @p_rename(i8* %98, i8* %100)
  br label %102

102:                                              ; preds = %96, %86
  br label %103

103:                                              ; preds = %102, %80, %70
  br label %104

104:                                              ; preds = %103, %53
  %105 = load i8*, i8** %9, align 8
  %106 = call i64 @git__prefixcmp(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @fputs(i8* %109, i32* %110)
  br label %31

112:                                              ; preds = %104
  %113 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %114 = load i8*, i8** %9, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %9, align 8
  br label %117

117:                                              ; preds = %122, %112
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %9, align 8
  br label %117

125:                                              ; preds = %117
  %126 = load i8*, i8** %9, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 46
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i8*, i8** %2, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %5, i8* %131, i8* %132)
  %134 = call i32 @git_buf_rtrim(%struct.TYPE_9__* %5)
  br label %152

135:                                              ; preds = %125
  %136 = load i8*, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i8*, i8** %9, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 10
  br i1 %143, label %144, label %147

144:                                              ; preds = %139, %135
  %145 = load i8*, i8** %2, align 8
  %146 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %5, i8* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %151

147:                                              ; preds = %139
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @fputs(i8* %148, i32* %149)
  br label %31

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %130
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @git_path_prettify(%struct.TYPE_9__* %5, i8* %154, i32* null)
  %156 = call i32 @git_buf_putc(%struct.TYPE_9__* %5, i8 signext 10)
  %157 = call i32 @git_buf_oom(%struct.TYPE_9__* %5)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @cl_assert(i32 %160)
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @fwrite(i8* %162, i32 %168, i32 1, i32* %169)
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @fputs(i8* %172, i32* %173)
  br label %31

175:                                              ; preds = %31
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @fclose(i32* %176)
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @fclose(i32* %178)
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @p_unlink(i8* %181)
  %183 = call i32 @cl_must_pass(i32 %182)
  %184 = call i32 @git_buf_dispose(%struct.TYPE_9__* %3)
  %185 = call i32 @git_buf_dispose(%struct.TYPE_9__* %4)
  %186 = call i32 @git_buf_dispose(%struct.TYPE_9__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_9__*, i8*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @git__prefixcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_9__*) #2

declare dso_local i32 @git_buf_oom(%struct.TYPE_9__*) #2

declare dso_local i64 @p_access(i8*, i32) #2

declare dso_local i32 @p_rename(i8*, i8*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_9__*, i8*, i32*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_9__*, i8 signext) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
