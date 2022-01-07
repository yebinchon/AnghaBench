; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_redirect_news.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_redirect_news.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@sb = common dso_local global %struct.TYPE_14__* null, align 8
@MAX_SUBSCR = common dso_local global i32 0, align 4
@sb2 = common dso_local global %struct.TYPE_13__* null, align 8
@redirect_news_twice_cnt = common dso_local global i32 0, align 4
@redirect_news_cnt = common dso_local global i32 0, align 4
@redirect_news_len = common dso_local global i32 0, align 4
@engine_n = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redirect_news(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_12__* @get_subscribers(i32 %20, i32 0)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %13, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %141

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sb, align 8
  %33 = load i32, i32* @MAX_SUBSCR, align 4
  %34 = call i32 @treap_conv_to_array(i32 %31, %struct.TYPE_14__* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %63, %25
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sb, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sb, align 8
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 %54
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sb, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %58
  %60 = bitcast %struct.TYPE_14__* %55 to i8*
  %61 = bitcast %struct.TYPE_14__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  br label %62

62:                                               ; preds = %50, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sb2, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %19, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sb, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %71 = call i32 @cnt_srt(%struct.TYPE_14__* %68, i32 %69, %struct.TYPE_13__* %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @redirect_news_twice_cnt, align 4
  %76 = call i32 @STAT(i32 %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load i32, i32* @redirect_news_cnt, align 4
  %79 = call i32 @STAT(i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @redirect_news_len, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* @redirect_news_len, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %133, %77
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %136

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %116, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dl_abs(i32 %97)
  %99 = load i32, i32* @engine_n, align 4
  %100 = srem i32 %98, %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dl_abs(i32 %106)
  %108 = load i32, i32* @engine_n, align 4
  %109 = srem i32 %107, %108
  %110 = icmp ne i32 %100, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %91
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp sgt i32 %114, 50000
  br i1 %115, label %116, label %132

116:                                              ; preds = %111, %91, %87
  store i32 1, i32* %18, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %125
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sub nsw i32 %127, %128
  %130 = call i32 @redirect_news_(i32 %117, i32 %118, i32 %119, i32 %120, i8* %121, i32 %122, %struct.TYPE_13__* %126, i32 %129)
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %116, %111
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %83

136:                                              ; preds = %83
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (...) @flush_news()
  br label %141

141:                                              ; preds = %24, %139, %136
  ret void
}

declare dso_local %struct.TYPE_12__* @get_subscribers(i32, i32) #1

declare dso_local i32 @treap_conv_to_array(i32, %struct.TYPE_14__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cnt_srt(%struct.TYPE_14__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @dl_abs(i32) #1

declare dso_local i32 @redirect_news_(i32, i32, i32, i32, i8*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @flush_news(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
