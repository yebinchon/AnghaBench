; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_OverLB.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_OverLB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@SCROLLBAR_SIZE = common dso_local global i32 0, align 4
@WINDOW_LB_LEFTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_RIGHTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_THUMB = common dso_local global i32 0, align 4
@WINDOW_LB_PGUP = common dso_local global i32 0, align 4
@WINDOW_LB_PGDN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_ListBox_OverLB(%struct.TYPE_11__* %0, float %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %125

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %28, %33
  %35 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %36 = sub nsw i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load float, float* %6, align 4
  %42 = load float, float* %7, align 4
  %43 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %41, float %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %17
  %46 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  store i32 %46, i32* %4, align 4
  br label %234

47:                                               ; preds = %17
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  %59 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %60 = sub nsw i32 %58, %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load float, float* %6, align 4
  %63 = load float, float* %7, align 4
  %64 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %62, float %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  %67 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  store i32 %67, i32* %4, align 4
  br label %234

68:                                               ; preds = %47
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = call i32 @Item_ListBox_ThumbPosition(%struct.TYPE_11__* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load float, float* %6, align 4
  %74 = load float, float* %7, align 4
  %75 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %73, float %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @WINDOW_LB_THUMB, align 4
  store i32 %78, i32* %4, align 4
  br label %234

79:                                               ; preds = %68
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %86 = add nsw i32 %84, %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %88, %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  %93 = load float, float* %6, align 4
  %94 = load float, float* %7, align 4
  %95 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %93, float %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = load i32, i32* @WINDOW_LB_PGUP, align 4
  store i32 %98, i32* %4, align 4
  br label %234

99:                                               ; preds = %79
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %102 = add nsw i32 %100, %101
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %108, %113
  %115 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %116 = sub nsw i32 %114, %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = load float, float* %6, align 4
  %119 = load float, float* %7, align 4
  %120 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %118, float %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %99
  %123 = load i32, i32* @WINDOW_LB_PGDN, align 4
  store i32 %123, i32* %4, align 4
  br label %234

124:                                              ; preds = %99
  br label %233

125:                                              ; preds = %3
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %130, %135
  %137 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %138 = sub nsw i32 %136, %137
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load float, float* %6, align 4
  %150 = load float, float* %7, align 4
  %151 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %149, float %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %125
  %154 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  store i32 %154, i32* %4, align 4
  br label %234

155:                                              ; preds = %125
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %160, %165
  %167 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %168 = sub nsw i32 %166, %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %168, i32* %169, align 4
  %170 = load float, float* %6, align 4
  %171 = load float, float* %7, align 4
  %172 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %170, float %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %155
  %175 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  store i32 %175, i32* %4, align 4
  br label %234

176:                                              ; preds = %155
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = call i32 @Item_ListBox_ThumbPosition(%struct.TYPE_11__* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = load float, float* %6, align 4
  %182 = load float, float* %7, align 4
  %183 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %181, float %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = load i32, i32* @WINDOW_LB_THUMB, align 4
  store i32 %186, i32* %4, align 4
  br label %234

187:                                              ; preds = %176
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %194 = add nsw i32 %192, %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %194, i32* %195, align 4
  %196 = load i32, i32* %9, align 4
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %196, %198
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %199, i32* %200, align 4
  %201 = load float, float* %6, align 4
  %202 = load float, float* %7, align 4
  %203 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %201, float %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %187
  %206 = load i32, i32* @WINDOW_LB_PGUP, align 4
  store i32 %206, i32* %4, align 4
  br label %234

207:                                              ; preds = %187
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %210 = add nsw i32 %208, %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %210, i32* %211, align 4
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %216, %221
  %223 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %224 = sub nsw i32 %222, %223
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %224, i32* %225, align 4
  %226 = load float, float* %6, align 4
  %227 = load float, float* %7, align 4
  %228 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %226, float %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %207
  %231 = load i32, i32* @WINDOW_LB_PGDN, align 4
  store i32 %231, i32* %4, align 4
  br label %234

232:                                              ; preds = %207
  br label %233

233:                                              ; preds = %232, %124
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %233, %230, %205, %185, %174, %153, %122, %97, %77, %66, %45
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_10__*, float, float) #1

declare dso_local i32 @Item_ListBox_ThumbPosition(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
