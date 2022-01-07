; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32, %struct.in_addr }
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
@CSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"hostname expected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hostname too long\00", align 1
@MAX_CLUSTER_SERVERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"too many servers in cluster\00", align 1
@rpc_default_ct = common dso_local global %struct.conn_target zeroinitializer, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot resolve hostname\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"':' expected\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"port number expected\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"port number out of range\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"';' expected\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"server #%d: ip %s, port %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"duplicate hostname:port\00", align 1
@CS = common dso_local global %struct.conn_target** null, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"fatal: no cluster servers defined\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.conn_target*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i32, align 4
  %8 = load i32*, i32** @fd, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** @config_buff, align 8
  %12 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @read(i32 %10, i8* %11, i32 %13)
  store i32 %14, i32* %1, align 4
  store i32 %14, i32* @config_bytes, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** @config_filename, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 2) #4
  unreachable

22:                                               ; preds = %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** @config_filename, align 8
  %29 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  %31 = call i32 @exit(i32 2) #4
  unreachable

32:                                               ; preds = %22
  %33 = load i8*, i8** @config_buff, align 8
  store i8* %33, i8** @cfg_start, align 8
  store i8* %33, i8** @cfg_cur, align 8
  %34 = load i8*, i8** @cfg_start, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = bitcast i8* %37 to i64*
  store i64* %38, i64** @cfg_end, align 8
  %39 = load i64*, i64** @cfg_end, align 8
  store i64 0, i64* %39, align 8
  store i64 0, i64* @cfg_lno, align 8
  store i32 0, i32* @CSN, align 4
  br label %40

40:                                               ; preds = %226, %32
  %41 = call i64 (...) @cfg_skipspc()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %234

43:                                               ; preds = %40
  %44 = load i8*, i8** @cfg_cur, align 8
  store i8* %44, i8** %4, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %92, %43
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 97
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 122
  br i1 %54, label %90, label %55

55:                                               ; preds = %50, %45
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 65
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %63, 90
  br i1 %64, label %90, label %65

65:                                               ; preds = %60, %55
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 48
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %73, 57
  br i1 %74, label %90, label %75

75:                                               ; preds = %70, %65
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 45
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 95
  br label %90

