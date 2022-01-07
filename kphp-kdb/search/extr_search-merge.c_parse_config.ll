; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster_server = type { i8*, i32, %struct.in_addr, i64 }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i32, i64, i32 }

@fd = common dso_local global i32* null, align 8
@config_buff = common dso_local global i8* null, align 8
@MAX_CONFIG_SIZE = common dso_local global i32 0, align 4
@config_bytes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error reading configuration file %s: %m\0A\00", align 1
@config_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"configuration file %s too long (max %d bytes)\0A\00", align 1
@cfg_start = common dso_local global i8* null, align 8
@cfg_cur = common dso_local global i8* null, align 8
@cfg_end = common dso_local global i64* null, align 8
@cfg_lno = common dso_local global i64 0, align 8
@CSN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"hostname expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hostname too long\00", align 1
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"too many servers in cluster\00", align 1
@CS = common dso_local global %struct.cluster_server* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot resolve hostname\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"':' expected\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"port number expected\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"port number out of range\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"';' expected\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"server #%d: ip %s, port %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"fatal: no cluster servers defined\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cluster_server*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = load i32*, i32** @fd, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** @config_buff, align 8
  %11 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @read(i32 %9, i8* %10, i32 %12)
  store i32 %13, i32* %1, align 4
  store i32 %13, i32* @config_bytes, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %0
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @config_filename, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 2) #4
  unreachable

21:                                               ; preds = %0
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** @config_filename, align 8
  %28 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28)
  %30 = call i32 @exit(i32 2) #4
  unreachable

31:                                               ; preds = %21
  %32 = load i8*, i8** @config_buff, align 8
  store i8* %32, i8** @cfg_start, align 8
  store i8* %32, i8** @cfg_cur, align 8
  %33 = load i8*, i8** @cfg_start, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to i64*
  store i64* %37, i64** @cfg_end, align 8
  %38 = load i64*, i64** @cfg_end, align 8
  store i64 0, i64* %38, align 8
  store i64 0, i64* @cfg_lno, align 8
  store i64 0, i64* @CSN, align 8
  br label %39

39:                                               ; preds = %231, %31
  %40 = call i64 (...) @cfg_skipspc()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %232

42:                                               ; preds = %39
  %43 = load i8*, i8** @cfg_cur, align 8
  store i8* %43, i8** %4, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %91, %42
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 97
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 122
  br i1 %53, label %89, label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %57, 65
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 90
  br i1 %63, label %89, label %64

64:                                               ; preds = %59, %54
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 48
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %4, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 57
  br i1 %73, label %89, label %74

74:                                               ; preds = %69, %64
  %75 = load i8*, i8** %4, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 45
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 95
  br label %89

