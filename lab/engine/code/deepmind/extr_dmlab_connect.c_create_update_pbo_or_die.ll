; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_create_update_pbo_or_die.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_create_update_pbo_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GL_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"GL Error creating PBO buffers.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_STREAM_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to generate PBO data buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @create_update_pbo_or_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_update_pbo_or_die(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @qglGenBuffers(i32 1, i32* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = call i32 @qglGenBuffers(i32 1, i32* %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = call i64 (...) @qglGetError()
  %32 = load i64, i64* @GL_NO_ERROR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 (...) @abort() #3
  unreachable

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = mul nsw i32 %45, 3
  store i32 %46, i32* %3, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %38
  %55 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @qglBindBuffer(i32 %55, i32 %60)
  %62 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @GL_STREAM_READ, align 4
  %65 = call i32 @qglBufferData(i32 %62, i32 %63, i32* null, i32 %64)
  %66 = call i64 (...) @qglGetError()
  %67 = load i64, i64* @GL_NO_ERROR, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i32 (...) @abort() #3
  unreachable

73:                                               ; preds = %54
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %80 = call i32 @qglBindBuffer(i32 %79, i32 0)
  br label %81

81:                                               ; preds = %73, %38
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  store i32 %88, i32* %4, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %81
  %97 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @qglBindBuffer(i32 %97, i32 %102)
  %104 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @GL_STREAM_READ, align 4
  %107 = call i32 @qglBufferData(i32 %104, i32 %105, i32* null, i32 %106)
  %108 = call i64 (...) @qglGetError()
  %109 = load i64, i64* @GL_NO_ERROR, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %96
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = call i32 (...) @abort() #3
  unreachable

115:                                              ; preds = %96
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %122 = call i32 @qglBindBuffer(i32 %121, i32 0)
  br label %123

123:                                              ; preds = %115, %81
  ret void
}

declare dso_local i32 @qglGenBuffers(i32, i32*) #1

declare dso_local i64 @qglGetError(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i32 @qglBufferData(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
