; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_receive_needs.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_receive_needs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i64 }
%struct.string_list = type { i32 }
%struct.packet_reader = type { i32 }
%struct.packet_writer = type { i32 }
%struct.object = type { i32 }
%struct.object_id = type { i32 }

@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 8
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@shallow_nr = common dso_local global i64 0, align 8
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"filter \00", align 1
@filter_capability_requested = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"git upload-pack: filtering capability not negotiated\00", align 1
@filter_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"want \00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"git upload-pack: protocol error, expected to get object ID, not '%s'\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"deepen-relative\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"multi_ack_detailed\00", align 1
@multi_ack = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"multi_ack\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"no-done\00", align 1
@no_done = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"thin-pack\00", align 1
@use_thin_pack = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"ofs-delta\00", align 1
@use_ofs_delta = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"side-band-64k\00", align 1
@LARGE_PACKET_MAX = common dso_local global i32 0, align 4
@use_sideband = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"side-band\00", align 1
@DEFAULT_PACKET_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@no_progress = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"include-tag\00", align 1
@use_include_tag = common dso_local global i32 0, align 4
@allow_filter = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"upload-pack: not our ref %s\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"git upload-pack: not our ref %s\00", align 1
@WANTED = common dso_local global i32 0, align 4
@allow_unadvertised_object_request = common dso_local global i32 0, align 4
@ALLOW_ANY_SHA1 = common dso_local global i32 0, align 4
@daemon_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_reader*, %struct.object_array*)* @receive_needs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_needs(%struct.packet_reader* %0, %struct.object_array* %1) #0 {
  %3 = alloca %struct.packet_reader*, align 8
  %4 = alloca %struct.object_array*, align 8
  %5 = alloca %struct.object_array, align 8
  %6 = alloca %struct.string_list, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.packet_writer, align 4
  %13 = alloca %struct.object*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.object_id, align 4
  %16 = alloca i8*, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %3, align 8
  store %struct.object_array* %1, %struct.object_array** %4, align 8
  %17 = bitcast %struct.object_array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.string_list* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* @shallow_nr, align 8
  %19 = call i32 @packet_writer_init(%struct.packet_writer* %12, i32 1)
  br label %20

20:                                               ; preds = %184, %66, %54, %47, %40, %33, %2
  %21 = call i32 (...) @reset_timeout()
  %22 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %23 = call i64 @packet_reader_read(%struct.packet_reader* %22)
  %24 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %185

