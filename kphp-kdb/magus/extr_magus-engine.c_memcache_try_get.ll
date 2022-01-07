; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-engine.c_memcache_try_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-engine.c_memcache_try_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i64 0, align 8
@STATS_BUFF_SIZE = common dso_local global i64 0, align 8
@GET_LOG = common dso_local global i32 0, align 4
@SET_LOG_VERBOSITY = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hints\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hints%d%n\00", align 1
@get = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"%d,%d,%d%n\00", align 1
@buf = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"apps_hints\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d,%d%n\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"apps\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"apps%d#%d%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_try_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @hst(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i32, i32* @verbosity, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %3
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @eat_at(i8* %41, i32 %42, i8** %8, i32* %9)
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %44, 5
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = call i32 (...) @magus_prepare_stats()
  store i32 %51, i32* %10, align 4
  %52 = load %struct.connection*, %struct.connection** %5, align 8
  %53 = load i64, i64* @stats_buff, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i64, i64* @STATS_BUFF_SIZE, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = call i32 @prepare_stats(%struct.connection* %52, i64 %56, i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.connection*, %struct.connection** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* @stats_buff, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @return_one_key(%struct.connection* %62, i8* %63, i64 %64, i32 %68)
  store i32 0, i32* %4, align 4
  br label %238

70:                                               ; preds = %46, %40
  %71 = load i32, i32* @GET_LOG, align 4
  %72 = load i32, i32* @SET_LOG_VERBOSITY, align 4
  %73 = load i32, i32* @INIT, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 5
  br i1 %75, label %76, label %143

76:                                               ; preds = %70
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %143, label %80

80:                                               ; preds = %76
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = call %struct.TYPE_4__* @MESSAGE(%struct.connection* %81)
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %17, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %12, i32* %13)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @msg_verify(%struct.TYPE_4__* %87, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %86, %80
  %96 = load i32, i32* @get, align 4
  %97 = call i32 @RETURN(i32 %96, i32 0)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %13, align 4
  %102 = load i8*, i8** %18, align 8
  %103 = icmp ne i8* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i8*, i8** %18, align 8
  %107 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %15, i32* %16, i32* %14, i32* %13)
  %108 = icmp ne i32 %107, 3
  br i1 %108, label %112, label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %14, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109, %98
  %113 = load i32, i32* @get, align 4
  %114 = call i32 @RETURN(i32 %113, i32 0)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i8*, i8** %18, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i64, i64* @buf, align 8
  %127 = call i32 @get_objs_hints(i32 %119, i32 %120, i32 %121, i8* %125, i64 %126)
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %115
  %131 = load %struct.connection*, %struct.connection** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* @buf, align 8
  %134 = load i64, i64* @buf, align 8
  %135 = call i32 @strlen(i64 %134)
  %136 = call i32 @return_one_key(%struct.connection* %131, i8* %132, i64 %133, i32 %135)
  %137 = load i32, i32* @get, align 4
  %138 = call i32 @RETURN(i32 %137, i32 0)
  br label %139

139:                                              ; preds = %130, %115
  %140 = load i32, i32* @get, align 4
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @RETURN(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %76, %70
  %144 = load i32, i32* %9, align 4
  %145 = icmp sge i32 %144, 10
  br i1 %145, label %146, label %190

146:                                              ; preds = %143
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @strncmp(i8* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %190, label %150

150:                                              ; preds = %146
  store i32 10, i32* %23, align 4
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %23, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %22, i32* %21, i32* %24)
  %156 = icmp ne i32 %155, 2
  br i1 %156, label %160, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %21, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157, %150
  %161 = load i32, i32* @get, align 4
  %162 = call i32 @RETURN(i32 %161, i32 0)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %23, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* %23, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i64, i64* @buf, align 8
  %174 = call i32 @get_objs_hints(i32 %167, i32 41, i32 %168, i8* %172, i64 %173)
  store i32 %174, i32* %25, align 4
  %175 = load i32, i32* %25, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %163
  %178 = load %struct.connection*, %struct.connection** %5, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = load i64, i64* @buf, align 8
  %181 = load i64, i64* @buf, align 8
  %182 = call i32 @strlen(i64 %181)
  %183 = call i32 @return_one_key(%struct.connection* %178, i8* %179, i64 %180, i32 %182)
  %184 = load i32, i32* @get, align 4
  %185 = call i32 @RETURN(i32 %184, i32 0)
  br label %186

186:                                              ; preds = %177, %163
  %187 = load i32, i32* @get, align 4
  %188 = load i32, i32* %25, align 4
  %189 = call i32 @RETURN(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %146, %143
  %191 = load i32, i32* %9, align 4
  %192 = icmp sge i32 %191, 4
  br i1 %192, label %193, label %235

193:                                              ; preds = %190
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @strncmp(i8* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %235, label %197

197:                                              ; preds = %193
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %26, i32* %27, i32* %28)
  %200 = icmp ne i32 %199, 2
  br i1 %200, label %212, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %27, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %201
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %28, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %204, %201, %197
  %213 = load i32, i32* @get, align 4
  %214 = call i32 @RETURN(i32 %213, i32 0)
  br label %215

215:                                              ; preds = %212, %204
  %216 = load i32, i32* %26, align 4
  %217 = load i32, i32* %27, align 4
  %218 = load i64, i64* @buf, align 8
  %219 = call i32 @get_objs(i32 %216, i32 41, i32 %217, i64 %218)
  store i32 %219, i32* %29, align 4
  %220 = load i32, i32* %29, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %215
  %223 = load %struct.connection*, %struct.connection** %5, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = load i64, i64* @buf, align 8
  %226 = load i64, i64* @buf, align 8
  %227 = call i32 @strlen(i64 %226)
  %228 = call i32 @return_one_key(%struct.connection* %223, i8* %224, i64 %225, i32 %227)
  %229 = load i32, i32* @get, align 4
  %230 = call i32 @RETURN(i32 %229, i32 0)
  br label %231

231:                                              ; preds = %222, %215
  %232 = load i32, i32* @get, align 4
  %233 = load i32, i32* %29, align 4
  %234 = call i32 @RETURN(i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %193, %190
  %236 = load i32, i32* @get, align 4
  %237 = call i32 @RETURN(i32 %236, i32 0)
  br label %238

238:                                              ; preds = %235, %50
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @hst(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @magus_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i64, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i64, i32) #1

declare dso_local %struct.TYPE_4__* @MESSAGE(%struct.connection*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i64 @msg_verify(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_objs_hints(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @get_objs(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
