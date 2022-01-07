; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_RecursivePassageFlow.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_RecursivePassageFlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_15__*, i64 }

@leafs = common dso_local global %struct.TYPE_17__* null, align 8
@portals = common dso_local global %struct.TYPE_13__* null, align 8
@portalbytes = common dso_local global i32 0, align 4
@stat_done = common dso_local global i64 0, align 8
@portallongs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecursivePassageFlow(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** @leafs, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i64 %24
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i64*
  store i64* %39, i64** %15, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %10, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %183, %3
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %187

50:                                               ; preds = %44
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %53, i64 %55
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %8, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %183

63:                                               ; preds = %50
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %11, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @portals, align 8
  %69 = ptrtoint %struct.TYPE_13__* %67 to i64
  %70 = ptrtoint %struct.TYPE_13__* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 48
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %20, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %20, align 4
  %78 = ashr i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %20, align 4
  %83 = and i32 %82, 7
  %84 = shl i32 1, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %63
  br label %183

88:                                               ; preds = %63
  %89 = load i32, i32* %20, align 4
  %90 = and i32 %89, 7
  %91 = shl i32 1, %90
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %20, align 4
  %98 = ashr i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %91
  store i32 %102, i32* %100, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = bitcast i32* %105 to i64*
  store i64* %106, i64** %16, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i64*
  store i64* %110, i64** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to i64*
  store i64* %113, i64** %14, align 8
  %114 = load i64*, i64** %14, align 8
  %115 = load i64*, i64** %16, align 8
  %116 = load i32, i32* @portalbytes, align 4
  %117 = call i32 @memcpy(i64* %114, i64* %115, i32 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @stat_done, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %88
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i64*
  store i64* %127, i64** %18, align 8
  br label %133

128:                                              ; preds = %88
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64* %132, i64** %18, align 8
  br label %133

133:                                              ; preds = %128, %123
  store i64 0, i64* %19, align 8
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %172, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @portallongs, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %175

138:                                              ; preds = %134
  %139 = load i64*, i64** %14, align 8
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = load i64*, i64** %17, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %17, align 8
  %145 = load i64, i64* %143, align 8
  %146 = load i64*, i64** %18, align 8
  %147 = getelementptr inbounds i64, i64* %146, i32 1
  store i64* %147, i64** %18, align 8
  %148 = load i64, i64* %146, align 8
  %149 = and i64 %145, %148
  %150 = load i64*, i64** %14, align 8
  %151 = load i64, i64* %150, align 8
  %152 = and i64 %151, %149
  store i64 %152, i64* %150, align 8
  %153 = load i64*, i64** %14, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %15, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = xor i64 %159, -1
  %161 = and i64 %154, %160
  %162 = load i64, i64* %19, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %19, align 8
  br label %169

164:                                              ; preds = %138
  %165 = load i64*, i64** %17, align 8
  %166 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %166, i64** %17, align 8
  %167 = load i64*, i64** %18, align 8
  %168 = getelementptr inbounds i64, i64* %167, i32 1
  store i64* %168, i64** %18, align 8
  br label %169

169:                                              ; preds = %164, %142
  %170 = load i64*, i64** %14, align 8
  %171 = getelementptr inbounds i64, i64* %170, i32 1
  store i64* %171, i64** %14, align 8
  br label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %134

175:                                              ; preds = %134
  %176 = load i64, i64* %19, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  br label %183

179:                                              ; preds = %175
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  call void @RecursivePassageFlow(%struct.TYPE_13__* %180, %struct.TYPE_14__* %181, %struct.TYPE_15__* %7)
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %182, align 8
  br label %183

183:                                              ; preds = %179, %178, %87, %62
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %186, %struct.TYPE_16__** %10, align 8
  br label %44

187:                                              ; preds = %44
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