90:                                               ; preds = %85, %80, %75, %70, %60, %50
  %91 = phi i1 [ true, %80 ], [ true, %75 ], [ true, %70 ], [ true, %60 ], [ true, %50 ], [ %89, %85 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %4, align 8
  br label %45

95:                                               ; preds = %90
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @syntax(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %241

101:                                              ; preds = %95
  %102 = load i8*, i8** %4, align 8
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 63
  %105 = icmp ugt i8* %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @syntax(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %241

108:                                              ; preds = %101
  %109 = load i8*, i8** %4, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  store i32 %111, i32* %2, align 4
  %112 = load i8*, i8** %4, align 8
  store i8 0, i8* %112, align 1
  %113 = load i32, i32* @CSN, align 4
  %114 = load i32, i32* @MAX_CLUSTER_SERVERS, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = call i32 @syntax(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %241

118:                                              ; preds = %108
  store %struct.conn_target* @rpc_default_ct, %struct.conn_target** %5, align 8
  %119 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %120 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 4
  %121 = load i8*, i8** %3, align 8
  %122 = call %struct.hostent* @kdb_gethostbyname(i8* %121)
  store %struct.hostent* %122, %struct.hostent** %6, align 8
  %123 = icmp ne %struct.hostent* %122, null
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = load %struct.hostent*, %struct.hostent** %6, align 8
  %126 = getelementptr inbounds %struct.hostent, %struct.hostent* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AF_INET, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %145, label %130

130:                                              ; preds = %124
  %131 = load %struct.hostent*, %struct.hostent** %6, align 8
  %132 = getelementptr inbounds %struct.hostent, %struct.hostent* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 4
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.hostent*, %struct.hostent** %6, align 8
  %137 = getelementptr inbounds %struct.hostent, %struct.hostent* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.hostent*, %struct.hostent** %6, align 8
  %142 = getelementptr inbounds %struct.hostent, %struct.hostent* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %140, %135, %130, %124, %118
  %146 = call i32 @syntax(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %241

147:                                              ; preds = %140
  %148 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %149 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %148, i32 0, i32 1
  %150 = load %struct.hostent*, %struct.hostent** %6, align 8
  %151 = getelementptr inbounds %struct.hostent, %struct.hostent* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to %struct.in_addr*
  %154 = bitcast %struct.in_addr* %149 to i8*
  %155 = bitcast %struct.in_addr* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 4 %155, i64 4, i1 false)
  %156 = load i8*, i8** %4, align 8
  store i8* %156, i8** %3, align 8
  store i8* %156, i8** @cfg_cur, align 8
  %157 = load i32, i32* %2, align 4
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %4, align 8
  store i8 %158, i8* %159, align 1
  %160 = call signext i8 (...) @cfg_skspc()
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 58
  br i1 %162, label %163, label %165

163:                                              ; preds = %147
  %164 = call i32 @syntax(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %147
  %166 = load i8*, i8** @cfg_cur, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** @cfg_cur, align 8
  %168 = call signext i8 (...) @cfg_skspc()
  %169 = load i8*, i8** @cfg_cur, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp slt i32 %171, 48
  br i1 %172, label %178, label %173

173:                                              ; preds = %165
  %174 = load i8*, i8** @cfg_cur, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp sgt i32 %176, 57
  br i1 %177, label %178, label %180

178:                                              ; preds = %173, %165
  %179 = call i32 @syntax(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %173
  %181 = load i8*, i8** @cfg_cur, align 8
  %182 = call i32 @strtol(i8* %181, i8** @cfg_cur, i32 10)
  %183 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %184 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %186 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %180
  %190 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %191 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp sge i32 %192, 65536
  br i1 %193, label %194, label %196

194:                                              ; preds = %189, %180
  %195 = call i32 @syntax(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %189
  %197 = call signext i8 (...) @cfg_skspc()
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 59
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = call i32 @syntax(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %196
  %203 = load i8*, i8** @cfg_cur, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** @cfg_cur, align 8
  %205 = load i64, i64* @verbosity, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %202
  %208 = load i32, i32* @stderr, align 4
  %209 = load i32, i32* @CSN, align 4
  %210 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %211 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @inet_ntoa(i32 %213)
  %215 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %216 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %209, i8* %214, i32 %217)
  br label %219

219:                                              ; preds = %207, %202
  store i32 -1, i32* %7, align 4
  %220 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %221 = call %struct.conn_target* @create_target(%struct.conn_target* %220, i32* %7)
  store %struct.conn_target* %221, %struct.conn_target** %5, align 8
  %222 = load i32, i32* %7, align 4
  %223 = icmp sle i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = call i32 @syntax(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %219
  %227 = load %struct.conn_target*, %struct.conn_target** %5, align 8
  %228 = load %struct.conn_target**, %struct.conn_target*** @CS, align 8
  %229 = load i32, i32* @CSN, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %228, i64 %230
  store %struct.conn_target* %227, %struct.conn_target** %231, align 8
  %232 = load i32, i32* @CSN, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @CSN, align 4
  br label %40

234:                                              ; preds = %40
  %235 = load i32, i32* @CSN, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* @stderr, align 4
  %239 = call i32 (i32, i8*, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %240 = call i32 @exit(i32 1) #4
  unreachable

241:                                              ; preds = %99, %106, %116, %145, %234
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @cfg_skipspc(...) #1

declare dso_local i32 @syntax(i8*) #1

declare dso_local %struct.hostent* @kdb_gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local signext i8 @cfg_skspc(...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local %struct.conn_target* @create_target(%struct.conn_target*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
