; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_process_changes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_process_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@MAX_SUBSCR = common dso_local global i32 0, align 4
@LOG_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Too many subscribers %d [id = %lld]\0A\00", align 1
@sb = common dso_local global %struct.TYPE_9__* null, align 8
@process_changes_cnt = common dso_local global i32 0, align 4
@changes_len_max = common dso_local global i32 0, align 4
@process_changes_total_len = common dso_local global i32 0, align 4
@changes_add_rev_cnt = common dso_local global i32 0, align 4
@changes_add_rev_len = common dso_local global i32 0, align 4
@changes_add_cnt = common dso_local global i32 0, align 4
@changes_add_len = common dso_local global i32 0, align 4
@changes_del_rev_cnt = common dso_local global i32 0, align 4
@changes_del_rev_len = common dso_local global i32 0, align 4
@changes_del_cnt = common dso_local global i32 0, align 4
@changes_del_len = common dso_local global i32 0, align 4
@treap_cnt = common dso_local global i32 0, align 4
@engine_n = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_changes(i32 %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %178

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MAX_SUBSCR, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @LOG_DEF, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dl_log_add(i32 %24, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @MAX_SUBSCR, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sb, align 8
  %33 = call i32 @cnt_srt(i32* %30, i32 %31, %struct.TYPE_9__* %32)
  %34 = load i32, i32* @process_changes_cnt, align 4
  %35 = call i32 @STAT(i32 %34)
  %36 = load i32, i32* @changes_len_max, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @STAT_MAX(i32 %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @process_changes_total_len, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @process_changes_total_len, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %29
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* @changes_add_rev_cnt, align 4
  %49 = call i32 @STAT(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @changes_add_rev_len, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* @changes_add_rev_len, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @changes_add_cnt, align 4
  %55 = call i32 @STAT(i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @changes_add_len, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* @changes_add_len, align 4
  br label %59

59:                                               ; preds = %53, %47
  br label %76

60:                                               ; preds = %29
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @changes_del_rev_cnt, align 4
  %65 = call i32 @STAT(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @changes_del_rev_len, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* @changes_del_rev_len, align 4
  br label %75

69:                                               ; preds = %60
  %70 = load i32, i32* @changes_del_cnt, align 4
  %71 = call i32 @STAT(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @changes_del_len, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* @changes_del_len, align 4
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %59
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %170, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %173

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %131

88:                                               ; preds = %85
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @treap_cnt, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* @treap_cnt, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %88
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sb, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sb, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (...) @rand()
  %113 = call i32 @treap_add(%struct.TYPE_8__* %99, i32 %105, i32 %111, i32 %112)
  br label %123

114:                                              ; preds = %88
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sb, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @treap_del(%struct.TYPE_8__* %115, i32 %121)
  br label %123

123:                                              ; preds = %114, %98
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @treap_cnt, align 4
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* @treap_cnt, align 4
  br label %131

131:                                              ; preds = %123, %85
  br label %132

132:                                              ; preds = %131, %81
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %156, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sb, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dl_abs(i32 %142)
  %144 = load i32, i32* @engine_n, align 4
  %145 = srem i32 %143, %144
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sb, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dl_abs(i32 %151)
  %153 = load i32, i32* @engine_n, align 4
  %154 = srem i32 %152, %153
  %155 = icmp ne i32 %145, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %136, %132
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sb, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @send_to_news_(i32 %157, %struct.TYPE_9__* %161, i32 %164, i32 %165, i32 %166)
  store i32 1, i32* %15, align 4
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %156, %136
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %77

173:                                              ; preds = %77
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 (...) @flush_news()
  br label %178

178:                                              ; preds = %18, %176, %173
  ret void
}

declare dso_local i32 @dl_log_add(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @cnt_srt(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @STAT_MAX(i32, i32) #1

declare dso_local i32 @treap_add(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @treap_del(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dl_abs(i32) #1

declare dso_local i32 @send_to_news_(i32, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @flush_news(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
