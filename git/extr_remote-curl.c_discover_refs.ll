; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_discover_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_discover_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.string_list = type { i32 }
%struct.discovery = type { i8*, i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i64 }
%struct.http_get_options = type { i32, i32, %struct.string_list*, %struct.TYPE_3__*, %struct.strbuf*, %struct.strbuf*, %struct.strbuf* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@last_discovery = common dso_local global %struct.discovery* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%sinfo/refs\00", align 1
@url = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"GIT_SMART_HTTP\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"service=%s\00", align 1
@protocol_v2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"git-receive-pack\00", align 1
@protocol_v0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"repository '%s' not found\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Authentication failed for '%s'\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"unable to access '%s': %s\00", align 1
@curl_errorstr = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"redirecting to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.discovery* (i8*, i32)* @discover_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.discovery* @discover_refs(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.discovery*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.string_list, align 4
  %13 = alloca %struct.discovery*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.http_get_options, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %20 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %21 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %22 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %23 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %24 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %25 = bitcast %struct.string_list* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %26 = load %struct.discovery*, %struct.discovery** @last_discovery, align 8
  store %struct.discovery* %26, %struct.discovery** %13, align 8
  store i32 0, i32* %15, align 4
  %27 = call i32 (...) @get_protocol_version_config()
  store i32 %27, i32* %17, align 4
  %28 = load %struct.discovery*, %struct.discovery** %13, align 8
  %29 = icmp ne %struct.discovery* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.discovery*, %struct.discovery** %13, align 8
  %33 = getelementptr inbounds %struct.discovery, %struct.discovery* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %31, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load %struct.discovery*, %struct.discovery** %13, align 8
  store %struct.discovery* %38, %struct.discovery** %3, align 8
  br label %181

39:                                               ; preds = %30, %2
  %40 = load %struct.discovery*, %struct.discovery** %13, align 8
  %41 = call i32 @free_discovery(%struct.discovery* %40)
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %43 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %45 = call i64 @starts_with(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %49 = call i64 @starts_with(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47, %39
  %52 = call i64 @git_env_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  store i32 1, i32* %15, align 4
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %56 = call i32 @strchr(i8* %55, i8 signext 63)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 63)
  br label %62

60:                                               ; preds = %54
  %61 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 38)
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %51, %47
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @protocol_v2, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @protocol_v0, align 4
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %73, %69, %65
  %76 = load i32, i32* %17, align 4
  %77 = call i64 @get_protocol_http_header(i32 %76, %struct.strbuf* %11)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @string_list_append(%struct.string_list* %12, i8* %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = call i32 @memset(%struct.http_get_options* %16, i32 0, i32 48)
  %85 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %16, i32 0, i32 6
  store %struct.strbuf* %6, %struct.strbuf** %85, align 8
  %86 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %16, i32 0, i32 5
  store %struct.strbuf* %7, %struct.strbuf** %86, align 8
  %87 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %16, i32 0, i32 4
  store %struct.strbuf* %10, %struct.strbuf** %87, align 8
  %88 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %16, i32 0, i32 3
  store %struct.TYPE_3__* @url, %struct.TYPE_3__** %88, align 8
  %89 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %16, i32 0, i32 2
  store %struct.string_list* %12, %struct.string_list** %89, align 8
  %90 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %16, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %16, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @http_get_strbuf(i8* %93, %struct.strbuf* %8, %struct.http_get_options* %16)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  switch i32 %95, label %109 [
    i32 128, label %96
    i32 130, label %97
    i32 129, label %103
  ]

96:                                               ; preds = %83
  br label %116

97:                                               ; preds = %83
  %98 = call i32 @show_http_message(%struct.strbuf* %6, %struct.strbuf* %7, %struct.strbuf* %8)
  %99 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %101 = call i8* @transport_anonymize_url(i8* %100)
  %102 = call i32 (i32, i8*, ...) @die(i32 %99, i8* %101)
  br label %103

103:                                              ; preds = %83, %97
  %104 = call i32 @show_http_message(%struct.strbuf* %6, %struct.strbuf* %7, %struct.strbuf* %8)
  %105 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %107 = call i8* @transport_anonymize_url(i8* %106)
  %108 = call i32 (i32, i8*, ...) @die(i32 %105, i8* %107)
  br label %109

109:                                              ; preds = %83, %103
  %110 = call i32 @show_http_message(%struct.strbuf* %6, %struct.strbuf* %7, %struct.strbuf* %8)
  %111 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %112 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %113 = call i8* @transport_anonymize_url(i8* %112)
  %114 = load i32, i32* @curl_errorstr, align 4
  %115 = call i32 (i32, i8*, ...) @die(i32 %111, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %96
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %123 = call i64 @starts_with(i8* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %119
  %126 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 8
  %127 = call i8* @transport_anonymize_url(i8* %126)
  store i8* %127, i8** %18, align 8
  %128 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %129 = load i8*, i8** %18, align 8
  %130 = call i32 @warning(i32 %128, i8* %129)
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @free(i8* %131)
  br label %133

133:                                              ; preds = %125, %119, %116
  %134 = call %struct.discovery* @xcalloc(i32 1, i32 40)
  store %struct.discovery* %134, %struct.discovery** %13, align 8
  %135 = load i8*, i8** %4, align 8
  %136 = call i8* @xstrdup(i8* %135)
  %137 = load %struct.discovery*, %struct.discovery** %13, align 8
  %138 = getelementptr inbounds %struct.discovery, %struct.discovery* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load %struct.discovery*, %struct.discovery** %13, align 8
  %140 = getelementptr inbounds %struct.discovery, %struct.discovery* %139, i32 0, i32 5
  %141 = call i32 @strbuf_detach(%struct.strbuf* %8, i32* %140)
  %142 = load %struct.discovery*, %struct.discovery** %13, align 8
  %143 = getelementptr inbounds %struct.discovery, %struct.discovery* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.discovery*, %struct.discovery** %13, align 8
  %145 = getelementptr inbounds %struct.discovery, %struct.discovery* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.discovery*, %struct.discovery** %13, align 8
  %148 = getelementptr inbounds %struct.discovery, %struct.discovery* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %133
  %152 = load %struct.discovery*, %struct.discovery** %13, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 @check_smart_http(%struct.discovery* %152, i8* %153, %struct.strbuf* %6)
  br label %155

155:                                              ; preds = %151, %133
  %156 = load %struct.discovery*, %struct.discovery** %13, align 8
  %157 = getelementptr inbounds %struct.discovery, %struct.discovery* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.discovery*, %struct.discovery** %13, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @parse_git_refs(%struct.discovery* %161, i32 %162)
  %164 = load %struct.discovery*, %struct.discovery** %13, align 8
  %165 = getelementptr inbounds %struct.discovery, %struct.discovery* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  br label %171

166:                                              ; preds = %155
  %167 = load %struct.discovery*, %struct.discovery** %13, align 8
  %168 = call i32 @parse_info_refs(%struct.discovery* %167)
  %169 = load %struct.discovery*, %struct.discovery** %13, align 8
  %170 = getelementptr inbounds %struct.discovery, %struct.discovery* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %160
  %172 = call i32 @strbuf_release(%struct.strbuf* %9)
  %173 = call i32 @strbuf_release(%struct.strbuf* %6)
  %174 = call i32 @strbuf_release(%struct.strbuf* %7)
  %175 = call i32 @strbuf_release(%struct.strbuf* %10)
  %176 = call i32 @strbuf_release(%struct.strbuf* %8)
  %177 = call i32 @strbuf_release(%struct.strbuf* %11)
  %178 = call i32 @string_list_clear(%struct.string_list* %12, i32 0)
  %179 = load %struct.discovery*, %struct.discovery** %13, align 8
  store %struct.discovery* %179, %struct.discovery** @last_discovery, align 8
  %180 = load %struct.discovery*, %struct.discovery** %13, align 8
  store %struct.discovery* %180, %struct.discovery** %3, align 8
  br label %181

181:                                              ; preds = %171, %37
  %182 = load %struct.discovery*, %struct.discovery** %3, align 8
  ret %struct.discovery* %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_protocol_version_config(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free_discovery(%struct.discovery*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i64 @git_env_bool(i8*, i32) #2

declare dso_local i32 @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i64 @get_protocol_http_header(i32, %struct.strbuf*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i32 @memset(%struct.http_get_options*, i32, i32) #2

declare dso_local i32 @http_get_strbuf(i8*, %struct.strbuf*, %struct.http_get_options*) #2

declare dso_local i32 @show_http_message(%struct.strbuf*, %struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @die(i32, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @transport_anonymize_url(i8*) #2

declare dso_local i32 @warning(i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local %struct.discovery* @xcalloc(i32, i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @check_smart_http(%struct.discovery*, i8*, %struct.strbuf*) #2

declare dso_local i32 @parse_git_refs(%struct.discovery*, i32) #2

declare dso_local i32 @parse_info_refs(%struct.discovery*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
