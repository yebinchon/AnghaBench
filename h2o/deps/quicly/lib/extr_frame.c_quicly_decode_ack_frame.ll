; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_frame.c_quicly_decode_ack_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_frame.c_quicly_decode_ack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64*, i64* }

@UINT64_MAX = common dso_local global i64 0, align 8
@QUICLY_ACK_MAX_GAPS = common dso_local global i64 0, align 8
@QUICLY_TRANSPORT_ERROR_FRAME_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_decode_ack_frame(i32** %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @quicly_decodev(i32** %14, i32* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* @UINT64_MAX, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %152

22:                                               ; preds = %4
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @quicly_decodev(i32** %23, i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* @UINT64_MAX, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %152

31:                                               ; preds = %22
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @quicly_decodev(i32** %32, i32* %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* @UINT64_MAX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %152

38:                                               ; preds = %31
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @quicly_decodev(i32** %39, i32* %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* @UINT64_MAX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %152

45:                                               ; preds = %38
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %152

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %61, i64* %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %129, %52
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %132

72:                                               ; preds = %68
  %73 = load i32**, i32*** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @quicly_decodev(i32** %73, i32* %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* @UINT64_MAX, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %152

79:                                               ; preds = %72
  %80 = load i32**, i32*** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i64 @quicly_decodev(i32** %80, i32* %81)
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* @UINT64_MAX, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %152

86:                                               ; preds = %79
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @QUICLY_ACK_MAX_GAPS, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %86
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = add nsw i64 %94, %95
  %97 = add nsw i64 %96, 2
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %152

100:                                              ; preds = %90
  %101 = load i64, i64* %12, align 8
  %102 = add nsw i64 %101, 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64 %102, i64* %107, align 8
  %108 = load i64, i64* %13, align 8
  %109 = add nsw i64 %108, 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add nsw i64 %113, 1
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %109, i64* %115, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %13, align 8
  %118 = add nsw i64 %116, %117
  %119 = add nsw i64 %118, 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %100, %86
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %10, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %68

132:                                              ; preds = %68
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %132
  store i64 0, i64* %10, align 8
  br label %136

136:                                              ; preds = %147, %135
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %137, 3
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i32**, i32*** %6, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = call i64 @quicly_decodev(i32** %140, i32* %141)
  %143 = load i64, i64* @UINT64_MAX, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %152

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %10, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %10, align 8
  br label %136

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150, %132
  store i32 0, i32* %5, align 4
  br label %154

152:                                              ; preds = %145, %99, %85, %78, %51, %44, %37, %30, %21
  %153 = load i32, i32* @QUICLY_TRANSPORT_ERROR_FRAME_ENCODING, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %151
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @quicly_decodev(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
