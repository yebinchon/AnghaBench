; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_ranges.c_quicly_ranges_add.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_ranges.c_quicly_ranges_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_ranges_add(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp sle i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %141

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @insert_at(%struct.TYPE_7__* %25, i64 %26, i64 %27, i64 0)
  store i32 %28, i32* %4, align 4
  br label %141

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 @insert_at(%struct.TYPE_7__* %44, i64 %45, i64 %46, i64 %50)
  store i32 %51, i32* %4, align 4
  br label %141

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %79, %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %82

70:                                               ; preds = %59
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @insert_at(%struct.TYPE_7__* %74, i64 %75, i64 %76, i64 0)
  store i32 %77, i32* %4, align 4
  br label %141

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %8, align 8
  br label %59

82:                                               ; preds = %69
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %131, %82
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @merge_update(%struct.TYPE_7__* %95, i64 %96, i64 %97, i64 %98, i64 %99)
  store i32 %100, i32* %4, align 4
  br label %141

101:                                              ; preds = %84
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %101
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @insert_at(%struct.TYPE_7__* %117, i64 %118, i64 %119, i64 %120)
  store i32 %121, i32* %4, align 4
  br label %141

122:                                              ; preds = %111
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @merge_update(%struct.TYPE_7__* %123, i64 %124, i64 %125, i64 %126, i64 %127)
  store i32 %128, i32* %4, align 4
  br label %141

129:                                              ; preds = %101
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %8, align 8
  %134 = icmp ne i64 %132, 0
  br i1 %134, label %84, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @merge_update(%struct.TYPE_7__* %136, i64 %137, i64 %138, i64 0, i64 %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %135, %122, %116, %94, %73, %43, %24, %18
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @insert_at(%struct.TYPE_7__*, i64, i64, i64) #1

declare dso_local i32 @merge_update(%struct.TYPE_7__*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
