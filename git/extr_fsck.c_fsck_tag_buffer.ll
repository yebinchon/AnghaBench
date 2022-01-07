; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_tag_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_tag_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.tag = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fsck_options = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@FSCK_MSG_MISSING_TAG_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot read tag object\00", align 1
@OBJ_TAG = common dso_local global i32 0, align 4
@FSCK_MSG_TAG_OBJECT_NOT_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"expected tag got %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"object \00", align 1
@FSCK_MSG_MISSING_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"invalid format - expected 'object' line\00", align 1
@FSCK_MSG_BAD_OBJECT_SHA1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"invalid 'object' line format - bad sha1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@FSCK_MSG_MISSING_TYPE_ENTRY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"invalid format - expected 'type' line\00", align 1
@FSCK_MSG_MISSING_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"invalid format - unexpected end after 'type' line\00", align 1
@FSCK_MSG_BAD_TYPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"invalid 'type' value\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tag \00", align 1
@FSCK_MSG_MISSING_TAG_ENTRY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"invalid format - expected 'tag' line\00", align 1
@FSCK_MSG_MISSING_TAG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"refs/tags/%.*s\00", align 1
@FSCK_MSG_BAD_TAG_NAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid 'tag' name: %.*s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"tagger \00", align 1
@FSCK_MSG_MISSING_TAGGER_ENTRY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"invalid format - expected 'tagger' line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tag*, i8*, i64, %struct.fsck_options*)* @fsck_tag_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_tag_buffer(%struct.tag* %0, i8* %1, i64 %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tag*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fsck_options*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.tag* %0, %struct.tag** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %18 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %12, align 8
  br label %49

23:                                               ; preds = %4
  %24 = load %struct.tag*, %struct.tag** %6, align 8
  %25 = getelementptr inbounds %struct.tag, %struct.tag* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i8* @read_object_file(i32* %26, i32* %17, i64* %8)
  store i8* %27, i8** %13, align 8
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %32 = load %struct.tag*, %struct.tag** %6, align 8
  %33 = getelementptr inbounds %struct.tag, %struct.tag* %32, i32 0, i32 0
  %34 = load i32, i32* @FSCK_MSG_MISSING_TAG_OBJECT, align 4
  %35 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %31, %struct.TYPE_4__* %33, i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %5, align 4
  br label %211

