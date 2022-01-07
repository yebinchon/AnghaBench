; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_process_news_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_process_news_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_item = type { i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@now = common dso_local global i64 0, align 8
@min_logevent_time = common dso_local global i64 0, align 8
@UG_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"new record stored: user_id=%d type=%d date=%d tag=%d\0A\00", align 1
@items_removed_in_process_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_news_item*)* @process_news_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_news_item(%struct.lev_news_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_news_item*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.lev_news_item* %0, %struct.lev_news_item** %3, align 8
  %8 = load i64, i64* @now, align 8
  %9 = load i64, i64* @min_logevent_time, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %165

12:                                               ; preds = %1
  %13 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %14 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_6__* @get_user_f(i32 %15, i32 1)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %4, align 8
  %17 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %18 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 255
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = load i32, i32* @UG_MODE, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @valid_type(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %23, %12
  store i32 -1, i32* %2, align 4
  br label %165

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = bitcast %struct.TYPE_6__* %36 to %struct.TYPE_7__*
  %38 = icmp ne %struct.TYPE_7__* %35, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @now, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %56 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %51
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %64 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %72 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %67
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %80 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %88 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %165

92:                                               ; preds = %83, %75, %67, %59, %51, %45, %39, %31
  %93 = call %struct.TYPE_7__* (...) @new_item()
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %6, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 9
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = bitcast %struct.TYPE_6__* %100 to %struct.TYPE_7__*
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* @now, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = call i32 (...) @lrand48()
  %118 = and i32 %117, 2147483647
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  %121 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %122 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %127 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 6
  store i64 %128, i64* %130, align 8
  %131 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %132 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %137 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %142 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load %struct.lev_news_item*, %struct.lev_news_item** %3, align 8
  %147 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %151, i64 %154, i32 %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %160 = call i64 @remove_old_items(%struct.TYPE_6__* %159)
  %161 = load i32, i32* @items_removed_in_process_new, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* @items_removed_in_process_new, align 4
  store i32 1, i32* %2, align 4
  br label %165

165:                                              ; preds = %92, %91, %30, %11
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_6__* @get_user_f(i32, i32) #1

declare dso_local i32 @valid_type(i32) #1

declare dso_local %struct.TYPE_7__* @new_item(...) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i64 @remove_old_items(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
