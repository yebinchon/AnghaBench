; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_frame.c_quicly_encode_ack_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_frame.c_quicly_encode_ack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@QUICLY_FRAME_TYPE_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @quicly_encode_ack_frame(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @QUICLY_FRAME_TYPE_ACK, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32* @quicly_encodev(i32* %29, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32* @quicly_encodev(i32* %39, i32 %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = call i32* @quicly_encodev(i32* %42, i32 %46)
  store i32* %47, i32** %6, align 8
  br label %48

48:                                               ; preds = %4, %126
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = ptrtoint i32* %69 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = icmp slt i64 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %49
  store i32* null, i32** %5, align 8
  br label %129

77:                                               ; preds = %49
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = call i32* @quicly_encodev(i32* %78, i32 %82)
  store i32* %83, i32** %6, align 8
  br label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %10, align 8
  %87 = icmp eq i64 %85, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %127

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = icmp slt i64 %116, 8
  br i1 %117, label %118, label %119

118:                                              ; preds = %90
  store i32* null, i32** %5, align 8
  br label %129

119:                                              ; preds = %90
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = call i32* @quicly_encodev(i32* %120, i32 %124)
  store i32* %125, i32** %6, align 8
  br label %126

126:                                              ; preds = %119
  br label %48

127:                                              ; preds = %88
  %128 = load i32*, i32** %6, align 8
  store i32* %128, i32** %5, align 8
  br label %129

129:                                              ; preds = %127, %118, %76
  %130 = load i32*, i32** %5, align 8
  ret i32* %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @quicly_encodev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
