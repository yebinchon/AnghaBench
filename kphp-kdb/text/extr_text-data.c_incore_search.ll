; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_incore_search.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_incore_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.msg_search_node*, i32 }
%struct.msg_search_node = type { i32, i32, i32, %struct.msg_search_node* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.msg_search_node* }

@MAX_SEARCH_SCANNED_INCORE_MESSAGES = common dso_local global i32 0, align 4
@incore_search.I = internal global i32 0, align 4
@QWords = common dso_local global i32 0, align 4
@Qn = common dso_local global i32 0, align 4
@TF_PLUS = common dso_local global i32 0, align 4
@s_xor_mask = common dso_local global i32 0, align 4
@s_and_mask = common dso_local global i32 0, align 4
@s_peer_id = common dso_local global i64 0, align 8
@s_min_time = common dso_local global i64 0, align 8
@s_max_time = common dso_local global i64 0, align 8
@Qq = common dso_local global i64 0, align 8
@text_shift = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @incore_search(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.msg_search_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.msg_search_node*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @MAX_SEARCH_SCANNED_INCORE_MESSAGES, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_12__* @ti_init_right(i32* @incore_search.I, i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.msg_search_node*, %struct.msg_search_node** %21, align 8
  store %struct.msg_search_node* %22, %struct.msg_search_node** %8, align 8
  br label %23

23:                                               ; preds = %172, %3
  %24 = load %struct.msg_search_node*, %struct.msg_search_node** %8, align 8
  %25 = icmp ne %struct.msg_search_node* %24, null
  br i1 %25, label %26, label %176

26:                                               ; preds = %23
  %27 = load %struct.msg_search_node*, %struct.msg_search_node** %8, align 8
  store %struct.msg_search_node* %27, %struct.msg_search_node** %12, align 8
  br label %28

28:                                               ; preds = %41, %26
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.msg_search_node*, %struct.msg_search_node** %8, align 8
  %36 = getelementptr inbounds %struct.msg_search_node, %struct.msg_search_node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i1 [ false, %28 ], [ %38, %31 ]
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call %struct.TYPE_12__* @ti_next_right(i32* @incore_search.I)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %11, align 8
  br label %28

43:                                               ; preds = %39
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.msg_search_node*, %struct.msg_search_node** %8, align 8
  %51 = getelementptr inbounds %struct.msg_search_node, %struct.msg_search_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.msg_search_node*, %struct.msg_search_node** %58, align 8
  store %struct.msg_search_node* %59, %struct.msg_search_node** %12, align 8
  %60 = call %struct.TYPE_12__* @ti_next_right(i32* @incore_search.I)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %11, align 8
  br label %61

61:                                               ; preds = %54, %46, %43
  %62 = load i32, i32* @QWords, align 4
  %63 = load i32, i32* @Qn, align 4
  %64 = load %struct.msg_search_node*, %struct.msg_search_node** %12, align 8
  %65 = getelementptr inbounds %struct.msg_search_node, %struct.msg_search_node* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.msg_search_node*, %struct.msg_search_node** %12, align 8
  %68 = getelementptr inbounds %struct.msg_search_node, %struct.msg_search_node* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @list_contained(i32 %62, i32 %63, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %171

72:                                               ; preds = %61
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.msg_search_node*, %struct.msg_search_node** %8, align 8
  %77 = getelementptr inbounds %struct.msg_search_node, %struct.msg_search_node* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_12__* @tree_lookup(i32 %75, i32 %78)
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %13, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %170

82:                                               ; preds = %72
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 7
  %87 = load i32, i32* @TF_PLUS, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @s_xor_mask, align 4
  %98 = xor i32 %96, %97
  %99 = load i32, i32* @s_and_mask, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %169, label %102

102:                                              ; preds = %82
  %103 = load i64, i64* @s_peer_id, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @s_peer_id, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %169

113:                                              ; preds = %105, %102
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @s_min_time, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %113
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @s_max_time, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %169

129:                                              ; preds = %121
  %130 = load i64, i64* @Qq, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  br label %176

137:                                              ; preds = %132
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @text_shift, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @aho_check_message(i64 %144, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %137
  br label %172

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153, %129
  %155 = load %struct.msg_search_node*, %struct.msg_search_node** %8, align 8
  %156 = getelementptr inbounds %struct.msg_search_node, %struct.msg_search_node* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %157, i32* %162, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %4, align 4
  br label %178

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168, %121, %113, %105, %82
  br label %170

170:                                              ; preds = %169, %72
  br label %171

171:                                              ; preds = %170, %61
  br label %172

172:                                              ; preds = %171, %152
  %173 = load %struct.msg_search_node*, %struct.msg_search_node** %8, align 8
  %174 = getelementptr inbounds %struct.msg_search_node, %struct.msg_search_node* %173, i32 0, i32 3
  %175 = load %struct.msg_search_node*, %struct.msg_search_node** %174, align 8
  store %struct.msg_search_node* %175, %struct.msg_search_node** %8, align 8
  br label %23

176:                                              ; preds = %136, %23
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %176, %166
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_12__* @ti_init_right(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @ti_next_right(i32*) #1

declare dso_local i64 @list_contained(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @tree_lookup(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @aho_check_message(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
