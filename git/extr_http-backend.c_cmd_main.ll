; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.service_cmd = type { i8*, i32 (%struct.strbuf*, i8*)*, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"REQUEST_METHOD\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@die_webcgi = common dso_local global i32 0, align 4
@die_webcgi_recursing = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No REQUEST_METHOD from server\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@services = common dso_local global %struct.service_cmd* null, align 8
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Bogus regex in service table: %s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Request not supported: '%s'\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Not a git repository: '%s'\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GIT_HTTP_EXPORT_ALL\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"git-daemon-export-ok\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Repository not exported: '%s'\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"GIT_HTTP_MAX_REQUEST_BUFFER\00", align 1
@max_request_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.service_cmd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.service_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [1 x %struct.TYPE_3__], align 16
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  store %struct.service_cmd* null, %struct.service_cmd** %8, align 8
  store i8* null, i8** %9, align 8
  %17 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load i32, i32* @die_webcgi, align 4
  %19 = call i32 @set_die_routine(i32 %18)
  %20 = load i32, i32* @die_webcgi_recursing, align 4
  %21 = call i32 @set_die_is_recursing_routine(i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = call i8* (...) @getdir()
  store i8* %32, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %94, %31
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.service_cmd*, %struct.service_cmd** @services, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.service_cmd* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %97

38:                                               ; preds = %33
  %39 = load %struct.service_cmd*, %struct.service_cmd** @services, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.service_cmd, %struct.service_cmd* %39, i64 %41
  store %struct.service_cmd* %42, %struct.service_cmd** %12, align 8
  %43 = load %struct.service_cmd*, %struct.service_cmd** %12, align 8
  %44 = getelementptr inbounds %struct.service_cmd, %struct.service_cmd* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @REG_EXTENDED, align 4
  %47 = call i64 @regcomp(i32* %13, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.service_cmd*, %struct.service_cmd** %12, align 8
  %51 = getelementptr inbounds %struct.service_cmd, %struct.service_cmd* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %57 = call i32 @regexec(i32* %13, i8* %55, i32 1, %struct.TYPE_3__* %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %92, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.service_cmd*, %struct.service_cmd** %12, align 8
  %62 = getelementptr inbounds %struct.service_cmd, %struct.service_cmd* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %60, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.service_cmd*, %struct.service_cmd** %12, align 8
  %68 = call i32 @bad_request(%struct.strbuf* %11, %struct.service_cmd* %67)
  store i32 %68, i32* %3, align 4
  br label %130

69:                                               ; preds = %59
  %70 = load %struct.service_cmd*, %struct.service_cmd** %12, align 8
  store %struct.service_cmd* %70, %struct.service_cmd** %8, align 8
  %71 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 16
  %74 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %73, %76
  store i64 %77, i64* %15, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i64, i64* %15, align 8
  %85 = sub i64 %84, 1
  %86 = call i8* @xmemdupz(i8* %83, i64 %85)
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 0, i8* %91, align 1
  br label %97

92:                                               ; preds = %54
  %93 = call i32 @regfree(i32* %13)
  br label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %33

97:                                               ; preds = %69, %33
  %98 = load %struct.service_cmd*, %struct.service_cmd** %8, align 8
  %99 = icmp ne %struct.service_cmd* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @not_found(%struct.strbuf* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = call i32 (...) @setup_path()
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @enter_repo(i8* %105, i32 0)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @not_found(%struct.strbuf* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp ne i8* %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @F_OK, align 4
  %116 = call i64 @access(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @not_found(%struct.strbuf* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %114, %111
  %122 = call i32 (...) @http_config()
  %123 = load i32, i32* @max_request_buffer, align 4
  %124 = call i32 @git_env_ulong(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  store i32 %124, i32* @max_request_buffer, align 4
  %125 = load %struct.service_cmd*, %struct.service_cmd** %8, align 8
  %126 = getelementptr inbounds %struct.service_cmd, %struct.service_cmd* %125, i32 0, i32 1
  %127 = load i32 (%struct.strbuf*, i8*)*, i32 (%struct.strbuf*, i8*)** %126, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 %127(%struct.strbuf* %11, i8* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %121, %66
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_die_routine(i32) #1

declare dso_local i32 @set_die_is_recursing_routine(i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @getdir(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.service_cmd*) #1

declare dso_local i64 @regcomp(i32*, i32, i32) #1

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @bad_request(%struct.strbuf*, %struct.service_cmd*) #1

declare dso_local i8* @xmemdupz(i8*, i64) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @not_found(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @setup_path(...) #1

declare dso_local i32 @enter_repo(i8*, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @http_config(...) #1

declare dso_local i32 @git_env_ulong(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
