; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_send_fetch_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_send_fetch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.fetch_negotiator = type { i32 }
%struct.fetch_pack_args = type { i64, %struct.TYPE_6__, i64, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ref = type { i32 }
%struct.oidset = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"command=fetch\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"agent\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"agent=%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"server-option\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"server-option=%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"thin-pack\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"include-tag\00", align 1
@prefer_ofs_delta = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"ofs-delta\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"sideband-all\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"shallow\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"Server does not support shallow requests\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Server supports filter\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"filter %s\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"filtering not recognized by server, ignoring\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"unable to write request to remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_negotiator*, i32, %struct.fetch_pack_args*, %struct.ref*, %struct.oidset*, i32*, i32*, i32)* @send_fetch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_fetch_request(%struct.fetch_negotiator* %0, i32 %1, %struct.fetch_pack_args* %2, %struct.ref* %3, %struct.oidset* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.fetch_negotiator*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fetch_pack_args*, align 8
  %12 = alloca %struct.ref*, align 8
  %13 = alloca %struct.oidset*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.fetch_pack_args* %2, %struct.fetch_pack_args** %11, align 8
  store %struct.ref* %3, %struct.ref** %12, align 8
  store %struct.oidset* %4, %struct.oidset** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %22 = call i64 @server_supports_v2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %8
  %27 = call i64 @server_supports_v2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 (...) @git_user_agent_sanitized()
  %31 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %34 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %33, i32 0, i32 6
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %39 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %38, i32 0, i32 6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  %45 = call i64 @server_supports_v2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %51 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %50, i32 0, i32 6
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %58 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %57, i32 0, i32 6
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %19, align 4
  br label %48

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71, %44, %37, %32
  %73 = call i32 @packet_buf_delim(%struct.strbuf* %18)
  %74 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %75 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %72
  %81 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %82 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %89 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i64, i64* @prefer_ofs_delta, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %99
  %105 = call i64 @server_supports_feature(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %109 = call i32 @add_shallow_requests(%struct.strbuf* %18, %struct.fetch_pack_args* %108)
  br label %123

110:                                              ; preds = %104
  %111 = load i32, i32* @the_repository, align 4
  %112 = call i64 @is_repository_shallow(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %116 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %110
  %120 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %121 = call i32 @die(i32 %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %107
  %124 = call i64 @server_supports_feature(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %128 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %134 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %133, i32 0, i32 1
  %135 = call i8* @expand_list_objects_filter_spec(%struct.TYPE_6__* %134)
  store i8* %135, i8** %20, align 8
  %136 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %137 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %138 = call i32 @print_verbose(%struct.fetch_pack_args* %136, i32 %137)
  %139 = load i8*, i8** %20, align 8
  %140 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %139)
  br label %150

141:                                              ; preds = %126, %123
  %142 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %143 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %141
  br label %150

150:                                              ; preds = %149, %132
  %151 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %152 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ref*, %struct.ref** %12, align 8
  %155 = call i32 @add_wants(i64 %153, %struct.ref* %154, %struct.strbuf* %18)
  %156 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %11, align 8
  %157 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %169

162:                                              ; preds = %150
  %163 = load %struct.oidset*, %struct.oidset** %13, align 8
  %164 = call i32 @add_common(%struct.strbuf* %18, %struct.oidset* %163)
  %165 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %9, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = call i32 @add_haves(%struct.fetch_negotiator* %165, %struct.strbuf* %18, i32* %166, i32* %167)
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %162, %160
  %170 = call i32 @packet_buf_flush(%struct.strbuf* %18)
  %171 = load i32, i32* %10, align 4
  %172 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @write_in_full(i32 %171, i32 %173, i32 %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %180 = call i32 @die_errno(i32 %179)
  br label %181

181:                                              ; preds = %178, %169
  %182 = call i32 @strbuf_release(%struct.strbuf* %18)
  %183 = load i32, i32* %17, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @server_supports_v2(i8*, i32) #2

declare dso_local i32 @packet_buf_write(%struct.strbuf*, i8*, ...) #2

declare dso_local i32 @git_user_agent_sanitized(...) #2

declare dso_local i32 @packet_buf_delim(%struct.strbuf*) #2

declare dso_local i64 @server_supports_feature(i8*, i8*, i32) #2

declare dso_local i32 @add_shallow_requests(%struct.strbuf*, %struct.fetch_pack_args*) #2

declare dso_local i64 @is_repository_shallow(i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @expand_list_objects_filter_spec(%struct.TYPE_6__*) #2

declare dso_local i32 @print_verbose(%struct.fetch_pack_args*, i32) #2

declare dso_local i32 @warning(i8*) #2

declare dso_local i32 @add_wants(i64, %struct.ref*, %struct.strbuf*) #2

declare dso_local i32 @add_common(%struct.strbuf*, %struct.oidset*) #2

declare dso_local i32 @add_haves(%struct.fetch_negotiator*, %struct.strbuf*, i32*, i32*) #2

declare dso_local i32 @packet_buf_flush(%struct.strbuf*) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @die_errno(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
