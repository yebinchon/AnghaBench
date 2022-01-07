; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_mkdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }
%struct.git_futils_mkdir_options = type { i32 }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@GIT_MKDIR_SKIP_LAST2 = common dso_local global i32 0, align 4
@GIT_MKDIR_SKIP_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_mkdir(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.git_futils_mkdir_options, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %18 = bitcast %struct.git_futils_mkdir_options* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @git_buf_puts(%struct.TYPE_7__* %7, i8* %19)
  store i32 %20, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mkdir_canonicalize(%struct.TYPE_7__* %7, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @git_buf_puts(%struct.TYPE_7__* %8, i8* %28)
  store i32 %29, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %26, %22, %3
  br label %152

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @git_path_root(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %113, %36
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %114

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @p_lstat(i8* %48, %struct.stat* %11)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %114

53:                                               ; preds = %46
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ENOENT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @GIT_ERROR_OS, align 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @git_error_set(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %60)
  store i32 -1, i32* %15, align 4
  br label %152

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @git_path_dirname_r(%struct.TYPE_7__* %8, i8* %67)
  store i32 %68, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %15, align 4
  br label %152

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 46
  br i1 %83, label %98, label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 47
  br i1 %93, label %98, label %94

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94, %87, %77
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %9, align 8
  br label %114

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %9, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %114

113:                                              ; preds = %101
  br label %42

114:                                              ; preds = %112, %98, %52, %42
  %115 = load i64, i64* %12, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @mkdir_validate_dir(i8* %119, %struct.stat* %11, i32 %120, i32 %121, %struct.git_futils_mkdir_options* %10)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @mkdir_validate_mode(i8* %127, %struct.stat* %11, i32 1, i32 %128, i32 %129, %struct.git_futils_mkdir_options* %10)
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %125, %117
  br label %152

132:                                              ; preds = %114
  %133 = load i32, i32* @GIT_MKDIR_SKIP_LAST2, align 4
  %134 = load i32, i32* @GIT_MKDIR_SKIP_LAST, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %6, align 4
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  br label %147

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i8* [ %145, %143 ], [ null, %146 ]
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @git_futils_mkdir_relative(i8* %139, i8* %148, i32 %149, i32 %150, %struct.git_futils_mkdir_options* %10)
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %147, %131, %70, %57, %35
  %153 = call i32 @git_buf_dispose(%struct.TYPE_7__* %7)
  %154 = call i32 @git_buf_dispose(%struct.TYPE_7__* %8)
  %155 = load i32, i32* %15, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_buf_puts(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @mkdir_canonicalize(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @git_path_root(i8*) #2

declare dso_local i32 @p_lstat(i8*, %struct.stat*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_path_dirname_r(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @mkdir_validate_dir(i8*, %struct.stat*, i32, i32, %struct.git_futils_mkdir_options*) #2

declare dso_local i32 @mkdir_validate_mode(i8*, %struct.stat*, i32, i32, i32, %struct.git_futils_mkdir_options*) #2

declare dso_local i32 @git_futils_mkdir_relative(i8*, i8*, i32, i32, %struct.git_futils_mkdir_options*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
