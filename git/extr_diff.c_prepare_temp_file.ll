; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_prepare_temp_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_prepare_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.diff_tempfile = type { i8*, i32, i32 }
%struct.repository = type { i32 }
%struct.diff_filespec = type { i32, i32, i32, i32, i32, i64 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"stat(%s)\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"readlink(%s)\00", align 1
@null_oid = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%06o\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot read data blob for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_tempfile* (%struct.repository*, i8*, %struct.diff_filespec*)* @prepare_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_tempfile* @prepare_temp_file(%struct.repository* %0, i8* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca %struct.diff_tempfile*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_tempfile*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %7, align 8
  %11 = call %struct.diff_tempfile* (...) @claim_diff_tempfile()
  store %struct.diff_tempfile* %11, %struct.diff_tempfile** %8, align 8
  %12 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %13 = call i32 @DIFF_FILE_VALID(%struct.diff_filespec* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %56, %15
  %17 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %18 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %20 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i32, i8*, ...) @xsnprintf(i32 %21, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %24 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i32, i8*, ...) @xsnprintf(i32 %25, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  store %struct.diff_tempfile* %27, %struct.diff_tempfile** %4, align 8
  br label %169

28:                                               ; preds = %3
  %29 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %30 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @S_ISGITLINK(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %139, label %34

34:                                               ; preds = %28
  %35 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %36 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.repository*, %struct.repository** %5, align 8
  %41 = getelementptr inbounds %struct.repository, %struct.repository* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %45 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %44, i32 0, i32 1
  %46 = call i64 @reuse_worktree_file(i32 %42, i8* %43, i32* %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %139

48:                                               ; preds = %39, %34
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @lstat(i8* %49, %struct.stat* %9)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ENOENT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %16

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @die_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %48
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISLNK(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %60
  %66 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @strbuf_readlink(%struct.strbuf* %10, i8* %67, i32 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @die_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.repository*, %struct.repository** %5, align 8
  %77 = getelementptr inbounds %struct.repository, %struct.repository* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %86 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %91 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %90, i32 0, i32 1
  br label %93

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32* [ %91, %89 ], [ @null_oid, %92 ]
  %95 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %96 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %101 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  br label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @S_IFLNK, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi i32 [ %102, %99 ], [ %104, %103 ]
  %107 = call i32 @prep_temp_blob(i32 %78, i8* %79, %struct.diff_tempfile* %80, i32 %82, i32 %84, i32* %94, i32 %106)
  %108 = call i32 @strbuf_release(%struct.strbuf* %10)
  br label %137

109:                                              ; preds = %60
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %112 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %114 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %109
  %118 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %119 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @oid_to_hex_r(i32 %120, i32* @null_oid)
  br label %129

122:                                              ; preds = %109
  %123 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %124 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %127 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %126, i32 0, i32 1
  %128 = call i32 @oid_to_hex_r(i32 %125, i32* %127)
  br label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %131 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %134 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i32, i8*, ...) @xsnprintf(i32 %132, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %129, %105
  %138 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  store %struct.diff_tempfile* %138, %struct.diff_tempfile** %4, align 8
  br label %169

139:                                              ; preds = %39, %28
  %140 = load %struct.repository*, %struct.repository** %5, align 8
  %141 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %142 = call i64 @diff_populate_filespec(%struct.repository* %140, %struct.diff_filespec* %141, i32 0)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %146 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.repository*, %struct.repository** %5, align 8
  %151 = getelementptr inbounds %struct.repository, %struct.repository* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  %155 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %156 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %159 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %162 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %161, i32 0, i32 1
  %163 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %164 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @prep_temp_blob(i32 %152, i8* %153, %struct.diff_tempfile* %154, i32 %157, i32 %160, i32* %162, i32 %165)
  br label %167

167:                                              ; preds = %149
  %168 = load %struct.diff_tempfile*, %struct.diff_tempfile** %8, align 8
  store %struct.diff_tempfile* %168, %struct.diff_tempfile** %4, align 8
  br label %169

169:                                              ; preds = %167, %137, %16
  %170 = load %struct.diff_tempfile*, %struct.diff_tempfile** %4, align 8
  ret %struct.diff_tempfile* %170
}

declare dso_local %struct.diff_tempfile* @claim_diff_tempfile(...) #1

declare dso_local i32 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i32 @xsnprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i64 @reuse_worktree_file(i32, i8*, i32*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @die_errno(i8*, i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_readlink(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @prep_temp_blob(i32, i8*, %struct.diff_tempfile*, i32, i32, i32*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @oid_to_hex_r(i32, i32*) #1

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
