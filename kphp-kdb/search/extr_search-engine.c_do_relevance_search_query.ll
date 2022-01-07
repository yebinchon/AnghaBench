; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_relevance_search_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_relevance_search_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.value_buffer = type { i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)* }

@.str = private unnamed_addr constant [60 x i8] c"parse_relevance_search_query (%.*s) returns error code %d.\0A\00", align 1
@search_queries = common dso_local global i32 0, align 4
@relevance_search_queries = common dso_local global i32 0, align 4
@Q_hash_group_mode = common dso_local global i64 0, align 8
@Q_limit = common dso_local global i64 0, align 8
@R_tot = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global %struct.TYPE_3__** null, align 8
@RV = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_relevance_search_query(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.value_buffer, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @parse_relevance_search_query(i8* %16, i32* %11, i32* %12, i32 1)
  store i8* %17, i8** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i32 %23)
  %25 = load %struct.connection*, %struct.connection** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @return_error(%struct.connection* %25, i8* %26, i32 %27, i32 %28, i8* %29)
  store i32 %30, i32* %5, align 4
  br label %157

31:                                               ; preds = %4
  %32 = load i32, i32* @search_queries, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @search_queries, align 4
  %34 = load i32, i32* @relevance_search_queries, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @relevance_search_queries, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @do_perform_query(i8* %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.connection*, %struct.connection** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @value_buffer_init(%struct.value_buffer* %15, %struct.connection* %39, i8* %44, i32 %47, i32 %48, i32 64)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %157

52:                                               ; preds = %31
  %53 = load i64, i64* @Q_hash_group_mode, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %114

55:                                               ; preds = %52
  %56 = load i64, i64* @Q_limit, align 8
  %57 = icmp sgt i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 0
  %61 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %60, align 8
  %62 = load i32, i32* @R_tot, align 4
  %63 = call i32 %61(%struct.value_buffer* %15, i32 %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %109, %55
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @R_cnt, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %64
  %69 = call i32 @value_buffer_flush(%struct.value_buffer* %15)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %157

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 1
  %74 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %73, align 8
  %75 = call i32 %74(%struct.value_buffer* %15, i8 signext 44)
  %76 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 2
  %77 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %76, align 8
  %78 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @R, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %78, i64 %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %77(%struct.value_buffer* %15, i32 %84)
  %86 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 1
  %87 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %86, align 8
  %88 = call i32 %87(%struct.value_buffer* %15, i8 signext 44)
  %89 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 0
  %90 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %89, align 8
  %91 = load i32*, i32** @RV, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 %90(%struct.value_buffer* %15, i32 %95)
  %97 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 1
  %98 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %97, align 8
  %99 = call i32 %98(%struct.value_buffer* %15, i8 signext 44)
  %100 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 3
  %101 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %100, align 8
  %102 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @R, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %102, i64 %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @extract_hash_item(%struct.TYPE_3__* %106)
  %108 = call i32 %101(%struct.value_buffer* %15, i32 %107)
  br label %109

109:                                              ; preds = %72
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %64

112:                                              ; preds = %64
  %113 = call i32 @value_buffer_return(%struct.value_buffer* %15)
  store i32 %113, i32* %5, align 4
  br label %157

114:                                              ; preds = %52
  %115 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 0
  %116 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 %116(%struct.value_buffer* %15, i32 %117)
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %152, %114
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @R_cnt, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %119
  %124 = call i32 @value_buffer_flush(%struct.value_buffer* %15)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  store i32 -1, i32* %5, align 4
  br label %157

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 1
  %129 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %128, align 8
  %130 = call i32 %129(%struct.value_buffer* %15, i8 signext 44)
  %131 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 2
  %132 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %131, align 8
  %133 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @R, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %133, i64 %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %132(%struct.value_buffer* %15, i32 %139)
  %141 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 1
  %142 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %141, align 8
  %143 = call i32 %142(%struct.value_buffer* %15, i8 signext 44)
  %144 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %15, i32 0, i32 0
  %145 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %144, align 8
  %146 = load i32*, i32** @RV, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 %145(%struct.value_buffer* %15, i32 %150)
  br label %152

152:                                              ; preds = %127
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %119

155:                                              ; preds = %119
  %156 = call i32 @value_buffer_return(%struct.value_buffer* %15)
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %126, %112, %71, %51, %20
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i8* @parse_relevance_search_query(i8*, i32*, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @return_error(%struct.connection*, i8*, i32, i32, i8*) #1

declare dso_local i32 @do_perform_query(i8*, i32) #1

declare dso_local i32 @value_buffer_init(%struct.value_buffer*, %struct.connection*, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @value_buffer_flush(%struct.value_buffer*) #1

declare dso_local i32 @extract_hash_item(%struct.TYPE_3__*) #1

declare dso_local i32 @value_buffer_return(%struct.value_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
