; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@binlog_disabled = common dso_local global i64 0, align 8
@set_queries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"delete_local_copy\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d:%255s\00", align 1
@cache_id = common dso_local global i32 0, align 4
@value_buff = common dso_local global i32* null, align 8
@set_delete_local_copy_queries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"file_size\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@set_file_size_queries = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"new_local_copy\00", align 1
@set_new_local_copy_queries = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"yellow_time_remaining\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%d:%255[^~]~%255s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@set_yellow_time_remaining_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @binlog_disabled, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %7
  store i32 -2, i32* %8, align 4
  br label %223

30:                                               ; preds = %26
  %31 = load i32, i32* @set_queries, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @set_queries, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %222 [
    i32 100, label %36
    i32 102, label %79
    i32 110, label %128
    i32 121, label %171
  ]

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  %38 = icmp sge i32 %37, 17
  br i1 %38, label %39, label %78

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 256
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @memcmp(i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %78, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 17
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %50 = call i32 (i8*, i8*, ...) @sscanf(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %16, i8* %49)
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @cache_id, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load %struct.connection*, %struct.connection** %9, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 0
  %59 = load i32*, i32** @value_buff, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @read_in(i32* %58, i32* %59, i32 %60)
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32*, i32** @value_buff, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* @set_delete_local_copy_queries, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @set_delete_local_copy_queries, align 4
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %73 = load i32*, i32** @value_buff, align 8
  %74 = call i32 @cache_do_delete_local_copy(i8* %72, i32* %73)
  %75 = icmp slt i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 1
  store i32 %77, i32* %8, align 4
  br label %223

78:                                               ; preds = %52, %46, %42, %39, %36
  br label %222

79:                                               ; preds = %30
  %80 = load i32, i32* %12, align 4
  %81 = icmp sge i32 %80, 9
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = icmp sle i32 %83, 64
  br i1 %84, label %85, label %127

85:                                               ; preds = %82
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @memcmp(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %127, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 9
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %93 = call i32 (i8*, i8*, ...) @sscanf(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %16, i8* %92)
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %127

95:                                               ; preds = %89
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @cache_id, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load %struct.connection*, %struct.connection** %9, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 0
  %102 = load i32*, i32** @value_buff, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @read_in(i32* %101, i32* %102, i32 %103)
  %105 = load i32, i32* %15, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32*, i32** @value_buff, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 0, i32* %112, align 4
  %113 = load i32*, i32** @value_buff, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = call i32 (i8*, i8*, ...) @sscanf(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64* %19)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %126

117:                                              ; preds = %99
  %118 = load i32, i32* @set_file_size_queries, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @set_file_size_queries, align 4
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %121 = load i64, i64* %19, align 8
  %122 = call i32 @cache_do_set_size(i8* %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  br label %223

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %99
  store i32 0, i32* %8, align 4
  br label %223

127:                                              ; preds = %95, %89, %85, %82, %79
  br label %222

128:                                              ; preds = %30
  %129 = load i32, i32* %12, align 4
  %130 = icmp sge i32 %129, 14
  br i1 %130, label %131, label %170

131:                                              ; preds = %128
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %132, 256
  br i1 %133, label %134, label %170

134:                                              ; preds = %131
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @memcmp(i8* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 14
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %142 = call i32 (i8*, i8*, ...) @sscanf(i8* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %16, i8* %141)
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @cache_id, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %170

148:                                              ; preds = %144
  %149 = load %struct.connection*, %struct.connection** %9, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 0
  %151 = load i32*, i32** @value_buff, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @read_in(i32* %150, i32* %151, i32 %152)
  %154 = load i32, i32* %15, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i32*, i32** @value_buff, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 0, i32* %161, align 4
  %162 = load i32, i32* @set_new_local_copy_queries, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @set_new_local_copy_queries, align 4
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %165 = load i32*, i32** @value_buff, align 8
  %166 = call i32 @cache_do_set_new_local_copy(i8* %164, i32* %165)
  %167 = icmp slt i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 0, i32 1
  store i32 %169, i32* %8, align 4
  br label %223

170:                                              ; preds = %144, %138, %134, %131, %128
  br label %222

171:                                              ; preds = %30
  %172 = load i32, i32* %12, align 4
  %173 = icmp sge i32 %172, 21
  br i1 %173, label %174, label %221

174:                                              ; preds = %171
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 256
  br i1 %176, label %177, label %221

177:                                              ; preds = %174
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @memcmp(i8* %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 21)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %221, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 21
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %186 = call i32 (i8*, i8*, ...) @sscanf(i8* %183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %16, i8* %184, i8* %185)
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %188, label %221

188:                                              ; preds = %181
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @cache_id, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %221

192:                                              ; preds = %188
  %193 = load %struct.connection*, %struct.connection** %9, align 8
  %194 = getelementptr inbounds %struct.connection, %struct.connection* %193, i32 0, i32 0
  %195 = load i32*, i32** @value_buff, align 8
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @read_in(i32* %194, i32* %195, i32 %196)
  %198 = load i32, i32* %15, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load i32*, i32** @value_buff, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 0, i32* %205, align 4
  %206 = load i32*, i32** @value_buff, align 8
  %207 = bitcast i32* %206 to i8*
  %208 = call i32 (i8*, i8*, ...) @sscanf(i8* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %20)
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %220

210:                                              ; preds = %192
  %211 = load i32, i32* @set_yellow_time_remaining_queries, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* @set_yellow_time_remaining_queries, align 4
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %215 = load i32, i32* %20, align 4
  %216 = call i32 @cache_do_set_yellow_light_remaining(i8* %213, i8* %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %210
  store i32 1, i32* %8, align 4
  br label %223

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219, %192
  store i32 0, i32* %8, align 4
  br label %223

221:                                              ; preds = %188, %181, %177, %174, %171
  br label %222

222:                                              ; preds = %30, %221, %170, %127, %78
  store i32 -2, i32* %8, align 4
  br label %223

223:                                              ; preds = %222, %220, %218, %148, %126, %124, %56, %29
  %224 = load i32, i32* %8, align 4
  ret i32 %224
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i32*, i32) #1

declare dso_local i32 @cache_do_delete_local_copy(i8*, i32*) #1

declare dso_local i32 @cache_do_set_size(i8*, i64) #1

declare dso_local i32 @cache_do_set_new_local_copy(i8*, i32*) #1

declare dso_local i32 @cache_do_set_yellow_light_remaining(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
