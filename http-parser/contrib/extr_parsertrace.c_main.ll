; ModuleID = '/home/carl/AnghaBench/http-parser/contrib/extr_parsertrace.c_main.c'
source_filename = "/home/carl/AnghaBench/http-parser/contrib/extr_parsertrace.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@HTTP_RESPONSE = common dso_local global i32 0, align 4
@HTTP_REQUEST = common dso_local global i32 0, align 4
@HTTP_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ftell\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"couldn't read entire file\0A\00", align 1
@on_message_begin = common dso_local global i32 0, align 4
@on_url = common dso_local global i32 0, align 4
@on_header_field = common dso_local global i32 0, align 4
@on_header_value = common dso_local global i32 0, align 4
@on_headers_complete = common dso_local global i32 0, align 4
@on_body = common dso_local global i32 0, align 4
@on_message_complete = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Error: %s (%s)\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @usage(i8* %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @usage(i8* %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %47 [
    i32 114, label %41
    i32 113, label %43
    i32 98, label %45
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* @HTTP_RESPONSE, align 4
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %36
  %44 = load i32, i32* @HTTP_REQUEST, align 4
  store i32 %44, i32* %6, align 4
  br label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @HTTP_BOTH, align 4
  store i32 %46, i32* %6, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @usage(i8* %50)
  br label %52

52:                                               ; preds = %47, %45, %43, %41
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %124

62:                                               ; preds = %52
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @SEEK_END, align 4
  %65 = call i32 @fseek(i32* %63, i32 0, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @ftell(i32* %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %124

72:                                               ; preds = %62
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* @SEEK_SET, align 4
  %75 = call i32 @fseek(i32* %73, i32 0, i32 %74)
  %76 = load i64, i64* %10, align 8
  %77 = call i8* @malloc(i64 %76)
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @fread(i8* %78, i32 1, i64 %79, i32* %80)
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @free(i8* %87)
  br label %124

89:                                               ; preds = %72
  %90 = call i32 @memset(%struct.TYPE_4__* %12, i32 0, i32 28)
  %91 = load i32, i32* @on_message_begin, align 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @on_url, align 4
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @on_header_field, align 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @on_header_value, align 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @on_headers_complete, align 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @on_body, align 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @on_message_complete, align 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @http_parser_init(i32* %13, i32 %105)
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @http_parser_execute(i32* %13, %struct.TYPE_4__* %12, i8* %107, i64 %108)
  store i64 %109, i64* %14, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %89
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 @HTTP_PARSER_ERRNO(i32* %13)
  %118 = call i8* @http_errno_description(i32 %117)
  %119 = call i32 @HTTP_PARSER_ERRNO(i32* %13)
  %120 = call i8* @http_errno_name(i32 %119)
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %118, i8* %120)
  br label %124

122:                                              ; preds = %89
  %123 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %123, i32* %3, align 4
  br label %128

124:                                              ; preds = %115, %84, %70, %60
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @fclose(i32* %125)
  %127 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %122
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @http_parser_init(i32*, i32) #1

declare dso_local i64 @http_parser_execute(i32*, %struct.TYPE_4__*, i8*, i64) #1

declare dso_local i8* @http_errno_description(i32) #1

declare dso_local i32 @HTTP_PARSER_ERRNO(i32*) #1

declare dso_local i8* @http_errno_name(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
