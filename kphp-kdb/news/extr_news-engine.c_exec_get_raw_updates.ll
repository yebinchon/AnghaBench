; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.keep_mc_store = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"exec_get_raw_updates (%p, %s, %d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"raw_updates%d[%d,%d]:%n\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"raw_updates%n%d\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"mask = %d, st_time = %d, end_time = %d, x = %d, user_id = %d\0A\00", align 1
@Q = common dso_local global i32* null, align 8
@MAX_QUERY = common dso_local global i32 0, align 4
@QL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"QL = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"found userlist %d, %d entries\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"first entry: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"prepare_raw_updates(%d) = %d\0A\00", align 1
@R = common dso_local global i64 0, align 8
@R_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @exec_get_raw_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_get_raw_updates(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.keep_mc_store*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.keep_mc_store* null, %struct.keep_mc_store** %16, align 8
  %20 = load i32, i32* @verbosity, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.connection*, %struct.connection** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.connection* %24, i8* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %4
  %30 = load %struct.connection*, %struct.connection** %6, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.connection*, %struct.connection** %6, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.keep_mc_store*
  store %struct.keep_mc_store* %40, %struct.keep_mc_store** %16, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %15, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %14)
  %53 = icmp sge i32 %52, 3
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32* %10)
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %229

61:                                               ; preds = %54, %47
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %229

64:                                               ; preds = %61
  %65 = load i32, i32* @verbosity, align 4
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 11
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -1, i32* %11, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32*, i32** @Q, align 8
  %84 = load i32, i32* @MAX_QUERY, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @np_parse_list_str(i32* %83, i32 %84, i32 1, i8* %88, i32 %91)
  store i32 %92, i32* @QL, align 4
  %93 = load i32, i32* @verbosity, align 4
  %94 = icmp sge i32 %93, 3
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* @QL, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %79
  %100 = load i32, i32* @QL, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %174

102:                                              ; preds = %99
  %103 = load i32*, i32** @Q, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %174

107:                                              ; preds = %102
  %108 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %109 = icmp ne %struct.keep_mc_store* %108, null
  br i1 %109, label %110, label %174

110:                                              ; preds = %107
  %111 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %112 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** @Q, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %174

118:                                              ; preds = %110
  %119 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %120 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %174

123:                                              ; preds = %118
  %124 = load i32, i32* @verbosity, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i32, i32* @stderr, align 4
  %128 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %129 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %132 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %126, %123
  %136 = load %struct.connection*, %struct.connection** %6, align 8
  %137 = getelementptr inbounds %struct.connection, %struct.connection* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = call i32 @advance_read_ptr(%struct.TYPE_3__* %138, i32 8)
  %140 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %141 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* @QL, align 4
  %143 = load i32, i32* @QL, align 4
  %144 = load i32, i32* @MAX_QUERY, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i32, i32* @MAX_QUERY, align 4
  store i32 %147, i32* @QL, align 4
  br label %148

148:                                              ; preds = %146, %135
  %149 = load %struct.connection*, %struct.connection** %6, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32*, i32** @Q, align 8
  %153 = load i32, i32* @QL, align 4
  %154 = mul nsw i32 %153, 4
  %155 = call i32 @read_in(%struct.TYPE_3__* %151, i32* %152, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @QL, align 4
  %158 = mul nsw i32 %157, 4
  %159 = icmp eq i32 %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32, i32* @verbosity, align 4
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %164, label %173

164:                                              ; preds = %148
  %165 = load i32, i32* @QL, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32, i32* @stderr, align 4
  %169 = load i32*, i32** @Q, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %167, %164, %148
  br label %174

174:                                              ; preds = %173, %118, %110, %107, %102, %99
  %175 = call i32 (...) @clear_result_buffer()
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %176

176:                                              ; preds = %205, %174
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @QL, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %208

180:                                              ; preds = %176
  %181 = load i32*, i32** @Q, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @prepare_raw_updates(i32 %186, i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* @verbosity, align 4
  %192 = icmp sgt i32 %191, 1
  br i1 %192, label %193, label %198

193:                                              ; preds = %180
  %194 = load i32, i32* @stderr, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %19, align 4
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %193, %180
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %18, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32, i32* %19, align 4
  store i32 %203, i32* %18, align 4
  br label %204

204:                                              ; preds = %202, %198
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %176

208:                                              ; preds = %176
  %209 = load i32, i32* %18, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %208
  %212 = load %struct.connection*, %struct.connection** %6, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = sub i64 0, %215
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* %15, align 4
  %222 = sub nsw i32 0, %221
  %223 = load i64, i64* @R, align 8
  %224 = load i64, i64* @R_end, align 8
  %225 = load i64, i64* @R, align 8
  %226 = sub nsw i64 %224, %225
  %227 = call i32 @return_one_key_list(%struct.connection* %212, i8* %217, i32 %220, i32 2147483647, i32 %222, i64 %223, i64 %226)
  store i32 %227, i32* %5, align 4
  br label %230

228:                                              ; preds = %208
  br label %229

229:                                              ; preds = %228, %61, %54
  store i32 0, i32* %5, align 4
  br label %230

230:                                              ; preds = %229, %211
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @np_parse_list_str(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @advance_read_ptr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @read_in(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_result_buffer(...) #1

declare dso_local i32 @prepare_raw_updates(i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
