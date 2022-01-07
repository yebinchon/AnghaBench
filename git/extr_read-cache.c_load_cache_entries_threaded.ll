; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_load_cache_entries_threaded.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_load_cache_entries_threaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i64 }
%struct.index_entry_offset_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.load_cache_entries_thread_data = type { i32, i8*, i32, i32, i64, i32, i32, %struct.index_entry_offset_table*, %struct.index_state* }

@.str = private unnamed_addr constant [32 x i8] c"the name hash isn't thread safe\00", align 1
@load_cache_entries_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"unable to create load_cache_entries thread: %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"unable to join load_cache_entries thread: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.index_state*, i8*, i64, i32, %struct.index_entry_offset_table*)* @load_cache_entries_threaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_cache_entries_threaded(%struct.index_state* %0, i8* %1, i64 %2, i32 %3, %struct.index_entry_offset_table* %4) #0 {
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.index_entry_offset_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.load_cache_entries_thread_data*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.load_cache_entries_thread_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.load_cache_entries_thread_data*, align 8
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.index_entry_offset_table* %4, %struct.index_entry_offset_table** %10, align 8
  store i64 0, i64* %17, align 8
  %22 = load %struct.index_state*, %struct.index_state** %6, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %5
  %29 = load %struct.index_state*, %struct.index_state** %6, align 8
  %30 = getelementptr inbounds %struct.index_state, %struct.index_state* %29, i32 0, i32 1
  %31 = call i32 @mem_pool_init(i32* %30, i32 0)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %10, align 8
  %34 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %10, align 8
  %39 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.load_cache_entries_thread_data* @xcalloc(i32 %42, i32 56)
  store %struct.load_cache_entries_thread_data* %43, %struct.load_cache_entries_thread_data** %16, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %44 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %10, align 8
  %45 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %179, %41
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %182

53:                                               ; preds = %49
  %54 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %16, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %54, i64 %56
  store %struct.load_cache_entries_thread_data* %57, %struct.load_cache_entries_thread_data** %18, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %10, align 8
  %62 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %10, align 8
  %67 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %65, %53
  %72 = load %struct.index_state*, %struct.index_state** %6, align 8
  %73 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %74 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %73, i32 0, i32 8
  store %struct.index_state* %72, %struct.index_state** %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %77 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %80 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %10, align 8
  %82 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %83 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %82, i32 0, i32 7
  store %struct.index_entry_offset_table* %81, %struct.index_entry_offset_table** %83, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %86 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %89 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %19, align 4
  %90 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %91 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %20, align 4
  br label %93

93:                                               ; preds = %118, %71
  %94 = load i32, i32* %20, align 4
  %95 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %96 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %99 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = icmp slt i32 %94, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %93
  %104 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %105 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %104, i32 0, i32 7
  %106 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %105, align 8
  %107 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %20, align 4
  br label %93

121:                                              ; preds = %93
  %122 = load %struct.index_state*, %struct.index_state** %6, align 8
  %123 = getelementptr inbounds %struct.index_state, %struct.index_state* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %128 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %127, i32 0, i32 5
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @estimate_cache_size_from_compressed(i32 %129)
  %131 = call i32 @mem_pool_init(i32* %128, i32 %130)
  br label %139

132:                                              ; preds = %121
  %133 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %134 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %133, i32 0, i32 5
  %135 = load i64, i64* %8, align 8
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @estimate_cache_size(i64 %135, i32 %136)
  %138 = call i32 @mem_pool_init(i32* %134, i32 %137)
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %141 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %140, i32 0, i32 6
  %142 = load i32, i32* @load_cache_entries_thread, align 4
  %143 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %18, align 8
  %144 = call i32 @pthread_create(i32* %141, i32* null, i32 %142, %struct.load_cache_entries_thread_data* %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @strerror(i32 %149)
  %151 = call i32 @die(i32 %148, i32 %150)
  br label %152

152:                                              ; preds = %147, %139
  store i32 0, i32* %20, align 4
  br label %153

153:                                              ; preds = %172, %152
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %153
  %158 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %10, align 8
  %159 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %157
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %20, align 4
  br label %153

175:                                              ; preds = %153
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %49

182:                                              ; preds = %49
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %216, %182
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %219

187:                                              ; preds = %183
  %188 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %16, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %188, i64 %190
  store %struct.load_cache_entries_thread_data* %191, %struct.load_cache_entries_thread_data** %21, align 8
  %192 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %21, align 8
  %193 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @pthread_join(i32 %194, i32* null)
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %187
  %199 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @strerror(i32 %200)
  %202 = call i32 @die(i32 %199, i32 %201)
  br label %203

203:                                              ; preds = %198, %187
  %204 = load %struct.index_state*, %struct.index_state** %6, align 8
  %205 = getelementptr inbounds %struct.index_state, %struct.index_state* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %21, align 8
  %208 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @mem_pool_combine(i32 %206, i32 %209)
  %211 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %21, align 8
  %212 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %17, align 8
  %215 = add i64 %214, %213
  store i64 %215, i64* %17, align 8
  br label %216

216:                                              ; preds = %203
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  br label %183

219:                                              ; preds = %183
  %220 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %16, align 8
  %221 = call i32 @free(%struct.load_cache_entries_thread_data* %220)
  %222 = load i64, i64* %17, align 8
  ret i64 %222
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @mem_pool_init(i32*, i32) #1

declare dso_local %struct.load_cache_entries_thread_data* @xcalloc(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @estimate_cache_size_from_compressed(i32) #1

declare dso_local i32 @estimate_cache_size(i64, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.load_cache_entries_thread_data*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @mem_pool_combine(i32, i32) #1

declare dso_local i32 @free(%struct.load_cache_entries_thread_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
