; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_do_fetch_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_do_fetch_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.fetch_pack_args = type { i64, i32, i64, i32, i32, i64, i64, i64, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ref = type { i32 }
%struct.shallow_info = type { i32, i64, i64 }
%struct.object_id = type { i32 }
%struct.fetch_negotiator = type { i32 (%struct.fetch_negotiator*)* }

@the_repository = common dso_local global %struct.repository* null, align 8
@ref_compare_name = common dso_local global i32 0, align 4
@cmp_ref_by_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"agent\00", align 1
@agent_supported = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Server version is %.*s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"shallow\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Server supports %s\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Server does not support shallow clients\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"multi_ack_detailed\00", align 1
@multi_ack = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"no-done\00", align 1
@no_done = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"multi_ack\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"side-band-64k\00", align 1
@use_sideband = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"side-band\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"allow-tip-sha1-in-want\00", align 1
@ALLOW_TIP_SHA1 = common dso_local global i32 0, align 4
@allow_unadvertised_object_request = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"allow-reachable-sha1-in-want\00", align 1
@ALLOW_REACHABLE_SHA1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"thin-pack\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"include-tag\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ofs-delta\00", align 1
@prefer_ofs_delta = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@server_supports_filtering = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [45 x i8] c"filtering not recognized by server, ignoring\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"deepen-since\00", align 1
@deepen_since_ok = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"Server does not support --shallow-since\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"deepen-not\00", align 1
@deepen_not_ok = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [42 x i8] c"Server does not support --shallow-exclude\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"deepen-relative\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Server does not support --deepen\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"no common commits\00", align 1
@shallow_lock = common dso_local global i32 0, align 4
@alternate_shallow_file = common dso_local global i32* null, align 8
@.str.25 = private unnamed_addr constant [30 x i8] c"git fetch-pack: fetch failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.fetch_pack_args*, i32*, %struct.ref*, %struct.ref**, i32, %struct.shallow_info*, i8**)* @do_fetch_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @do_fetch_pack(%struct.fetch_pack_args* %0, i32* %1, %struct.ref* %2, %struct.ref** %3, i32 %4, %struct.shallow_info* %5, i8** %6) #0 {
  %8 = alloca %struct.fetch_pack_args*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ref*, align 8
  %11 = alloca %struct.ref**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.shallow_info*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.repository*, align 8
  %16 = alloca %struct.ref*, align 8
  %17 = alloca %struct.object_id, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.fetch_negotiator, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.ref* %2, %struct.ref** %10, align 8
  store %struct.ref** %3, %struct.ref*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.shallow_info* %5, %struct.shallow_info** %13, align 8
  store i8** %6, i8*** %14, align 8
  %21 = load %struct.repository*, %struct.repository** @the_repository, align 8
  store %struct.repository* %21, %struct.repository** %15, align 8
  %22 = load %struct.ref*, %struct.ref** %10, align 8
  %23 = call %struct.ref* @copy_ref_list(%struct.ref* %22)
  store %struct.ref* %23, %struct.ref** %16, align 8
  %24 = load %struct.repository*, %struct.repository** %15, align 8
  %25 = call i32 @fetch_negotiator_init(%struct.repository* %24, %struct.fetch_negotiator* %20)
  %26 = load i32, i32* @ref_compare_name, align 4
  %27 = call i32 @sort_ref_list(%struct.ref** %16, i32 %26)
  %28 = load %struct.ref**, %struct.ref*** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @cmp_ref_by_name, align 4
  %31 = call i32 @QSORT(%struct.ref** %28, i32 %29, i32 %30)
  %32 = call i8* @server_feature_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %19)
  store i8* %32, i8** %18, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %7
  store i32 1, i32* @agent_supported, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %39 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %19, align 4
  %41 = load i8*, i8** %18, align 8
  %42 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %38, i8* %39, i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43, %7
  %45 = call i64 @server_supports(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %49 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %48, i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %64

51:                                               ; preds = %44
  %52 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %53 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load %struct.repository*, %struct.repository** %15, align 8
  %58 = call i64 @is_repository_shallow(%struct.repository* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %51
  %61 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 @die(i8* %61)
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %66 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %71 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %76 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69, %64
  %80 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %81 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %74
  %83 = call i64 @server_supports(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %87 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %86, i8* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* @multi_ack, align 4
  %89 = call i64 @server_supports(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %93 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %92, i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %95 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %96 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 1, i32* @no_done, align 4
  br label %100

100:                                              ; preds = %99, %91
  br label %101

101:                                              ; preds = %100, %85
  br label %110

102:                                              ; preds = %82
  %103 = call i64 @server_supports(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %107 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %108 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %106, i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* @multi_ack, align 4
  br label %109

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %101
  %111 = call i64 @server_supports(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %115 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %116 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %114, i8* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 2, i32* @use_sideband, align 4
  br label %125

117:                                              ; preds = %110
  %118 = call i64 @server_supports(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %122 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %121, i8* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* @use_sideband, align 4
  br label %124

124:                                              ; preds = %120, %117
  br label %125

125:                                              ; preds = %124, %113
  %126 = call i64 @server_supports(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %130 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %131 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %129, i8* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %132 = load i32, i32* @ALLOW_TIP_SHA1, align 4
  %133 = load i32, i32* @allow_unadvertised_object_request, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* @allow_unadvertised_object_request, align 4
  br label %135

135:                                              ; preds = %128, %125
  %136 = call i64 @server_supports(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %140 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %141 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %139, i8* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %142 = load i32, i32* @ALLOW_REACHABLE_SHA1, align 4
  %143 = load i32, i32* @allow_unadvertised_object_request, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* @allow_unadvertised_object_request, align 4
  br label %145

145:                                              ; preds = %138, %135
  %146 = call i64 @server_supports(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %150 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %151 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %149, i8* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %155

152:                                              ; preds = %145
  %153 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %154 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %153, i32 0, i32 11
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %148
  %156 = call i64 @server_supports(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %160 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %161 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %159, i8* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %165

162:                                              ; preds = %155
  %163 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %164 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %163, i32 0, i32 10
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %162, %158
  %166 = call i64 @server_supports(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %170 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %171 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %169, i8* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %175

172:                                              ; preds = %165
  %173 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %174 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %173, i32 0, i32 9
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %168
  %176 = call i64 @server_supports(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %180 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %181 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %179, i8* %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %183

182:                                              ; preds = %175
  store i64 0, i64* @prefer_ofs_delta, align 8
  br label %183

183:                                              ; preds = %182, %178
  %184 = call i64 @server_supports(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  store i32 1, i32* @server_supports_filtering, align 4
  %187 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %188 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %189 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %187, i8* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %199

190:                                              ; preds = %183
  %191 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %192 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %191, i32 0, i32 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %190
  br label %199

199:                                              ; preds = %198, %186
  %200 = call i64 @server_supports(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %204 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %205 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %203, i8* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* @deepen_since_ok, align 4
  br label %215

206:                                              ; preds = %199
  %207 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %208 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  %213 = call i32 @die(i8* %212)
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %202
  %216 = call i64 @server_supports(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %220 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %221 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %219, i8* %220, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* @deepen_not_ok, align 4
  br label %231

222:                                              ; preds = %215
  %223 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %224 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %229 = call i32 @die(i8* %228)
  br label %230

230:                                              ; preds = %227, %222
  br label %231

231:                                              ; preds = %230, %218
  %232 = call i64 @server_supports(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %236 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %237 = call i32 (%struct.fetch_pack_args*, i8*, ...) @print_verbose(%struct.fetch_pack_args* %235, i8* %236, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  br label %247

238:                                              ; preds = %231
  %239 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %240 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  %245 = call i32 @die(i8* %244)
  br label %246

246:                                              ; preds = %243, %238
  br label %247

247:                                              ; preds = %246, %234
  %248 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %249 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %268, label %252

252:                                              ; preds = %247
  %253 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %254 = call i32 @mark_complete_and_common_ref(%struct.fetch_negotiator* %20, %struct.fetch_pack_args* %253, %struct.ref** %16)
  %255 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %256 = load %struct.ref**, %struct.ref*** %11, align 8
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @filter_refs(%struct.fetch_pack_args* %255, %struct.ref** %16, %struct.ref** %256, i32 %257)
  %259 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %260 = call i64 @everything_local(%struct.fetch_pack_args* %259, %struct.ref** %16)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %252
  %263 = load i32*, i32** %9, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @packet_flush(i32 %265)
  br label %334

267:                                              ; preds = %252
  br label %273

268:                                              ; preds = %247
  %269 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %270 = load %struct.ref**, %struct.ref*** %11, align 8
  %271 = load i32, i32* %12, align 4
  %272 = call i32 @filter_refs(%struct.fetch_pack_args* %269, %struct.ref** %16, %struct.ref** %270, i32 %271)
  br label %273

273:                                              ; preds = %268, %267
  %274 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %275 = load i32*, i32** %9, align 8
  %276 = load %struct.ref*, %struct.ref** %16, align 8
  %277 = call i64 @find_common(%struct.fetch_negotiator* %20, %struct.fetch_pack_args* %274, i32* %275, %struct.object_id* %17, %struct.ref* %276)
  %278 = icmp slt i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %273
  %280 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %281 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %286 = call i32 @warning(i8* %285)
  br label %287

287:                                              ; preds = %284, %279
  br label %288

288:                                              ; preds = %287, %273
  %289 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %290 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @packet_flush(i32 %296)
  br label %298

298:                                              ; preds = %293, %288
  %299 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %300 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = call i32 @setup_alternate_shallow(i32* @shallow_lock, i32** @alternate_shallow_file, i32* null)
  br label %322

305:                                              ; preds = %298
  %306 = load %struct.shallow_info*, %struct.shallow_info** %13, align 8
  %307 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %305
  %311 = load %struct.shallow_info*, %struct.shallow_info** %13, align 8
  %312 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %310, %305
  %316 = load %struct.shallow_info*, %struct.shallow_info** %13, align 8
  %317 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32* @setup_temporary_shallow(i32 %318)
  store i32* %319, i32** @alternate_shallow_file, align 8
  br label %321

320:                                              ; preds = %310
  store i32* null, i32** @alternate_shallow_file, align 8
  br label %321

321:                                              ; preds = %320, %315
  br label %322

322:                                              ; preds = %321, %303
  %323 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %8, align 8
  %324 = load i32*, i32** %9, align 8
  %325 = load i8**, i8*** %14, align 8
  %326 = load %struct.ref**, %struct.ref*** %11, align 8
  %327 = load i32, i32* %12, align 4
  %328 = call i64 @get_pack(%struct.fetch_pack_args* %323, i32* %324, i8** %325, %struct.ref** %326, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %332 = call i32 @die(i8* %331)
  br label %333

333:                                              ; preds = %330, %322
  br label %334

334:                                              ; preds = %333, %262
  %335 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %20, i32 0, i32 0
  %336 = load i32 (%struct.fetch_negotiator*)*, i32 (%struct.fetch_negotiator*)** %335, align 8
  %337 = call i32 %336(%struct.fetch_negotiator* %20)
  %338 = load %struct.ref*, %struct.ref** %16, align 8
  ret %struct.ref* %338
}

declare dso_local %struct.ref* @copy_ref_list(%struct.ref*) #1

declare dso_local i32 @fetch_negotiator_init(%struct.repository*, %struct.fetch_negotiator*) #1

declare dso_local i32 @sort_ref_list(%struct.ref**, i32) #1

declare dso_local i32 @QSORT(%struct.ref**, i32, i32) #1

declare dso_local i8* @server_feature_value(i8*, i32*) #1

declare dso_local i32 @print_verbose(%struct.fetch_pack_args*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @server_supports(i8*) #1

declare dso_local i64 @is_repository_shallow(%struct.repository*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @mark_complete_and_common_ref(%struct.fetch_negotiator*, %struct.fetch_pack_args*, %struct.ref**) #1

declare dso_local i32 @filter_refs(%struct.fetch_pack_args*, %struct.ref**, %struct.ref**, i32) #1

declare dso_local i64 @everything_local(%struct.fetch_pack_args*, %struct.ref**) #1

declare dso_local i32 @packet_flush(i32) #1

declare dso_local i64 @find_common(%struct.fetch_negotiator*, %struct.fetch_pack_args*, i32*, %struct.object_id*, %struct.ref*) #1

declare dso_local i32 @setup_alternate_shallow(i32*, i32**, i32*) #1

declare dso_local i32* @setup_temporary_shallow(i32) #1

declare dso_local i64 @get_pack(%struct.fetch_pack_args*, i32*, i8**, %struct.ref**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
