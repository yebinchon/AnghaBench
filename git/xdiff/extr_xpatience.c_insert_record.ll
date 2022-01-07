; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xpatience.c_insert_record.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xpatience.c_insert_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_12__** }
%struct.TYPE_8__ = type { i32 }

@NON_UNIQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.hashmap*, i32)* @insert_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_record(i32* %0, i32 %1, %struct.hashmap* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hashmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__**, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hashmap* %2, %struct.hashmap** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %17 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %16, i32 0, i32 6
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %24 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %23, i32 0, i32 6
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  br label %29

29:                                               ; preds = %22, %15
  %30 = phi %struct.TYPE_12__** [ %21, %15 ], [ %28, %22 ]
  store %struct.TYPE_12__** %30, %struct.TYPE_12__*** %9, align 8
  %31 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %31, i64 %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %10, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 1
  %41 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %42 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = srem i32 %40, %43
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %114, %29
  %46 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %47 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %46, i32 0, i32 3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %153

55:                                               ; preds = %45
  %56 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %57 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %56, i32 0, i32 6
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %60, align 8
  %62 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %63 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %62, i32 0, i32 3
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %61, i64 %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %11, align 8
  %74 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %75 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %106, label %86

86:                                               ; preds = %55
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %100 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %99, i32 0, i32 7
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @xdl_recmatch(i32 %89, i32 %92, i32 %95, i32 %98, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %86, %55
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  %109 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %110 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %113, %106
  br label %45

115:                                              ; preds = %86
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %120 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %134, label %124

124:                                              ; preds = %121
  %125 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %126 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %125, i32 0, i32 3
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %124, %121
  %135 = load i32, i32* @NON_UNIQUE, align 4
  %136 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %137 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %136, i32 0, i32 3
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  store i32 %135, i32* %142, align 8
  br label %152

143:                                              ; preds = %124
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %146 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %145, i32 0, i32 3
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  store i32 %144, i32* %151, align 8
  br label %152

152:                                              ; preds = %143, %134
  br label %250

153:                                              ; preds = %45
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %250

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %160 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %159, i32 0, i32 3
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i32 %158, i32* %165, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %170 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %169, i32 0, i32 3
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  store i32 %168, i32* %175, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %178 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %177, i32 0, i32 6
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %182, i64 %185
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @is_anchor(i32* %176, i32 %189)
  %191 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %192 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %191, i32 0, i32 3
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 5
  store i32 %190, i32* %197, align 8
  %198 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %199 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %198, i32 0, i32 5
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = icmp ne %struct.TYPE_11__* %200, null
  br i1 %201, label %211, label %202

202:                                              ; preds = %157
  %203 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %204 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %203, i32 0, i32 3
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i64 %207
  %209 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %210 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %209, i32 0, i32 5
  store %struct.TYPE_11__* %208, %struct.TYPE_11__** %210, align 8
  br label %211

211:                                              ; preds = %202, %157
  %212 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %213 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %212, i32 0, i32 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = icmp ne %struct.TYPE_11__* %214, null
  br i1 %215, label %216, label %237

216:                                              ; preds = %211
  %217 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %218 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %217, i32 0, i32 3
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 %221
  %223 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %224 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %223, i32 0, i32 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 4
  store %struct.TYPE_11__* %222, %struct.TYPE_11__** %226, align 8
  %227 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %228 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %227, i32 0, i32 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %231 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %230, i32 0, i32 3
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  store %struct.TYPE_11__* %229, %struct.TYPE_11__** %236, align 8
  br label %237

237:                                              ; preds = %216, %211
  %238 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %239 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %238, i32 0, i32 3
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %242
  %244 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %245 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %244, i32 0, i32 4
  store %struct.TYPE_11__* %243, %struct.TYPE_11__** %245, align 8
  %246 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %247 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %237, %156, %152
  ret void
}

declare dso_local i32 @xdl_recmatch(i32, i32, i32, i32, i32) #1

declare dso_local i32 @is_anchor(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
