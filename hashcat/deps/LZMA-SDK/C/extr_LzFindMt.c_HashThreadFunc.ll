; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFindMt.c_HashThreadFunc.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFindMt.c_HashThreadFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32*, i32 (i32, i32, i64, i64, i32*, i32, i32)*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64 }

@kMtMaxValForNormalize = common dso_local global i64 0, align 8
@kMtHashBlockSize = common dso_local global i32 0, align 4
@kMtHashNumBlocksMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @HashThreadFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HashThreadFunc(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %3, align 8
  br label %13

13:                                               ; preds = %221, %1
  store i32 0, i32* %4, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 8
  %16 = call i32 @Event_Wait(i32* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 7
  %19 = call i32 @Event_Set(i32* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = call i32 @MatchFinder_Init_HighHash(%struct.TYPE_15__* %22)
  br label %24

24:                                               ; preds = %206, %49, %13
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  ret void

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = call i32 @Event_Set(i32* %40)
  br label %221

42:                                               ; preds = %30
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %5, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = call i64 @MatchFinder_NeedMove(%struct.TYPE_15__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = call i32 @CriticalSection_Enter(i32* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = call i32 @CriticalSection_Enter(i32* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = call i32* @Inline_MatchFinder_GetPointerToCurrentPos(%struct.TYPE_15__* %58)
  store i32* %59, i32** %6, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = call i32 @MatchFinder_MoveBlock(%struct.TYPE_15__* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = call i32* @Inline_MatchFinder_GetPointerToCurrentPos(%struct.TYPE_15__* %63)
  %65 = ptrtoint i32* %62 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = call i32 @CriticalSection_Leave(i32* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = call i32 @CriticalSection_Leave(i32* %86)
  br label %24

88:                                               ; preds = %42
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = call i32 @Semaphore_Wait(i32* %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = call i32 @MatchFinder_ReadIfRequired(%struct.TYPE_15__* %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @kMtMaxValForNormalize, align 8
  %98 = load i32, i32* @kMtHashBlockSize, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %97, %99
  %101 = icmp sgt i64 %96, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %88
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %105, %109
  %111 = sub nsw i64 %110, 1
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %8, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @MatchFinder_ReduceOffsets(%struct.TYPE_15__* %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  %128 = call i32 @MatchFinder_Normalize3(i32 %116, i64 %123, i64 %127)
  br label %129

129:                                              ; preds = %102, %88
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @kMtHashNumBlocksMask, align 4
  %136 = and i32 %133, %135
  %137 = load i32, i32* @kMtHashBlockSize, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %132, i64 %139
  store i32* %140, i32** %9, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %10, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 2, i32* %151, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp sge i32 %155, %158
  br i1 %159, label %160, label %206

160:                                              ; preds = %129
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %161, %164
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @kMtHashBlockSize, align 4
  %169 = sub nsw i32 %168, 2
  %170 = icmp sgt i32 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i32, i32* @kMtHashBlockSize, align 4
  %173 = sub nsw i32 %172, 2
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %171, %160
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  %177 = load i32 (i32, i32, i64, i64, i32*, i32, i32)*, i32 (i32, i32, i64, i64, i32*, i32, i32)** %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 8
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i32 %177(i32 %180, i32 %184, i64 %191, i64 %194, i32* %196, i32 %197, i32 %200)
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 2, %202
  %204 = load i32*, i32** %9, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %174, %129
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = call i32 @Semaphore_Release1(i32* %219)
  br label %24

221:                                              ; preds = %35
  br label %13
}

declare dso_local i32 @Event_Wait(i32*) #1

declare dso_local i32 @Event_Set(i32*) #1

declare dso_local i32 @MatchFinder_Init_HighHash(%struct.TYPE_15__*) #1

declare dso_local i64 @MatchFinder_NeedMove(%struct.TYPE_15__*) #1

declare dso_local i32 @CriticalSection_Enter(i32*) #1

declare dso_local i32* @Inline_MatchFinder_GetPointerToCurrentPos(%struct.TYPE_15__*) #1

declare dso_local i32 @MatchFinder_MoveBlock(%struct.TYPE_15__*) #1

declare dso_local i32 @CriticalSection_Leave(i32*) #1

declare dso_local i32 @Semaphore_Wait(i32*) #1

declare dso_local i32 @MatchFinder_ReadIfRequired(%struct.TYPE_15__*) #1

declare dso_local i32 @MatchFinder_ReduceOffsets(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @MatchFinder_Normalize3(i32, i64, i64) #1

declare dso_local i32 @Semaphore_Release1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