89:                                               ; preds = %84, %79, %74, %69, %59, %49
  %90 = phi i1 [ true, %79 ], [ true, %74 ], [ true, %69 ], [ true, %59 ], [ true, %49 ], [ %88, %84 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %4, align 8
  br label %44

94:                                               ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @syntax(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %239

100:                                              ; preds = %94
  %101 = load i8*, i8** %4, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 63
  %104 = icmp ugt i8* %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 @syntax(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %239

107:                                              ; preds = %100
  %108 = load i8*, i8** %4, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  store i32 %110, i32* %2, align 4
  %111 = load i8*, i8** %4, align 8
  store i8 0, i8* %111, align 1
  %112 = load i64, i64* @CSN, align 8
  %113 = load i64, i64* @MAX_CLUSTER_SERVERS, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 @syntax(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %239

117:                                              ; preds = %107
  %118 = load %struct.cluster_server*, %struct.cluster_server** @CS, align 8
  %119 = load i64, i64* @CSN, align 8
  %120 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %118, i64 %119
  store %struct.cluster_server* %120, %struct.cluster_server** %5, align 8
  %121 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %122 = call i32 @memset(%struct.cluster_server* %121, i32 0, i32 24)
  %123 = load i64, i64* @CSN, align 8
  %124 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %125 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %128 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %130 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %129, i32 0, i32 1
  store i32 -1, i32* %130, align 8
  %131 = load i8*, i8** %3, align 8
  %132 = call %struct.hostent* @gethostbyname(i8* %131)
  store %struct.hostent* %132, %struct.hostent** %6, align 8
  %133 = icmp ne %struct.hostent* %132, null
  br i1 %133, label %134, label %155

134:                                              ; preds = %117
  %135 = load %struct.hostent*, %struct.hostent** %6, align 8
  %136 = getelementptr inbounds %struct.hostent, %struct.hostent* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AF_INET, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %155, label %140

140:                                              ; preds = %134
  %141 = load %struct.hostent*, %struct.hostent** %6, align 8
  %142 = getelementptr inbounds %struct.hostent, %struct.hostent* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 4
  br i1 %144, label %155, label %145

145:                                              ; preds = %140
  %146 = load %struct.hostent*, %struct.hostent** %6, align 8
  %147 = getelementptr inbounds %struct.hostent, %struct.hostent* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.hostent*, %struct.hostent** %6, align 8
  %152 = getelementptr inbounds %struct.hostent, %struct.hostent* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %150, %145, %140, %134, %117
  %156 = call i32 @syntax(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %239

157:                                              ; preds = %150
  %158 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %159 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %158, i32 0, i32 2
  %160 = load %struct.hostent*, %struct.hostent** %6, align 8
  %161 = getelementptr inbounds %struct.hostent, %struct.hostent* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.in_addr*
  %164 = bitcast %struct.in_addr* %159 to i8*
  %165 = bitcast %struct.in_addr* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 4, i1 false)
  %166 = load i8*, i8** %4, align 8
  store i8* %166, i8** %3, align 8
  store i8* %166, i8** @cfg_cur, align 8
  %167 = load i32, i32* %2, align 4
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %4, align 8
  store i8 %168, i8* %169, align 1
  %170 = call signext i8 (...) @cfg_skspc()
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 58
  br i1 %172, label %173, label %175

173:                                              ; preds = %157
  %174 = call i32 @syntax(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %157
  %176 = load i8*, i8** @cfg_cur, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** @cfg_cur, align 8
  %178 = call signext i8 (...) @cfg_skspc()
  %179 = load i8*, i8** @cfg_cur, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp slt i32 %181, 48
  br i1 %182, label %188, label %183

183:                                              ; preds = %175
  %184 = load i8*, i8** @cfg_cur, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp sgt i32 %186, 57
  br i1 %187, label %188, label %190

188:                                              ; preds = %183, %175
  %189 = call i32 @syntax(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %183
  %191 = load i8*, i8** @cfg_cur, align 8
  %192 = call i32 @strtol(i8* %191, i8** @cfg_cur, i32 10)
  %193 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %194 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  %195 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %196 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp sle i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %190
  %200 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %201 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp sge i32 %202, 65536
  br i1 %203, label %204, label %206

204:                                              ; preds = %199, %190
  %205 = call i32 @syntax(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %199
  %207 = call signext i8 (...) @cfg_skspc()
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 59
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 @syntax(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i8*, i8** @cfg_cur, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** @cfg_cur, align 8
  %215 = load i64, i64* @CSN, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* @CSN, align 8
  %217 = load i64, i64* @verbosity, align 8
  %218 = icmp sgt i64 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %212
  %220 = load i32, i32* @stderr, align 4
  %221 = load i64, i64* @CSN, align 8
  %222 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %223 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @inet_ntoa(i32 %225)
  %227 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  %228 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %221, i8* %226, i32 %229)
  br label %231

231:                                              ; preds = %219, %212
  br label %39

232:                                              ; preds = %39
  %233 = load i64, i64* @CSN, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* @stderr, align 4
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %236, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %238 = call i32 @exit(i32 1) #4
  unreachable

239:                                              ; preds = %98, %105, %115, %155, %232
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @cfg_skipspc(...) #1

declare dso_local i32 @syntax(i8*) #1

declare dso_local i32 @memset(%struct.cluster_server*, i32, i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local signext i8 @cfg_skspc(...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