36:                                               ; preds = %23
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @OBJ_TAG, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %42 = load %struct.tag*, %struct.tag** %6, align 8
  %43 = getelementptr inbounds %struct.tag, %struct.tag* %42, i32 0, i32 0
  %44 = load i32, i32* @FSCK_MSG_TAG_OBJECT_NOT_TAG, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @type_name(i32 %45)
  %47 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %41, %struct.TYPE_4__* %43, i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %11, align 4
  br label %206

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.tag*, %struct.tag** %6, align 8
  %53 = getelementptr inbounds %struct.tag, %struct.tag* %52, i32 0, i32 0
  %54 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %55 = call i32 @verify_headers(i8* %50, i64 %51, %struct.TYPE_4__* %53, %struct.fsck_options* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %206

59:                                               ; preds = %49
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @skip_prefix(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %12)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %65 = load %struct.tag*, %struct.tag** %6, align 8
  %66 = getelementptr inbounds %struct.tag, %struct.tag* %65, i32 0, i32 0
  %67 = load i32, i32* @FSCK_MSG_MISSING_OBJECT, align 4
  %68 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %64, %struct.TYPE_4__* %66, i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 %68, i32* %11, align 4
  br label %206

69:                                               ; preds = %59
  %70 = load i8*, i8** %12, align 8
  %71 = call i64 @parse_oid_hex(i8* %70, %struct.object_id* %10, i8** %16)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %16, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 10
  br i1 %77, label %78, label %88

78:                                               ; preds = %73, %69
  %79 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %80 = load %struct.tag*, %struct.tag** %6, align 8
  %81 = getelementptr inbounds %struct.tag, %struct.tag* %80, i32 0, i32 0
  %82 = load i32, i32* @FSCK_MSG_BAD_OBJECT_SHA1, align 4
  %83 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %79, %struct.TYPE_4__* %81, i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %206

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i8*, i8** %16, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @skip_prefix(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %12)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %96 = load %struct.tag*, %struct.tag** %6, align 8
  %97 = getelementptr inbounds %struct.tag, %struct.tag* %96, i32 0, i32 0
  %98 = load i32, i32* @FSCK_MSG_MISSING_TYPE_ENTRY, align 4
  %99 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %95, %struct.TYPE_4__* %97, i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 %99, i32* %11, align 4
  br label %206

100:                                              ; preds = %88
  %101 = load i8*, i8** %12, align 8
  %102 = call i8* @strchr(i8* %101, i8 signext 10)
  store i8* %102, i8** %14, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %107 = load %struct.tag*, %struct.tag** %6, align 8
  %108 = getelementptr inbounds %struct.tag, %struct.tag* %107, i32 0, i32 0
  %109 = load i32, i32* @FSCK_MSG_MISSING_TYPE, align 4
  %110 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %106, %struct.TYPE_4__* %108, i32 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  store i32 %110, i32* %11, align 4
  br label %206

111:                                              ; preds = %100
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i64 @type_from_string_gently(i8* %112, i32 %118, i32 1)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %123 = load %struct.tag*, %struct.tag** %6, align 8
  %124 = getelementptr inbounds %struct.tag, %struct.tag* %123, i32 0, i32 0
  %125 = load i32, i32* @FSCK_MSG_BAD_TYPE, align 4
  %126 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %122, %struct.TYPE_4__* %124, i32 %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %121, %111
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %206

131:                                              ; preds = %127
  %132 = load i8*, i8** %14, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  store i8* %133, i8** %12, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 @skip_prefix(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %12)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %139 = load %struct.tag*, %struct.tag** %6, align 8
  %140 = getelementptr inbounds %struct.tag, %struct.tag* %139, i32 0, i32 0
  %141 = load i32, i32* @FSCK_MSG_MISSING_TAG_ENTRY, align 4
  %142 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %138, %struct.TYPE_4__* %140, i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  store i32 %142, i32* %11, align 4
  br label %206

143:                                              ; preds = %131
  %144 = load i8*, i8** %12, align 8
  %145 = call i8* @strchr(i8* %144, i8 signext 10)
  store i8* %145, i8** %14, align 8
  %146 = load i8*, i8** %14, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %150 = load %struct.tag*, %struct.tag** %6, align 8
  %151 = getelementptr inbounds %struct.tag, %struct.tag* %150, i32 0, i32 0
  %152 = load i32, i32* @FSCK_MSG_MISSING_TAG, align 4
  %153 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %149, %struct.TYPE_4__* %151, i32 %152, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  store i32 %153, i32* %11, align 4
  br label %206

154:                                              ; preds = %143
  %155 = load i8*, i8** %14, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = load i8*, i8** %12, align 8
  %162 = call i32 @strbuf_addf(%struct.strbuf* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %160, i8* %161)
  %163 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @check_refname_format(i32 %164, i32 0)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %154
  %168 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %169 = load %struct.tag*, %struct.tag** %6, align 8
  %170 = getelementptr inbounds %struct.tag, %struct.tag* %169, i32 0, i32 0
  %171 = load i32, i32* @FSCK_MSG_BAD_TAG_NAME, align 4
  %172 = load i8*, i8** %14, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %168, %struct.TYPE_4__* %170, i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %177, i8* %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %167
  br label %206

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183, %154
  %185 = load i8*, i8** %14, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %12, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 @skip_prefix(i8* %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %12)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %184
  %191 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %192 = load %struct.tag*, %struct.tag** %6, align 8
  %193 = getelementptr inbounds %struct.tag, %struct.tag* %192, i32 0, i32 0
  %194 = load i32, i32* @FSCK_MSG_MISSING_TAGGER_ENTRY, align 4
  %195 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %191, %struct.TYPE_4__* %193, i32 %194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %206

199:                                              ; preds = %190
  br label %205

200:                                              ; preds = %184
  %201 = load %struct.tag*, %struct.tag** %6, align 8
  %202 = getelementptr inbounds %struct.tag, %struct.tag* %201, i32 0, i32 0
  %203 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %204 = call i32 @fsck_ident(i8** %12, %struct.TYPE_4__* %202, %struct.fsck_options* %203)
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %200, %199
  br label %206

206:                                              ; preds = %205, %198, %182, %148, %137, %130, %105, %94, %86, %63, %58, %40
  %207 = call i32 @strbuf_release(%struct.strbuf* %15)
  %208 = load i8*, i8** %13, align 8
  %209 = call i32 @free(i8* %208)
  %210 = load i32, i32* %11, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %206, %30
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #2

declare dso_local i32 @report(%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) #2

declare dso_local i32 @type_name(i32) #2

declare dso_local i32 @verify_headers(i8*, i64, %struct.TYPE_4__*, %struct.fsck_options*) #2

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @type_from_string_gently(i8*, i32, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i64 @check_refname_format(i32, i32) #2

declare dso_local i32 @fsck_ident(i8**, %struct.TYPE_4__*, %struct.fsck_options*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
