; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_MipMap.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_MipMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@r_simpleMipMaps = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @R_MipMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_MipMap(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @r_simpleMipMaps, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @R_MipMap2(i32* %16, i32 %17, i32 %18)
  br label %219

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %219

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %9, align 8
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %89, %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = ashr i32 %55, 1
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = ashr i32 %65, 1
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = ashr i32 %75, 1
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = ashr i32 %85, 1
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %48
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32* %95, i32** %4, align 8
  br label %44

96:                                               ; preds = %44
  br label %219

97:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %212, %97
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %219

102:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %204, %102
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %211

107:                                              ; preds = %103
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 0
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %114, %120
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %121, %127
  %129 = ashr i32 %128, 2
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 5
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %138, %144
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 5
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %145, %151
  %153 = ashr i32 %152, 2
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  %163 = load i32*, i32** %4, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %162, %168
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 6
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %169, %175
  %177 = ashr i32 %176, 2
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 7
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %182, %185
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 3
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %186, %192
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 7
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %193, %199
  %201 = ashr i32 %200, 2
  %202 = load i32*, i32** %9, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %107
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  store i32* %208, i32** %9, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 8
  store i32* %210, i32** %4, align 8
  br label %103

211:                                              ; preds = %103
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32*, i32** %4, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %4, align 8
  br label %98

219:                                              ; preds = %15, %26, %96, %98
  ret void
}

declare dso_local i32 @R_MipMap2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
