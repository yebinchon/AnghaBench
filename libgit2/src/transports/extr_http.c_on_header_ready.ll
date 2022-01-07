; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_http.c_on_header_ready.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_http.c_on_header_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"multiple Content-Type headers\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"multiple Content-Length headers\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Proxy-Authenticate\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"WWW-Authenticate\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"multiple Location headers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @on_header_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_header_ready(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @git_buf_cstr(i32* %12)
  %14 = call i32 @strcasecmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @GIT_ERROR_NET, align 4
  %23 = call i32 @git_error_set(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @git_buf_cstr(i32* %25)
  %27 = call i8* @git__strdup(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %32)
  br label %122

34:                                               ; preds = %1
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @git_buf_cstr(i32* %35)
  %37 = call i32 @strcasecmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @GIT_ERROR_NET, align 4
  %46 = call i32 @git_error_set(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @git_buf_cstr(i32* %48)
  %50 = call i8* @git__strdup(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %55)
  br label %121

57:                                               ; preds = %34
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @git_buf_cstr(i32* %58)
  %60 = call i32 @strcasecmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @git_buf_cstr(i32* %63)
  %65 = call i8* @git__strdup(i32 %64)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @git_vector_insert(i32* %70, i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %123

75:                                               ; preds = %62
  br label %120

76:                                               ; preds = %57
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @git_buf_cstr(i32* %77)
  %79 = call i32 @strcasecmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @git_buf_cstr(i32* %82)
  %84 = call i8* @git__strdup(i32 %83)
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @git_vector_insert(i32* %89, i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32 -1, i32* %2, align 4
  br label %123

94:                                               ; preds = %81
  br label %119

95:                                               ; preds = %76
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @git_buf_cstr(i32* %96)
  %98 = call i32 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @GIT_ERROR_NET, align 4
  %107 = call i32 @git_error_set(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

108:                                              ; preds = %100
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @git_buf_cstr(i32* %109)
  %111 = call i8* @git__strdup(i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %116)
  br label %118

118:                                              ; preds = %108, %95
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %75
  br label %121

121:                                              ; preds = %120, %47
  br label %122

122:                                              ; preds = %121, %24
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %105, %93, %74, %44, %21
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i8* @git__strdup(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i64 @git_vector_insert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
