; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_comm_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_comm_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.keep_mc_store = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"raw_comm_updates[%d,%d]:%n\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"raw_comm_updates%n%d\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"found userlist %d, %d entries\0A\00", align 1
@QL = common dso_local global i32 0, align 4
@MAX_QUERY = common dso_local global i32 0, align 4
@Q = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"first entry: %d_%d_%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"prepare_raw_comm_updates(%d_%d_%d) = %d\0A\00", align 1
@R = common dso_local global i64 0, align 8
@R_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @exec_get_raw_comm_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_get_raw_comm_updates(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %15 = alloca i8*, align 8
  %16 = alloca %struct.keep_mc_store*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.keep_mc_store* null, %struct.keep_mc_store** %16, align 8
  %20 = load %struct.connection*, %struct.connection** %6, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.connection*, %struct.connection** %6, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.keep_mc_store*
  store %struct.keep_mc_store* %30, %struct.keep_mc_store** %16, align 8
  br label %31

31:                                               ; preds = %24, %4
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i32* %13)
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32* %10)
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %235

51:                                               ; preds = %44, %37
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %235

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %13, align 4
  store i8* null, i8** %15, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 @strtol(i8* %61, i8** %15, i32 10)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %141

65:                                               ; preds = %54
  %66 = load i8*, i8** %15, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = icmp eq i8* %66, %70
  br i1 %71, label %72, label %141

72:                                               ; preds = %65
  %73 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %74 = icmp ne %struct.keep_mc_store* %73, null
  br i1 %74, label %75, label %141

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %78 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %141

81:                                               ; preds = %75
  %82 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %83 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %141

86:                                               ; preds = %81
  %87 = load i32, i32* @verbosity, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %93 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %89, %86
  %97 = load %struct.connection*, %struct.connection** %6, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = call i32 @advance_read_ptr(%struct.TYPE_3__* %99, i32 8)
  %101 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %102 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* @QL, align 4
  %104 = load i32, i32* @QL, align 4
  %105 = load i32, i32* @MAX_QUERY, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @MAX_QUERY, align 4
  store i32 %108, i32* @QL, align 4
  br label %109

109:                                              ; preds = %107, %96
  %110 = load %struct.connection*, %struct.connection** %6, align 8
  %111 = getelementptr inbounds %struct.connection, %struct.connection* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32*, i32** @Q, align 8
  %114 = load i32, i32* @QL, align 4
  %115 = mul nsw i32 %114, 12
  %116 = call i32 @read_in(%struct.TYPE_3__* %112, i32* %113, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @QL, align 4
  %119 = mul nsw i32 %118, 12
  %120 = icmp eq i32 %117, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32, i32* @verbosity, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %140

125:                                              ; preds = %109
  %126 = load i32, i32* @QL, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = load i32, i32* @stderr, align 4
  %130 = load i32*, i32** @Q, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** @Q, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @Q, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %128, %125, %109
  br label %152

141:                                              ; preds = %81, %75, %72, %65, %54
  %142 = load i32*, i32** @Q, align 8
  %143 = load i32, i32* @MAX_QUERY, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 @np_parse_list_str(i32* %142, i32 %143, i32 3, i8* %147, i32 %150)
  store i32 %151, i32* @QL, align 4
  br label %152

152:                                              ; preds = %141, %140
  %153 = call i32 (...) @clear_result_buffer()
  store i32 -1, i32* %18, align 4
  %154 = load i32, i32* @QL, align 4
  %155 = mul nsw i32 %154, 3
  store i32 %155, i32* @QL, align 4
  store i32 0, i32* %17, align 4
  br label %156

156:                                              ; preds = %211, %152
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @QL, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %214

160:                                              ; preds = %156
  %161 = load i32*, i32** @Q, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** @Q, align 8
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** @Q, align 8
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @prepare_raw_comm_updates(i32 %165, i32 %171, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* @verbosity, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %204

183:                                              ; preds = %160
  %184 = load i32, i32* @stderr, align 4
  %185 = load i32*, i32** @Q, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** @Q, align 8
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** @Q, align 8
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %19, align 4
  %203 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %189, i32 %195, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %183, %160
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %18, align 4
  br label %210

210:                                              ; preds = %208, %204
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 3
  store i32 %213, i32* %17, align 4
  br label %156

214:                                              ; preds = %156
  %215 = load i32, i32* %18, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %214
  %218 = load %struct.connection*, %struct.connection** %6, align 8
  %219 = load i8*, i8** %7, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = sub i64 0, %221
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %14, align 4
  %228 = sub nsw i32 0, %227
  %229 = load i64, i64* @R, align 8
  %230 = load i64, i64* @R_end, align 8
  %231 = load i64, i64* @R, align 8
  %232 = sub nsw i64 %230, %231
  %233 = call i32 @return_one_key_list(%struct.connection* %218, i8* %223, i32 %226, i32 2147483647, i32 %228, i64 %229, i64 %232)
  store i32 %233, i32* %5, align 4
  br label %236

234:                                              ; preds = %214
  br label %235

235:                                              ; preds = %234, %51, %44
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %235, %217
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @advance_read_ptr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @read_in(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @np_parse_list_str(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @clear_result_buffer(...) #1

declare dso_local i32 @prepare_raw_comm_updates(i32, i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
