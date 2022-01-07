; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_remote_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_remote_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8**, i32 }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"reference '%s' is not a remote branch.\00", align 1
@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"reference '%s' is ambiguous\00", align 1
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not determine remote for '%s'\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_remote_name(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = phi i1 [ false, %16 ], [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_buf_sanitize(i32* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @git_reference__is_remote(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @git_error_set(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @GIT_ERROR, align 4
  store i32 %35, i32* %11, align 4
  br label %101

36:                                               ; preds = %22
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @git_remote_list(%struct.TYPE_4__* %7, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %101

41:                                               ; preds = %36
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @git_remote_lookup(i32** %9, i32* %48, i8* %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %83

57:                                               ; preds = %47
  %58 = load i32*, i32** %9, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32* @git_remote__matching_dst_refspec(i32* %58, i8* %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %12, align 8
  br label %79

72:                                               ; preds = %63
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @git_remote_free(i32* %73)
  %75 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @git_error_set(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  store i32 %78, i32* %11, align 4
  br label %101

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @git_remote_free(i32* %81)
  br label %83

83:                                               ; preds = %80, %56
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %42

86:                                               ; preds = %42
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @git_buf_clear(i32* %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @git_buf_puts(i32* %92, i8* %93)
  store i32 %94, i32* %11, align 4
  br label %100

95:                                               ; preds = %86
  %96 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @git_error_set(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %95, %89
  br label %101

101:                                              ; preds = %100, %72, %40, %31
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @git_buf_dispose(i32* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = call i32 @git_strarray_free(%struct.TYPE_4__* %7)
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_buf_sanitize(i32*) #2

declare dso_local i32 @git_reference__is_remote(i8*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_remote_list(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32*, i8*) #2

declare dso_local i32* @git_remote__matching_dst_refspec(i32*, i8*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_buf_clear(i32*) #2

declare dso_local i32 @git_buf_puts(i32*, i8*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
