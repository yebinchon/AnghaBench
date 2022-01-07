; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_get_counter_serialized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_get_counter_serialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsx_gather_extra = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_CITIES = common dso_local global i32 0, align 4
@Q_raw = common dso_local global i64 0, align 8
@Q_bad_servers = common dso_local global i64 0, align 8
@MAX_AGE = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@MAX_SEX_AGE = common dso_local global i32 0, align 4
@MAX_COUNTRIES = common dso_local global i32 0, align 4
@MAX_GEOIP_COUNTRIES = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4
@MAX_SUBCOUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [135 x i8] c"a:%d:{s:5:\22views\22;i:%d;s:8:\22visitors\22;i:%d;s:7:\22deletes\22;i:%d;s:7:\22created\22;i:%d;s:7:\22expires\22;i:%d;s:3:\22sex\22;a:2:{i:1;i:%d;i:2;i:%d;}\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"s:11:\22bad_servers\22;i:%d;\00", align 1
@bad_servers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"marital_status\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"political_views\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sex_age\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cities\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"countries\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"geoip_countries\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"sources\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_counter_serialized(i8* %0, %struct.statsx_gather_extra* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.statsx_gather_extra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.statsx_gather_extra* %1, %struct.statsx_gather_extra** %5, align 8
  %8 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %9 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MAX_CITIES, align 4
  %12 = call i32 @prepare_list2_raw_new(i32 %10, i32 %11)
  %13 = load i64, i64* @Q_raw, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %18 = call i32 @get_counter_serialized_raw(i8* %16, %struct.statsx_gather_extra* %17)
  store i32 %18, i32* %3, align 4
  br label %242

19:                                               ; preds = %2
  %20 = load i64, i64* @Q_bad_servers, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = add nsw i32 6, %22
  store i32 %23, i32* %6, align 4
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %26 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX_AGE, align 4
  %29 = call i32 @is_null(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %36 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAX_MSTATUS, align 4
  %39 = call i32 @is_null(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %46 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MAX_POLIT, align 4
  %49 = call i32 @is_null(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %56 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_SECTION, align 4
  %59 = call i32 @is_null(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %66 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAX_CITIES, align 4
  %69 = mul nsw i32 2, %68
  %70 = call i32 @is_null_new(i32 %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %64
  %76 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %77 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MAX_SEX_AGE, align 4
  %80 = call i32 @is_null(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %87 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MAX_COUNTRIES, align 4
  %90 = mul nsw i32 2, %89
  %91 = call i32 @is_null(i32 %88, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %85
  %97 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %98 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAX_GEOIP_COUNTRIES, align 4
  %101 = mul nsw i32 2, %100
  %102 = call i32 @is_null(i32 %99, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %96
  %108 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %109 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MAX_SOURCE, align 4
  %112 = call i32 @is_null(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %119 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %118, i32 0, i32 15
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MAX_SUBCOUNTER, align 4
  %122 = call i32 @is_null(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %117
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %131 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %134 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %137 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %140 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %143 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %146 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %151 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %128, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %132, i32 %135, i32 %138, i32 %141, i32 %144, i32 %149, i32 %154)
  %156 = load i8*, i8** %7, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %7, align 8
  %159 = load i64, i64* @Q_bad_servers, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %127
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* @bad_servers, align 4
  %164 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** %7, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %7, align 8
  br label %168

168:                                              ; preds = %161, %127
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %171 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %170, i32 0, i32 14
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @MAX_AGE, align 4
  %174 = call i8* @serialize_list(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %173)
  store i8* %174, i8** %7, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %177 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %176, i32 0, i32 13
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MAX_MSTATUS, align 4
  %180 = call i8* @serialize_list(i8* %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %179)
  store i8* %180, i8** %7, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %183 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MAX_POLIT, align 4
  %186 = call i8* @serialize_list(i8* %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %184, i32 %185)
  store i8* %186, i8** %7, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %189 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %188, i32 0, i32 11
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @MAX_SECTION, align 4
  %192 = call i8* @serialize_list(i8* %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %190, i32 %191)
  store i8* %192, i8** %7, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %195 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @MAX_SEX_AGE, align 4
  %198 = call i8* @serialize_list(i8* %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %196, i32 %197)
  store i8* %198, i8** %7, align 8
  %199 = load i8*, i8** %7, align 8
  %200 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %201 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @MAX_CITIES, align 4
  %204 = call i8* @serialize_list2_new(i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %203)
  store i8* %204, i8** %7, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %207 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @MAX_COUNTRIES, align 4
  %210 = call i8* @serialize_list2a(i8* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %208, i32 %209)
  store i8* %210, i8** %7, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %213 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @MAX_GEOIP_COUNTRIES, align 4
  %216 = call i8* @serialize_list2a(i8* %211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %214, i32 %215)
  store i8* %216, i8** %7, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %219 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @MAX_SOURCE, align 4
  %222 = call i8* @serialize_list(i8* %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %220, i32 %221)
  store i8* %222, i8** %7, align 8
  %223 = load i8*, i8** %7, align 8
  %224 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %5, align 8
  %225 = call i8* @serialize_subcnt_list(i8* %223, %struct.statsx_gather_extra* %224)
  store i8* %225, i8** %7, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %7, align 8
  store i8 125, i8* %226, align 1
  %228 = load i8*, i8** %7, align 8
  store i8 0, i8* %228, align 1
  %229 = load i32, i32* @verbosity, align 4
  %230 = icmp sge i32 %229, 4
  br i1 %230, label %231, label %235

231:                                              ; preds = %168
  %232 = load i32, i32* @stderr, align 4
  %233 = load i8*, i8** %4, align 8
  %234 = call i32 @fprintf(i32 %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %231, %168
  %236 = load i8*, i8** %7, align 8
  %237 = load i8*, i8** %4, align 8
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %235, %15
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @prepare_list2_raw_new(i32, i32) #1

declare dso_local i32 @get_counter_serialized_raw(i8*, %struct.statsx_gather_extra*) #1

declare dso_local i32 @is_null(i32, i32) #1

declare dso_local i32 @is_null_new(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i8* @serialize_list(i8*, i8*, i32, i32) #1

declare dso_local i8* @serialize_list2_new(i8*, i8*, i32, i32) #1

declare dso_local i8* @serialize_list2a(i8*, i8*, i32, i32) #1

declare dso_local i8* @serialize_subcnt_list(i8*, %struct.statsx_gather_extra*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