27:                                               ; preds = %20
  %28 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %29 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @process_shallow(i32 %30, %struct.object_array* %5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %20

34:                                               ; preds = %27
  %35 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %36 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @process_deepen(i32 %37, i32* %7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %20

41:                                               ; preds = %34
  %42 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %43 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @process_deepen_since(i32 %44, i32* %9, i32* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %20

48:                                               ; preds = %41
  %49 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %50 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @process_deepen_not(i32 %51, %struct.string_list* %6, i32* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %20

55:                                               ; preds = %48
  %56 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %57 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @skip_prefix(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %16)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* @filter_capability_requested, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = call i32 @list_objects_filter_die_if_populated(i32* @filter_options)
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @parse_list_objects_filter(i32* @filter_options, i8* %68)
  br label %20

70:                                               ; preds = %55
  %71 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %72 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @skip_prefix(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %16)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** %16, align 8
  %78 = call i64 @parse_oid_hex(i8* %77, %struct.object_id* %15, i8** %14)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %70
  %81 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %82 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i8*, i8** %14, align 8
  %87 = call i64 @parse_feature_request(i8* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %85
  %91 = load i8*, i8** %14, align 8
  %92 = call i64 @parse_feature_request(i8* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 2, i32* @multi_ack, align 4
  br label %101

95:                                               ; preds = %90
  %96 = load i8*, i8** %14, align 8
  %97 = call i64 @parse_feature_request(i8* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 1, i32* @multi_ack, align 4
  br label %100

100:                                              ; preds = %99, %95
  br label %101

101:                                              ; preds = %100, %94
  %102 = load i8*, i8** %14, align 8
  %103 = call i64 @parse_feature_request(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, i32* @no_done, align 4
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i8*, i8** %14, align 8
  %108 = call i64 @parse_feature_request(i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* @use_thin_pack, align 4
  br label %111

111:                                              ; preds = %110, %106
  %112 = load i8*, i8** %14, align 8
  %113 = call i64 @parse_feature_request(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 1, i32* @use_ofs_delta, align 4
  br label %116

116:                                              ; preds = %115, %111
  %117 = load i8*, i8** %14, align 8
  %118 = call i64 @parse_feature_request(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @LARGE_PACKET_MAX, align 4
  store i32 %121, i32* @use_sideband, align 4
  br label %129

122:                                              ; preds = %116
  %123 = load i8*, i8** %14, align 8
  %124 = call i64 @parse_feature_request(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @DEFAULT_PACKET_MAX, align 4
  store i32 %127, i32* @use_sideband, align 4
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128, %120
  %130 = load i8*, i8** %14, align 8
  %131 = call i64 @parse_feature_request(i8* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 1, i32* @no_progress, align 4
  br label %134

134:                                              ; preds = %133, %129
  %135 = load i8*, i8** %14, align 8
  %136 = call i64 @parse_feature_request(i8* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 1, i32* @use_include_tag, align 4
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i64, i64* @allow_filter, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i8*, i8** %14, align 8
  %144 = call i64 @parse_feature_request(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 1, i32* @filter_capability_requested, align 4
  br label %147

147:                                              ; preds = %146, %142, %139
  %148 = load i32, i32* @the_repository, align 4
  %149 = call %struct.object* @parse_object(i32 %148, %struct.object_id* %15)
  store %struct.object* %149, %struct.object** %13, align 8
  %150 = load %struct.object*, %struct.object** %13, align 8
  %151 = icmp ne %struct.object* %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = call i32 @oid_to_hex(%struct.object_id* %15)
  %154 = call i32 @packet_writer_error(%struct.packet_writer* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %153)
  %155 = call i32 @oid_to_hex(%struct.object_id* %15)
  %156 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.object*, %struct.object** %13, align 8
  %159 = getelementptr inbounds %struct.object, %struct.object* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @WANTED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %157
  %165 = load i32, i32* @WANTED, align 4
  %166 = load %struct.object*, %struct.object** %13, align 8
  %167 = getelementptr inbounds %struct.object, %struct.object* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* @allow_unadvertised_object_request, align 4
  %171 = load i32, i32* @ALLOW_ANY_SHA1, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @ALLOW_ANY_SHA1, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %164
  %176 = load %struct.object*, %struct.object** %13, align 8
  %177 = call i64 @is_our_ref(%struct.object* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  store i32 1, i32* %8, align 4
  br label %180

180:                                              ; preds = %179, %175, %164
  %181 = load %struct.object*, %struct.object** %13, align 8
  %182 = load %struct.object_array*, %struct.object_array** %4, align 8
  %183 = call i32 @add_object_array(%struct.object* %181, i32* null, %struct.object_array* %182)
  br label %184

184:                                              ; preds = %180, %157
  br label %20

185:                                              ; preds = %26
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.object_array*, %struct.object_array** %4, align 8
  %190 = call i32 @check_non_tip(%struct.object_array* %189, %struct.packet_writer* %12)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* @use_sideband, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load i64, i64* @daemon_mode, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 1, i32* @no_progress, align 4
  br label %198

198:                                              ; preds = %197, %194, %191
  %199 = load i32, i32* %7, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %221

209:                                              ; preds = %204, %201, %198
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.object_array*, %struct.object_array** %4, align 8
  %215 = call i64 @send_shallow_list(%struct.packet_writer* %12, i32 %210, i32 %211, i32 %212, %struct.string_list* %6, i32 %213, %struct.object_array* %5, %struct.object_array* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = call i32 @packet_flush(i32 1)
  br label %219

219:                                              ; preds = %217, %209
  %220 = call i32 @object_array_clear(%struct.object_array* %5)
  br label %221

221:                                              ; preds = %219, %208
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @packet_writer_init(%struct.packet_writer*, i32) #2

declare dso_local i32 @reset_timeout(...) #2

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #2

declare dso_local i64 @process_shallow(i32, %struct.object_array*) #2

declare dso_local i64 @process_deepen(i32, i32*) #2

declare dso_local i64 @process_deepen_since(i32, i32*, i32*) #2

declare dso_local i64 @process_deepen_not(i32, %struct.string_list*, i32*) #2

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @list_objects_filter_die_if_populated(i32*) #2

declare dso_local i32 @parse_list_objects_filter(i32*, i8*) #2

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #2

declare dso_local i64 @parse_feature_request(i8*, i8*) #2

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #2

declare dso_local i32 @packet_writer_error(%struct.packet_writer*, i8*, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @is_our_ref(%struct.object*) #2

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #2

declare dso_local i32 @check_non_tip(%struct.object_array*, %struct.packet_writer*) #2

declare dso_local i64 @send_shallow_list(%struct.packet_writer*, i32, i32, i32, %struct.string_list*, i32, %struct.object_array*, %struct.object_array*) #2

declare dso_local i32 @packet_flush(i32) #2

declare dso_local i32 @object_array_clear(%struct.object_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
