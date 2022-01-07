; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_my_psort.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_my_psort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@P = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_psort(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %140

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = ashr i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %21
  %23 = bitcast %struct.TYPE_3__* %5 to i8*
  %24 = bitcast %struct.TYPE_3__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  br label %25

25:                                               ; preds = %131, %13
  br label %26

26:                                               ; preds = %60, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %58, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %52, %54
  br label %56

56:                                               ; preds = %46, %36
  %57 = phi i1 [ false, %36 ], [ %55, %46 ]
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi i1 [ true, %26 ], [ %57, %56 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %26

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %98, %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %70, %72
  br i1 %73, label %96, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %90, %92
  br label %94

94:                                               ; preds = %84, %74
  %95 = phi i1 [ false, %74 ], [ %93, %84 ]
  br label %96

96:                                               ; preds = %94, %64
  %97 = phi i1 [ true, %64 ], [ %95, %94 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %8, align 4
  br label %64

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = bitcast %struct.TYPE_3__* %6 to i8*
  %111 = bitcast %struct.TYPE_3__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %115
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = bitcast %struct.TYPE_3__* %116 to i8*
  %122 = bitcast %struct.TYPE_3__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 16, i1 false)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @P, align 8
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %126
  %128 = bitcast %struct.TYPE_3__* %127 to i8*
  %129 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  br label %130

130:                                              ; preds = %105, %101
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %25, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* %8, align 4
  call void @my_psort(i32 %136, i32 %137)
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %4, align 4
  call void @my_psort(i32 %138, i32 %139)
  br label %140

140:                                              ; preds = %135, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
