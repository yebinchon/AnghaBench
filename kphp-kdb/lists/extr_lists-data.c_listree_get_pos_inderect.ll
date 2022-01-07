; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_get_pos_inderect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_get_pos_inderect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__**, i32*, i32 }

@NIL = common dso_local global %struct.TYPE_7__* null, align 8
@TF_MINUS = common dso_local global i64 0, align 8
@TF_PLUS = common dso_local global i64 0, align 8
@rpos_to_delta = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @listree_get_pos_inderect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listree_get_pos_inderect(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %103, %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @NIL, align 8
  %29 = icmp ne %struct.TYPE_7__* %27, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = call i32 @NODE_RPOS(%struct.TYPE_7__* %32)
  %34 = sub nsw i32 %31, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @object_id_compare(i32 %35, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %103

48:                                               ; preds = %30
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = call i64 @NODE_TYPE(%struct.TYPE_7__* %55)
  %57 = load i64, i64* @TF_MINUS, align 8
  %58 = icmp ne i64 %56, %57
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ true, %51 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %65, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = call i64 @NODE_TYPE(%struct.TYPE_7__* %72)
  %74 = load i64, i64* @TF_MINUS, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = sub nsw i32 %71, %76
  store i32 %77, i32* %4, align 4
  br label %187

78:                                               ; preds = %48
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = call i64 @NODE_TYPE(%struct.TYPE_7__* %80)
  %82 = load i64, i64* @TF_PLUS, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = add nsw i32 %79, %84
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** @rpos_to_delta, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = call i64 @NODE_TYPE(%struct.TYPE_7__* %92)
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %90, %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %8, align 8
  br label %102

102:                                              ; preds = %78
  br label %103

103:                                              ; preds = %102, %42
  br label %26

104:                                              ; preds = %26
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %109, %110
  %112 = icmp sle i32 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br label %117

117:                                              ; preds = %113, %107, %104
  %118 = phi i1 [ false, %107 ], [ false, %104 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %180, %117
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %126, %127
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %181

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %131, %132
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @OARR_ENTRY(i32 %138, i32 %145)
  %147 = call i32 @object_id_compare(i32 %135, i32 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %130
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %12, align 4
  br label %180

152:                                              ; preds = %130
  %153 = load i32, i32* %16, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %11, align 4
  br label %179

157:                                              ; preds = %152
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %167, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %165, %171
  %173 = icmp slt i32 %164, %172
  br label %174

174:                                              ; preds = %163, %157
  %175 = phi i1 [ false, %157 ], [ %173, %163 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %4, align 4
  br label %187

179:                                              ; preds = %155
  br label %180

180:                                              ; preds = %179, %150
  br label %125

181:                                              ; preds = %125
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @assert(i32 %182)
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %184, %185
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %181, %174, %59
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @NODE_RPOS(%struct.TYPE_7__*) #1

declare dso_local i32 @object_id_compare(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_7__*) #1

declare dso_local i32 @OARR_ENTRY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
