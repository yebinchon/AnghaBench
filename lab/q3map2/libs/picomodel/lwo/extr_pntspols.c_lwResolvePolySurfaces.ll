; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_pntspols.c_lwResolvePolySurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_pntspols.c_lwResolvePolySurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwResolvePolySurfaces(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %187

19:                                               ; preds = %4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_14__** @_pico_calloc(i32 %22, i32 8)
  store %struct.TYPE_14__** %23, %struct.TYPE_14__*** %10, align 8
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %25 = icmp ne %struct.TYPE_14__** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %187

27:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %64, %27
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %11, align 8
  br label %37

37:                                               ; preds = %59, %34
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcmp(i32 %43, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %40
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %55 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %55, i64 %57
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %58, align 8
  br label %63

59:                                               ; preds = %40
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %11, align 8
  br label %37

63:                                               ; preds = %53, %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %28

67:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %181, %67
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %184

74:                                               ; preds = %68
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = ptrtoint %struct.TYPE_14__* %82 to i64
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %74
  store i32 0, i32* %5, align 4
  br label %187

94:                                               ; preds = %87
  %95 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %95, i64 %97
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = icmp ne %struct.TYPE_14__* %99, null
  br i1 %100, label %168, label %101

101:                                              ; preds = %94
  %102 = call %struct.TYPE_14__* (...) @lwDefaultSurface()
  %103 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %103, i64 %105
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %106, align 8
  %107 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %107, i64 %109
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = icmp ne %struct.TYPE_14__* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %187

114:                                              ; preds = %101
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @strlen(i32 %121)
  %123 = add nsw i64 %122, 1
  %124 = call i32 @_pico_alloc(i64 %123)
  %125 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %125, i64 %127
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i32 %124, i32* %130, align 8
  %131 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %131, i64 %133
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %187

140:                                              ; preds = %114
  %141 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %141, i64 %143
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strcpy(i32 %147, i32 %154)
  %156 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %157 = bitcast %struct.TYPE_14__** %156 to i8**
  %158 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %158, i64 %160
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = call i32 @lwListAdd(i8** %157, %struct.TYPE_14__* %162)
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %140, %94
  %169 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %169, i64 %171
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  store %struct.TYPE_14__* %173, %struct.TYPE_14__** %180, align 8
  br label %181

181:                                              ; preds = %168
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %68

184:                                              ; preds = %68
  %185 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %186 = call i32 @_pico_free(%struct.TYPE_14__** %185)
  store i32 1, i32* %5, align 4
  br label %187

187:                                              ; preds = %184, %139, %113, %93, %26, %18
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_14__** @_pico_calloc(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_14__* @lwDefaultSurface(...) #1

declare dso_local i32 @_pico_alloc(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @lwListAdd(i8**, %struct.TYPE_14__*) #1

declare dso_local i32 @_pico_free(%struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
