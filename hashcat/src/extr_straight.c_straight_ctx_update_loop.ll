; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_straight.c_straight_ctx_update_loop.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_straight.c_straight_ctx_update_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32*, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_12__ = type { i64, i64, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32*, i64 }
%struct.TYPE_19__ = type { i64, i32, i32 }

@ATTACK_MODE_STRAIGHT = common dso_local global i64 0, align 8
@WL_MODE_FILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"rulefile\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Integer overflow detected in keyspace of wordlist: %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@ATTACK_MODE_COMBI = common dso_local global i64 0, align 8
@COMBINATOR_MODE_BASE_LEFT = common dso_local global i64 0, align 8
@COMBINATOR_MODE_BASE_RIGHT = common dso_local global i64 0, align 8
@ATTACK_MODE_BF = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID1 = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @straight_ctx_update_loop(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %4, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %5, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %7, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %8, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %9, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %10, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %11, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ATTACK_MODE_STRAIGHT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %145

50:                                               ; preds = %1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WL_MODE_FILE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %144

56:                                               ; preds = %50
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %83

72:                                               ; preds = %56
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %72, %61
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @logfile_sub_string(i32 %86)
  store i64 0, i64* %12, align 8
  br label %88

88:                                               ; preds = %102, %83
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @logfile_sub_var_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %88

105:                                              ; preds = %88
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @hc_fopen(i32* %13, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @strerror(i32 %116)
  %118 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %117)
  store i32 -1, i32* %2, align 4
  br label %345

119:                                              ; preds = %105
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = call i32 @count_words(%struct.TYPE_18__* %120, i32* %13, i32 %123, i64* %125)
  store i32 %126, i32* %14, align 4
  %127 = call i32 @hc_fclose(i32* %13)
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %136

130:                                              ; preds = %119
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %131, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  store i32 -1, i32* %2, align 4
  br label %345

136:                                              ; preds = %119
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 @logfile_sub_msg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %345

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %50
  br label %344

145:                                              ; preds = %1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %244

151:                                              ; preds = %145
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @logfile_sub_string(i32 %154)
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @logfile_sub_string(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @COMBINATOR_MODE_BASE_LEFT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %197

165:                                              ; preds = %151
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @hc_fopen(i32* %15, i32 %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @errno, align 4
  %177 = call i32 @strerror(i32 %176)
  %178 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %177)
  store i32 -1, i32* %2, align 4
  br label %345

179:                                              ; preds = %165
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = call i32 @count_words(%struct.TYPE_18__* %180, i32* %15, i32 %183, i64* %185)
  store i32 %186, i32* %16, align 4
  %187 = call i32 @hc_fclose(i32* %15)
  %188 = load i32, i32* %16, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %196

190:                                              ; preds = %179
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %191, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  store i32 -1, i32* %2, align 4
  br label %345

196:                                              ; preds = %179
  br label %236

197:                                              ; preds = %151
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @COMBINATOR_MODE_BASE_RIGHT, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %235

203:                                              ; preds = %197
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @hc_fopen(i32* %17, i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %203
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @errno, align 4
  %215 = call i32 @strerror(i32 %214)
  %216 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %213, i32 %215)
  store i32 -1, i32* %2, align 4
  br label %345

217:                                              ; preds = %203
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = call i32 @count_words(%struct.TYPE_18__* %218, i32* %17, i32 %221, i64* %223)
  store i32 %224, i32* %18, align 4
  %225 = call i32 @hc_fclose(i32* %17)
  %226 = load i32, i32* %18, align 4
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %234

228:                                              ; preds = %217
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %229, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %232)
  store i32 -1, i32* %2, align 4
  br label %345

234:                                              ; preds = %217
  br label %235

235:                                              ; preds = %234, %197
  br label %236

236:                                              ; preds = %235, %196
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = call i32 @logfile_sub_msg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %345

243:                                              ; preds = %236
  br label %343

244:                                              ; preds = %145
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @ATTACK_MODE_BF, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @logfile_sub_string(i32 %253)
  br label %342

255:                                              ; preds = %244
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %267, label %261

261:                                              ; preds = %255
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %341

267:                                              ; preds = %261, %255
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %267
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 8
  br label %294

283:                                              ; preds = %267
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %283, %272
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @logfile_sub_string(i32 %297)
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @logfile_sub_string(i32 %301)
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @hc_fopen(i32* %19, i32 %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %294
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @errno, align 4
  %314 = call i32 @strerror(i32 %313)
  %315 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %309, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %312, i32 %314)
  store i32 -1, i32* %2, align 4
  br label %345

316:                                              ; preds = %294
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = call i32 @count_words(%struct.TYPE_18__* %317, i32* %19, i32 %320, i64* %322)
  store i32 %323, i32* %20, align 4
  %324 = call i32 @hc_fclose(i32* %19)
  %325 = load i32, i32* %20, align 4
  %326 = icmp eq i32 %325, -1
  br i1 %326, label %327, label %333

327:                                              ; preds = %316
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @event_log_error(%struct.TYPE_18__* %328, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %331)
  store i32 -1, i32* %2, align 4
  br label %345

333:                                              ; preds = %316
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = call i32 @logfile_sub_msg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %345

340:                                              ; preds = %333
  br label %341

341:                                              ; preds = %340, %261
  br label %342

342:                                              ; preds = %341, %250
  br label %343

343:                                              ; preds = %342, %243
  br label %344

344:                                              ; preds = %343, %144
  store i32 0, i32* %2, align 4
  br label %345

345:                                              ; preds = %344, %338, %327, %308, %241, %228, %209, %190, %171, %141, %130, %111
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @logfile_sub_string(i32) #1

declare dso_local i32 @logfile_sub_var_string(i8*, i32) #1

declare dso_local i32 @hc_fopen(i32*, i32, i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_18__*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @count_words(%struct.TYPE_18__*, i32*, i32, i64*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @logfile_sub_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
