; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_query_kill_duplicate_words.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_query_kill_duplicate_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.query_nodes_list* }
%struct.query_nodes_list = type { %struct.TYPE_8__*, %struct.query_nodes_list* }

@qn_cum_and = common dso_local global i64 0, align 8
@qn_cum_or = common dso_local global i64 0, align 8
@qn_and = common dso_local global i32 0, align 4
@qn_or = common dso_local global i32 0, align 4
@qn_word = common dso_local global i64 0, align 8
@cmp_query_node = common dso_local global i32 0, align 4
@tot_query_nodes_kill_dup = common dso_local global i64 0, align 8
@MAX_QUERY_NODES = common dso_local global i64 0, align 8
@query_nodes_kill_dup_buffer = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*)* @query_kill_duplicate_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @query_kill_duplicate_words(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.query_nodes_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %225

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @qn_cum_and, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @qn_cum_or, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %211

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @qn_cum_and, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @qn_and, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @qn_or, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load %struct.query_nodes_list*, %struct.query_nodes_list** %40, align 8
  store %struct.query_nodes_list* %41, %struct.query_nodes_list** %5, align 8
  br label %42

42:                                               ; preds = %54, %37
  %43 = load %struct.query_nodes_list*, %struct.query_nodes_list** %5, align 8
  %44 = icmp ne %struct.query_nodes_list* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.query_nodes_list*, %struct.query_nodes_list** %5, align 8
  %47 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call %struct.TYPE_8__* @query_kill_duplicate_words(%struct.TYPE_8__* %48)
  %50 = load %struct.query_nodes_list*, %struct.query_nodes_list** %5, align 8
  %51 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %50, i32 0, i32 0
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %45
  %55 = load %struct.query_nodes_list*, %struct.query_nodes_list** %5, align 8
  %56 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %55, i32 0, i32 1
  %57 = load %struct.query_nodes_list*, %struct.query_nodes_list** %56, align 8
  store %struct.query_nodes_list* %57, %struct.query_nodes_list** %5, align 8
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = call %struct.TYPE_8__** @zzmalloc(i32 %62)
  store %struct.TYPE_8__** %63, %struct.TYPE_8__*** %8, align 8
  store i32 0, i32* %7, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load %struct.query_nodes_list*, %struct.query_nodes_list** %65, align 8
  store %struct.query_nodes_list* %66, %struct.query_nodes_list** %5, align 8
  br label %67

67:                                               ; preds = %79, %58
  %68 = load %struct.query_nodes_list*, %struct.query_nodes_list** %5, align 8
  %69 = icmp ne %struct.query_nodes_list* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.query_nodes_list*, %struct.query_nodes_list** %5, align 8
  %72 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %74, i64 %77
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %78, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load %struct.query_nodes_list*, %struct.query_nodes_list** %5, align 8
  %81 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %80, i32 0, i32 1
  %82 = load %struct.query_nodes_list*, %struct.query_nodes_list** %81, align 8
  store %struct.query_nodes_list* %82, %struct.query_nodes_list** %5, align 8
  br label %67

83:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %114, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %89, i64 %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @qn_word, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %88
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %99, i64 %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @get_word_frequency(i64 %105)
  %107 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %107, i64 %109
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  store i32 %106, i32* %112, align 8
  br label %113

113:                                              ; preds = %98, %88
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %84

117:                                              ; preds = %84
  %118 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @cmp_query_node, align 4
  %121 = call i32 @qsort(%struct.TYPE_8__** %118, i32 %119, i32 8, i32 %120)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %122

122:                                              ; preds = %164, %117
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %167

126:                                              ; preds = %122
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @qn_word, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %152, label %136

136:                                              ; preds = %126
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %137, i64 %139
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %144, i64 %146
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %143, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %136, %126
  %153 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %153, i64 %155
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %158, i64 %161
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %162, align 8
  br label %163

163:                                              ; preds = %152, %136
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %122

167:                                              ; preds = %122
  %168 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %168, i64 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  store %struct.TYPE_8__* %170, %struct.TYPE_8__** %10, align 8
  store i32 1, i32* %6, align 4
  br label %171

171:                                              ; preds = %200, %167
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %171
  %176 = load i64, i64* @tot_query_nodes_kill_dup, align 8
  %177 = load i64, i64* @MAX_QUERY_NODES, align 8
  %178 = icmp slt i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** @query_nodes_kill_dup_buffer, align 8
  %182 = load i64, i64* @tot_query_nodes_kill_dup, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* @tot_query_nodes_kill_dup, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %182
  store %struct.TYPE_8__* %184, %struct.TYPE_8__** %11, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  store %struct.TYPE_8__* %189, %struct.TYPE_8__** %191, align 8
  %192 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %192, i64 %194
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  store %struct.TYPE_8__* %196, %struct.TYPE_8__** %198, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %199, %struct.TYPE_8__** %10, align 8
  br label %200

200:                                              ; preds = %175
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %171

203:                                              ; preds = %171
  %204 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 8, %206
  %208 = trunc i64 %207 to i32
  %209 = call i32 @zzfree(%struct.TYPE_8__** %204, i32 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %210, %struct.TYPE_8__** %2, align 8
  br label %225

211:                                              ; preds = %21
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = call %struct.TYPE_8__* @query_kill_duplicate_words(%struct.TYPE_8__* %214)
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 3
  store %struct.TYPE_8__* %215, %struct.TYPE_8__** %217, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = call %struct.TYPE_8__* @query_kill_duplicate_words(%struct.TYPE_8__* %220)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  store %struct.TYPE_8__* %221, %struct.TYPE_8__** %223, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %224, %struct.TYPE_8__** %2, align 8
  br label %225

225:                                              ; preds = %211, %203, %14
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %226
}

declare dso_local %struct.TYPE_8__** @zzmalloc(i32) #1

declare dso_local i32 @get_word_frequency(i64) #1

declare dso_local i32 @qsort(%struct.TYPE_8__**, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zzfree(%struct.TYPE_8__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
