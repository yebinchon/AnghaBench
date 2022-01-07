; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_AddLoopSounds.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_AddLoopSounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, %struct.TYPE_6__*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__* }

@S_AddLoopSounds.loopFrame = internal global i32 0, align 4
@numLoopChannels = common dso_local global i64 0, align 8
@MAX_GENTITIES = common dso_local global i32 0, align 4
@loopSounds = common dso_local global %struct.TYPE_7__* null, align 8
@loop_channels = common dso_local global %struct.TYPE_8__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_AddLoopSounds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i64 0, i64* @numLoopChannels, align 8
  %11 = call i32 (...) @Com_Milliseconds()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @S_AddLoopSounds.loopFrame, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @S_AddLoopSounds.loopFrame, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %174, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @MAX_GENTITIES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %177

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @loopSounds, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_AddLoopSounds.loopFrame, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %18
  br label %174

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @S_SpatializeOrigin(i32 %42, i32 127, i32* %4, i32* %5)
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @S_SpatializeOrigin(i32 %47, i32 90, i32* %4, i32* %5)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %114, %49
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @MAX_GENTITIES, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %117

61:                                               ; preds = %57
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @loopSounds, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %10, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %61
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = icmp ne %struct.TYPE_6__* %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75, %70, %61
  br label %114

84:                                               ; preds = %75
  %85 = load i32, i32* @S_AddLoopSounds.loopFrame, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @S_SpatializeOrigin(i32 %95, i32 127, i32* %6, i32* %7)
  br label %102

97:                                               ; preds = %84
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @S_SpatializeOrigin(i32 %100, i32 90, i32* %6, i32* %7)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %102, %83
  %115 = load i32, i32* %2, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %2, align 4
  br label %57

117:                                              ; preds = %57
  %118 = load i32, i32* %4, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %174

124:                                              ; preds = %120, %117
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @loop_channels, align 8
  %126 = load i64, i64* @numLoopChannels, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %126
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %8, align 8
  %128 = load i32, i32* %4, align 4
  %129 = icmp sgt i32 %128, 255
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 255, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %124
  %132 = load i32, i32* %5, align 4
  %133 = icmp sgt i32 %132, 255
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 255, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %131
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 127, i32* %137, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 7
  store %struct.TYPE_6__* %146, %struct.TYPE_6__** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 6
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @qfalse, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i64, i64* @numLoopChannels, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* @numLoopChannels, align 8
  %169 = load i64, i64* @numLoopChannels, align 8
  %170 = load i64, i64* @MAX_CHANNELS, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %135
  br label %177

173:                                              ; preds = %135
  br label %174

174:                                              ; preds = %173, %123, %33
  %175 = load i32, i32* %1, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %1, align 4
  br label %14

177:                                              ; preds = %172, %14
  ret void
}

declare dso_local i32 @Com_Milliseconds(...) #1

declare dso_local i32 @S_SpatializeOrigin(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
