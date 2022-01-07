; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@verbosity = common dso_local global i64 0, align 8
@test_mode = common dso_local global i64 0, align 8
@log_position = common dso_local global i32 0, align 4
@log_timestamp = common dso_local global i32 0, align 4
@log_crc32 = common dso_local global i32 0, align 4
@time_table_log_position = common dso_local global i32 0, align 4
@time_table_log_timestamp = common dso_local global i32 0, align 4
@time_table_log_crc32 = common dso_local global i32 0, align 4
@history_l = common dso_local global i64 0, align 8
@history_r = common dso_local global i64 0, align 8
@history_q = common dso_local global i64* null, align 8
@MAX_HISTORY = common dso_local global i64 0, align 8
@eq_n = common dso_local global i64 0, align 8
@events_memory = common dso_local global i64 0, align 8
@write_only = common dso_local global i32 0, align 4
@events_mem = common dso_local global i32 0, align 4
@MAX_EVENT_MEM = common dso_local global i32 0, align 4
@eq = common dso_local global i32 0, align 4
@MAX_EV = common dso_local global i32 0, align 4
@ans = common dso_local global i32 0, align 4
@FN = common dso_local global i32 0, align 4
@std_t = common dso_local global i64* null, align 8
@color_ll = common dso_local global i32* null, align 8
@q_st_ll = common dso_local global i32* null, align 8
@color_int = common dso_local global i32* null, align 8
@q_st_int = common dso_local global i32* null, align 8
@MAX_TYPE = common dso_local global i32 0, align 4
@types = common dso_local global %struct.TYPE_3__* null, align 8
@map_type_id = common dso_local global i32 0, align 4
@dump_mode = common dso_local global i64 0, align 8
@dump_query = common dso_local global i32* null, align 8
@dump_expr = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Memory left: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @verbosity, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @test_mode, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %154

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @log_position, align 4
  %9 = call i32 @vector_free(i32 %8)
  %10 = load i32, i32* @log_timestamp, align 4
  %11 = call i32 @vector_free(i32 %10)
  %12 = load i32, i32* @log_crc32, align 4
  %13 = call i32 @vector_free(i32 %12)
  %14 = load i32, i32* @time_table_log_position, align 4
  %15 = call i32 @vector_free(i32 %14)
  %16 = load i32, i32* @time_table_log_timestamp, align 4
  %17 = call i32 @vector_free(i32 %16)
  %18 = load i32, i32* @time_table_log_crc32, align 4
  %19 = call i32 @vector_free(i32 %18)
  br label %20

20:                                               ; preds = %38, %7
  %21 = load i64, i64* @history_l, align 8
  %22 = load i64, i64* @history_r, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i64*, i64** @history_q, align 8
  %26 = load i64, i64* @history_l, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dl_strfree(i64 %28)
  %30 = load i64*, i64** @history_q, align 8
  %31 = load i64, i64* @history_l, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* @history_l, align 8
  %33 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* @history_l, align 8
  %35 = load i64, i64* @MAX_HISTORY, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i64 0, i64* @history_l, align 8
  br label %38

38:                                               ; preds = %37, %24
  br label %20

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %43, %39
  %41 = load i64, i64* @eq_n, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @event_free()
  br label %40

45:                                               ; preds = %40
  %46 = load i64, i64* @events_memory, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* @write_only, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @events_mem, align 4
  %54 = load i32, i32* @MAX_EVENT_MEM, align 4
  %55 = call i32 @dl_free(i32 %53, i32 %54)
  %56 = load i32, i32* @eq, align 4
  %57 = load i32, i32* @MAX_EV, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @dl_free(i32 %56, i32 %60)
  %62 = load i32, i32* @ans, align 4
  %63 = load i32, i32* @MAX_EV, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @dl_free(i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %52, %45
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %103, %68
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @FN, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %114

73:                                               ; preds = %69
  %74 = load i64*, i64** @std_t, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i32*, i32** @color_ll, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @map_ll_int_free(i32* %84)
  %86 = load i32*, i32** @q_st_ll, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @map_ll_int_free(i32* %89)
  br label %102

91:                                               ; preds = %73
  %92 = load i32*, i32** @color_int, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @map_int_int_free(i32* %95)
  %97 = load i32*, i32** @q_st_int, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @map_int_int_free(i32* %100)
  br label %102

102:                                              ; preds = %91, %80
  br label %103

103:                                              ; preds = %102
  %104 = load i64*, i64** @std_t, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 1, %108
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %1, align 4
  br label %69

114:                                              ; preds = %69
  store i32 0, i32* %1, align 4
  br label %115

115:                                              ; preds = %134, %114
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @MAX_TYPE, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @types, align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @types, align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = call i32 @type_free(%struct.TYPE_3__* %131)
  br label %133

133:                                              ; preds = %127, %119
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %1, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %1, align 4
  br label %115

137:                                              ; preds = %115
  %138 = call i32 @map_ll_int_free(i32* @map_type_id)
  %139 = load i64, i64* @dump_mode, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32*, i32** @dump_query, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @expression_free(i32* @dump_expr)
  br label %146

146:                                              ; preds = %144, %141, %137
  %147 = load i32, i32* @stderr, align 4
  %148 = call i64 (...) @dl_get_memory_used()
  %149 = call i32 @fprintf(i32 %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %148)
  %150 = call i64 (...) @dl_get_memory_used()
  %151 = icmp eq i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  br label %154

154:                                              ; preds = %146, %4
  ret void
}

declare dso_local i32 @vector_free(i32) #1

declare dso_local i32 @dl_strfree(i64) #1

declare dso_local i32 @event_free(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_free(i32, i32) #1

declare dso_local i32 @map_ll_int_free(i32*) #1

declare dso_local i32 @map_int_int_free(i32*) #1

declare dso_local i32 @type_free(%struct.TYPE_3__*) #1

declare dso_local i32 @expression_free(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @dl_get_memory_used(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
