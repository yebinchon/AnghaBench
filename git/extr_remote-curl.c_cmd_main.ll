; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8** }
%struct.TYPE_7__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"remote-curl: usage: git remote-curl <remote> [<url>]\00", align 1
@options = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"remote-curl\00", align 1
@remote = common dso_local global %struct.TYPE_8__* null, align 8
@url = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"remote-curl: error reading command stream from git\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fetch \00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"remote-curl: fetch attempted without a local repo\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"list \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"for-push\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"push \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"option \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"error invalid value\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"unsupported\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"stateless-connect\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"fetch\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"option\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"push\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"check-connectivity\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"stateless-connect \00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"remote-curl: unknown command '%s' from git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = call i32 @setup_git_directory_gently(i32* %7)
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i32, ...) @error(i32 %17)
  store i32 1, i32* %3, align 4
  br label %183

19:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @options, i32 0, i32 0), align 4
  %20 = call i32 @isatty(i32 2)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @options, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @options, i32 0, i32 2), align 4
  %25 = call i32 @string_list_init(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @options, i32 0, i32 4), i32 1)
  %26 = call i32 @string_list_init(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @options, i32 0, i32 3), i32 1)
  %27 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call %struct.TYPE_8__* @remote_get(i8* %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** @remote, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @end_url_with_slash(%struct.TYPE_7__* @url, i8* %37)
  br label %46

39:                                               ; preds = %19
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @remote, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @end_url_with_slash(%struct.TYPE_7__* @url, i8* %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @remote, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @url, i32 0, i32 0), align 4
  %49 = call i32 @http_init(%struct.TYPE_8__* %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %180, %46
  %51 = load i32, i32* @stdin, align 4
  %52 = call i64 @strbuf_getline_lf(%struct.strbuf* %6, i32 %51)
  %53 = load i64, i64* @EOF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @stdin, align 4
  %57 = call i64 @ferror(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 (i32, ...) @error(i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  store i32 1, i32* %3, align 4
  br label %183

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %181

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @starts_with(i64 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @die(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i32 @parse_fetch(%struct.strbuf* %6)
  br label %178

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @strcmp(i64 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @starts_with(i64 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86, %81
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 4
  %95 = call i32 @strstr(i64 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @get_refs(i32 %100)
  %102 = call i32 @output_refs(i32 %101)
  br label %177

103:                                              ; preds = %86
  %104 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @starts_with(i64 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @parse_push(%struct.strbuf* %6)
  br label %176

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @skip_prefix(i64 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %8)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  %116 = load i8*, i8** %8, align 8
  %117 = call i8* @strchr(i8* %116, i8 signext 32)
  store i8* %117, i8** %10, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %10, align 8
  store i8 0, i8* %121, align 1
  br label %124

123:                                              ; preds = %115
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %124

124:                                              ; preds = %123, %120
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @set_option(i8* %125, i8* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %140

132:                                              ; preds = %124
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %139

137:                                              ; preds = %132
  %138 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %135
  br label %140

140:                                              ; preds = %139, %130
  %141 = load i32, i32* @stdout, align 4
  %142 = call i32 @fflush(i32 %141)
  br label %175

143:                                              ; preds = %110
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @strcmp(i64 %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %143
  %149 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %150 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %151 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %152 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %153 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %154 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %155 = load i32, i32* @stdout, align 4
  %156 = call i32 @fflush(i32 %155)
  br label %174

157:                                              ; preds = %143
  %158 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @skip_prefix(i64 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8** %8)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @stateless_connect(i8* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  br label %181

167:                                              ; preds = %162
  br label %173

168:                                              ; preds = %157
  %169 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  %170 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i32, ...) @error(i32 %169, i64 %171)
  store i32 1, i32* %3, align 4
  br label %183

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %148
  br label %175

175:                                              ; preds = %174, %140
  br label %176

176:                                              ; preds = %175, %108
  br label %177

177:                                              ; preds = %176, %91
  br label %178

178:                                              ; preds = %177, %79
  %179 = call i32 @strbuf_reset(%struct.strbuf* %6)
  br label %180

180:                                              ; preds = %178
  br i1 true, label %50, label %181

181:                                              ; preds = %180, %166, %67
  %182 = call i32 (...) @http_cleanup()
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %168, %62, %16
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_git_directory_gently(i32*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @string_list_init(i32*, i32) #2

declare dso_local i32 @trace2_cmd_name(i8*) #2

declare dso_local %struct.TYPE_8__* @remote_get(i8*) #2

declare dso_local i32 @end_url_with_slash(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @http_init(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i64 @starts_with(i64, i8*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @parse_fetch(%struct.strbuf*) #2

declare dso_local i32 @strcmp(i64, i8*) #2

declare dso_local i32 @strstr(i64, i8*) #2

declare dso_local i32 @output_refs(i32) #2

declare dso_local i32 @get_refs(i32) #2

declare dso_local i32 @parse_push(%struct.strbuf*) #2

declare dso_local i64 @skip_prefix(i64, i8*, i8**) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @set_option(i8*, i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @stateless_connect(i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @http_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
