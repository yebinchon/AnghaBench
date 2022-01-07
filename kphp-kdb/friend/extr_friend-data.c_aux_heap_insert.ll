; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_aux_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_aux_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HN = common dso_local global i32 0, align 4
@R_max = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_4__** null, align 8
@AUX_HEAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @aux_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_heap_insert(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @HN, align 4
  %10 = load i32, i32* @R_max, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %84

12:                                               ; preds = %1
  %13 = load i32, i32* @HN, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %12
  br label %125

24:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %67
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @HN, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %78

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HN, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %36, %32
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %78

67:                                               ; preds = %56
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %76, align 8
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %4, align 4
  br label %25

78:                                               ; preds = %66, %31
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %83, align 8
  br label %125

84:                                               ; preds = %1
  %85 = load i32, i32* @HN, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @HN, align 4
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @HN, align 4
  %88 = load i32, i32* @AUX_HEAP_SIZE, align 4
  %89 = icmp slt i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  br label %92

92:                                               ; preds = %108, %84
  %93 = load i32, i32* %4, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %98, i64 %100
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %119

108:                                              ; preds = %95
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %114, i64 %116
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %117, align 8
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %4, align 4
  br label %92

119:                                              ; preds = %107, %92
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @H, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %121, i64 %123
  store %struct.TYPE_4__* %120, %struct.TYPE_4__** %124, align 8
  br label %125

125:                                              ; preds = %23, %119, %78
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
