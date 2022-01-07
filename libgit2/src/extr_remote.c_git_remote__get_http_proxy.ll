; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote__get_http_proxy.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote__get_http_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_8__ = type { i64 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"remote.%s.proxy\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"http.proxy\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"https_proxy\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"HTTPS_PROXY\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HTTP_PROXY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote__get_http_proxy(%struct.TYPE_7__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_7__* %14)
  %16 = load i8**, i8*** %7, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %133

24:                                               ; preds = %18
  %25 = load i8**, i8*** %7, align 8
  store i8* null, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @git_repository_config__weakptr(i32** %8, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %133

33:                                               ; preds = %24
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %38
  %46 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = call i32 @git_buf_printf(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %49)
  store i32 %50, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %133

54:                                               ; preds = %45
  %55 = load i32*, i32** %8, align 8
  %56 = call i8* @git_buf_cstr(i32* %12)
  %57 = call i32 @git_config__lookup_entry(%struct.TYPE_8__** %9, i32* %55, i8* %56, i32 0)
  store i32 %57, i32* %11, align 4
  %58 = call i32 @git_buf_dispose(i32* %12)
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %133

63:                                               ; preds = %54
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @git__strdup(i64 %74)
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  br label %127

77:                                               ; preds = %66, %63
  br label %78

78:                                               ; preds = %77, %38, %33
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @git_config__lookup_entry(%struct.TYPE_8__** %9, i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %80, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %133

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @git__strdup(i64 %95)
  %97 = load i8**, i8*** %7, align 8
  store i8* %96, i8** %97, align 8
  br label %127

98:                                               ; preds = %87, %84
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %103 = call i32 @git__getenv(i32* %10, i8* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @GIT_ENOTFOUND, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %112 = call i32 @git__getenv(i32* %10, i8* %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %107, %98
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @GIT_ENOTFOUND, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 (...) @git_error_clear()
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %4, align 4
  br label %133

124:                                              ; preds = %113
  %125 = call i8* @git_buf_detach(i32* %10)
  %126 = load i8**, i8*** %7, align 8
  store i8* %125, i8** %126, align 8
  br label %127

127:                                              ; preds = %124, %92, %71
  %128 = load i8**, i8*** %7, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %132 = call i32 @git_config_entry_free(%struct.TYPE_8__* %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %127, %122, %82, %61, %52, %31, %23
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @git_repository_config__weakptr(i32**, i32) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i64*) #1

declare dso_local i32 @git_config__lookup_entry(%struct.TYPE_8__**, i32*, i8*, i32) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i8* @git__strdup(i64) #1

declare dso_local i32 @git__getenv(i32*, i8*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i8* @git_buf_detach(i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @git_config_entry_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
