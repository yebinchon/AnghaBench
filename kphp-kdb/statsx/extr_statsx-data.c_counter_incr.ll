; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i32, %struct.counter*, i32, i32, i32, i32 }
%struct.lev_stats_visitor = type { i32 }
%struct.lev_stats_visitor64 = type { i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"counter_incr (%lld, %d, %d, %d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Got counter\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Counter type is %d\0A\00", align 1
@MAX_SUBCNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unknown subcounter (%d). Skipping.\0A\00", align 1
@tot_views = common dso_local global i32 0, align 4
@tot_deletes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"incrementing subcounter... \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@now = common dso_local global i64 0, align 8
@today_start = common dso_local global i64 0, align 8
@mode_ignore_user_id = common dso_local global i32 0, align 4
@monthly_stat = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"creating logevent\0A\00", align 1
@LEV_STATS_VISITOR = common dso_local global i64 0, align 8
@LEV_STATS_VISITOR_64 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"finished creating logevent\0A\00", align 1
@counters_commit_head = common dso_local global %struct.counter* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_incr(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.counter*, align 8
  %14 = alloca %struct.lev_stats_visitor*, align 8
  %15 = alloca %struct.lev_stats_visitor64*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i32, i32* @stderr, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %5
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 1
  %32 = call %struct.counter* @get_counter_f(i64 %27, i32 %31)
  store %struct.counter* %32, %struct.counter** %13, align 8
  %33 = load i32, i32* @verbosity, align 4
  %34 = icmp sge i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.counter*, %struct.counter** %13, align 8
  %40 = icmp ne %struct.counter* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %238

42:                                               ; preds = %38
  %43 = load %struct.counter*, %struct.counter** %13, align 8
  %44 = call i32 @set_perm(%struct.counter* %43)
  %45 = load i32, i32* @verbosity, align 4
  %46 = icmp sge i32 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = load %struct.counter*, %struct.counter** %13, align 8
  %50 = getelementptr inbounds %struct.counter, %struct.counter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 -1, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MAX_SUBCNT, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56, %53
  %61 = load i32, i32* @verbosity, align 4
  %62 = icmp sge i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  store i32 -1, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @tot_views, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @tot_views, align 4
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @tot_deletes, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @tot_deletes, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.counter*, %struct.counter** %13, align 8
  %85 = getelementptr inbounds %struct.counter, %struct.counter* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %93

88:                                               ; preds = %80
  %89 = load %struct.counter*, %struct.counter** %13, align 8
  %90 = getelementptr inbounds %struct.counter, %struct.counter* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %119

94:                                               ; preds = %77
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @MAX_SUBCNT, align 4
  %97 = icmp slt i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* @verbosity, align 4
  %101 = icmp sge i32 %100, 4
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %94
  %106 = load %struct.counter*, %struct.counter** %13, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 -1
  %112 = call i32 @packed_subcnt_increment(%struct.counter* %106, i32 %107, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @verbosity, align 4
  %114 = icmp sge i32 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %105
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load %struct.counter*, %struct.counter** %13, align 8
  %124 = getelementptr inbounds %struct.counter, %struct.counter* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @tree_lookup(i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %214, label %129

129:                                              ; preds = %122, %119
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %156

132:                                              ; preds = %129
  %133 = load i64, i64* @now, align 8
  %134 = load i64, i64* @today_start, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @mode_ignore_user_id, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136, %132
  %140 = load i64, i64* @monthly_stat, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139, %136
  %143 = load %struct.counter*, %struct.counter** %13, align 8
  %144 = getelementptr inbounds %struct.counter, %struct.counter* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (...) @lrand48()
  %148 = call i32 @tree_insert(i32 %145, i32 %146, i32 %147)
  %149 = load %struct.counter*, %struct.counter** %13, align 8
  %150 = getelementptr inbounds %struct.counter, %struct.counter* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %142, %139
  %152 = load %struct.counter*, %struct.counter** %13, align 8
  %153 = getelementptr inbounds %struct.counter, %struct.counter* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %151, %129
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %213, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @verbosity, align 4
  %161 = icmp sge i32 %160, 4
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* %7, align 8
  %168 = trunc i64 %167 to i32
  %169 = sext i32 %168 to i64
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %165
  %172 = load i64, i64* @LEV_STATS_VISITOR, align 8
  %173 = load i32, i32* %10, align 4
  %174 = shl i32 %173, 7
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %172, %175
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %176, %178
  %180 = add nsw i64 %179, 1
  %181 = load i64, i64* %7, align 8
  %182 = call i8* @alloc_log_event(i64 %180, i32 4, i64 %181)
  %183 = bitcast i8* %182 to %struct.lev_stats_visitor*
  store %struct.lev_stats_visitor* %183, %struct.lev_stats_visitor** %14, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.lev_stats_visitor*, %struct.lev_stats_visitor** %14, align 8
  %186 = getelementptr inbounds %struct.lev_stats_visitor, %struct.lev_stats_visitor* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  br label %206

187:                                              ; preds = %165
  %188 = load i64, i64* @LEV_STATS_VISITOR_64, align 8
  %189 = load i32, i32* %10, align 4
  %190 = shl i32 %189, 7
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %188, %191
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = add nsw i64 %195, 1
  %197 = load i64, i64* %7, align 8
  %198 = call i8* @alloc_log_event(i64 %196, i32 16, i64 %197)
  %199 = bitcast i8* %198 to %struct.lev_stats_visitor64*
  store %struct.lev_stats_visitor64* %199, %struct.lev_stats_visitor64** %15, align 8
  %200 = load i64, i64* %7, align 8
  %201 = load %struct.lev_stats_visitor64*, %struct.lev_stats_visitor64** %15, align 8
  %202 = getelementptr inbounds %struct.lev_stats_visitor64, %struct.lev_stats_visitor64* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.lev_stats_visitor64*, %struct.lev_stats_visitor64** %15, align 8
  %205 = getelementptr inbounds %struct.lev_stats_visitor64, %struct.lev_stats_visitor64* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %187, %171
  %207 = load i32, i32* @verbosity, align 4
  %208 = icmp sge i32 %207, 4
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* @stderr, align 4
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %156
  br label %229

214:                                              ; preds = %122
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %214
  %218 = load %struct.counter*, %struct.counter** %13, align 8
  %219 = getelementptr inbounds %struct.counter, %struct.counter* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  %222 = icmp ne i32 %220, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %217
  %224 = load %struct.counter*, %struct.counter** @counters_commit_head, align 8
  %225 = load %struct.counter*, %struct.counter** %13, align 8
  %226 = getelementptr inbounds %struct.counter, %struct.counter* %225, i32 0, i32 2
  store %struct.counter* %224, %struct.counter** %226, align 8
  %227 = load %struct.counter*, %struct.counter** %13, align 8
  store %struct.counter* %227, %struct.counter** @counters_commit_head, align 8
  br label %228

228:                                              ; preds = %223, %217, %214
  br label %229

229:                                              ; preds = %228, %213
  %230 = load i32, i32* %11, align 4
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load %struct.counter*, %struct.counter** %13, align 8
  %234 = getelementptr inbounds %struct.counter, %struct.counter* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %6, align 4
  br label %238

236:                                              ; preds = %229
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %236, %232, %41
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @set_perm(%struct.counter*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @packed_subcnt_increment(%struct.counter*, i32, i32) #1

declare dso_local i32 @tree_lookup(i32, i32) #1

declare dso_local i32 @tree_insert(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i8* @alloc_log_event(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
