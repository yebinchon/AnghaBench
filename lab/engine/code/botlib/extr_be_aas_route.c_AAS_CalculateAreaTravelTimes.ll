; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_CalculateAreaTravelTimes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_CalculateAreaTravelTimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i16***, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 (i32, i8*, i32)* }

@aasworld = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_CalculateAreaTravelTimes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %12 = icmp ne i16*** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %15 = call i32 @FreeMemory(i16*** %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %57, %16
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 4), align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %10, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PAD(i32 %48, i32 8)
  %50 = mul nsw i32 %45, %49
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 2
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %25
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %21

60:                                               ; preds = %21
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @GetClearedMemory(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = bitcast i8* %64 to i16***
  store i16*** %65, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %5, align 8
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %175, %60
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %178

75:                                               ; preds = %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 4), align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %7, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %10, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = bitcast i8* %84 to i16**
  %86 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16**, i16*** %86, i64 %88
  store i16** %85, i16*** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 8
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %5, align 8
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %171, %75
  %98 = load i32, i32* %2, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %174

103:                                              ; preds = %97
  %104 = load i8*, i8** %5, align 8
  %105 = bitcast i8* %104 to i16*
  %106 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16**, i16*** %106, i64 %108
  %110 = load i16**, i16*** %109, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16*, i16** %110, i64 %112
  store i16* %105, i16** %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @PAD(i32 %116, i32 8)
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 2
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 %119
  store i8* %121, i8** %5, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %128
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %3, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %8, align 8
  br label %133

133:                                              ; preds = %164, %103
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = icmp ne %struct.TYPE_8__* %134, null
  br i1 %135, label %136, label %170

136:                                              ; preds = %133
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @VectorCopy(i32 %143, i32 %144)
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call zeroext i16 @AAS_AreaTravelTime(i32 %146, i32 %147, i32 %150)
  %152 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16**, i16*** %152, i64 %154
  %156 = load i16**, i16*** %155, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16*, i16** %156, i64 %158
  %160 = load i16*, i16** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i16, i16* %160, i64 %162
  store i16 %151, i16* %163, align 2
  br label %164

164:                                              ; preds = %136
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  store %struct.TYPE_8__* %167, %struct.TYPE_8__** %8, align 8
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %133

170:                                              ; preds = %133
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %2, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %2, align 4
  br label %97

174:                                              ; preds = %97
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %1, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %1, align 4
  br label %71

178:                                              ; preds = %71
  ret void
}

declare dso_local i32 @FreeMemory(i16***) #1

declare dso_local i32 @PAD(i32, i32) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local zeroext i16 @AAS_AreaTravelTime(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
