; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_EmitDrawNode_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_EmitDrawNode_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__**, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@numleafs = common dso_local global i32 0, align 4
@numnodes = common dso_local global i64 0, align 8
@MAX_MAP_NODES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"MAX_MAP_NODES\00", align 1
@dnodes = common dso_local global %struct.TYPE_10__* null, align 8
@planeused = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"WriteDrawNodes_r: odd planenum\00", align 1
@numfaces = common dso_local global i8* null, align 8
@c_nofaces = common dso_local global i32 0, align 4
@c_facenodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmitDrawNode_r(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PLANENUM_LEAF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = call i32 @EmitLeaf(%struct.TYPE_8__* %13)
  %15 = load i32, i32* @numleafs, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %172

17:                                               ; preds = %1
  %18 = load i64, i64* @numnodes, align 8
  %19 = load i64, i64* @MAX_MAP_NODES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dnodes, align 8
  %25 = load i64, i64* @numnodes, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %25
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %4, align 8
  %27 = load i64, i64* @numnodes, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* @numnodes, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @VectorCopy(i32 %31, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @VectorCopy(i32 %38, i32 %41)
  %43 = load i32*, i32** @planeused, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** @planeused, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = xor i64 %53, 1
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, 1
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %23
  %64 = call i32 @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %23
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** @numfaces, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* @c_nofaces, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @c_nofaces, align 4
  br label %85

82:                                               ; preds = %65
  %83 = load i32, i32* @c_facenodes, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @c_facenodes, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %5, align 8
  br label %89

89:                                               ; preds = %95, %85
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = call i32 @EmitFace(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %5, align 8
  br label %89

99:                                               ; preds = %89
  %100 = load i8*, i8** @numfaces, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %100 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %161, %99
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %113, label %164

113:                                              ; preds = %110
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %116, i64 %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PLANENUM_LEAF, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %113
  %126 = load i32, i32* @numleafs, align 4
  %127 = add nsw i32 %126, 1
  %128 = sub nsw i32 0, %127
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %137, i64 %139
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = call i32 @EmitLeaf(%struct.TYPE_8__* %141)
  br label %160

143:                                              ; preds = %113
  %144 = load i64, i64* @numnodes, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %154, i64 %156
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = call i32 @EmitDrawNode_r(%struct.TYPE_8__* %158)
  br label %160

160:                                              ; preds = %143, %125
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %110

164:                                              ; preds = %110
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dnodes, align 8
  %167 = ptrtoint %struct.TYPE_10__* %165 to i64
  %168 = ptrtoint %struct.TYPE_10__* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 40
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %164, %12
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @EmitLeaf(%struct.TYPE_8__*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @EmitFace(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
