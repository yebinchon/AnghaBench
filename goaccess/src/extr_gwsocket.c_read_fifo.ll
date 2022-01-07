; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gwsocket.c_read_fifo.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gwsocket.c_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i8*, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to select: %s.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"No file descriptor set on read_message()\0A\00", align 1
@HDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_fifo(%struct.TYPE_6__* %0, i32 %1, i32 %2, void (i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i32)*, align 8
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store void (i32)* %3, void (i32)** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store %struct.TYPE_5__** %21, %struct.TYPE_5__*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = call i32 @FD_ZERO(i32* %7)
  %26 = call i32 @FD_ZERO(i32* %8)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FD_SET(i32 %31, i32* %7)
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @FD_SET(i32 %33, i32* %7)
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MAX(i32 %35, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @select(i32 %43, i32* %7, i32* %8, i32* null, i32* null)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %54

46:                                               ; preds = %4
  %47 = load i32, i32* @errno, align 4
  switch i32 %47, label %49 [
    i32 128, label %48
  ]

48:                                               ; preds = %46
  br label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @FATAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %48
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @FD_ISSET(i32 %59, i32* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %173

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @FD_ISSET(i32 %64, i32* %7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 @LOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %173

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @HDR_SIZE, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %69
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @ws_read_fifo(i32 %79, i8* %82, i32* %84, i32 %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %173

90:                                               ; preds = %78
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %173

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %69
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @unpack_uint32(i8* %100, i32* %17)
  %102 = load i8*, i8** %11, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @unpack_uint32(i8* %105, i32* %18)
  %107 = load i8*, i8** %11, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %11, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @unpack_uint32(i8* %110, i32* %19)
  %112 = load i8*, i8** %11, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %11, align 8
  %115 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = icmp eq %struct.TYPE_5__* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %96
  %119 = call i8* @xcalloc(i32 1, i32 24)
  %120 = bitcast i8* %119 to %struct.TYPE_5__*
  %121 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %121, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %19, align 4
  %131 = call i8* @xcalloc(i32 %130, i32 1)
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store i8* %131, i8** %134, align 8
  br label %135

135:                                              ; preds = %118, %96
  %136 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %13, align 4
  %140 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %135
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @ws_read_fifo(i32 %149, i8* %153, i32* %156, i32 %157, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %148
  store i32 0, i32* %5, align 4
  br label %173

162:                                              ; preds = %148
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %173

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %135
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %170 = call i32 @clear_fifo_packet(%struct.TYPE_6__* %169)
  %171 = load void (i32)*, void (i32)** %9, align 8
  %172 = load i32, i32* %17, align 4
  call void %171(i32 %172)
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %168, %166, %161, %94, %89, %67, %62
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @ws_read_fifo(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @unpack_uint32(i8*, i32*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @clear_fifo_packet(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
