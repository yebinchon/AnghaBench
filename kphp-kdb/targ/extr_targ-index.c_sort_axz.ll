; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_sort_axz.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_sort_axz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_user_view_triple = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad_user_view_triple*, i64)* @sort_axz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_axz(%struct.ad_user_view_triple* %0, i64 %1) #0 {
  %3 = alloca %struct.ad_user_view_triple*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ad_user_view_triple, align 4
  store %struct.ad_user_view_triple* %0, %struct.ad_user_view_triple** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %130

13:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = ashr i64 %16, 1
  %18 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %15, i64 %17
  %19 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = ashr i64 %22, 1
  %24 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %21, i64 %23
  %25 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %117, %13
  br label %28

28:                                               ; preds = %56, %27
  %29 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %29, i64 %30
  %32 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %54, label %36

36:                                               ; preds = %28
  %37 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %37, i64 %38
  %40 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %45, i64 %46
  %48 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br label %52

52:                                               ; preds = %44, %36
  %53 = phi i1 [ false, %36 ], [ %51, %44 ]
  br label %54

54:                                               ; preds = %52, %28
  %55 = phi i1 [ true, %28 ], [ %53, %52 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %28

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %88, %59
  %61 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %61, i64 %62
  %64 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %86, label %68

68:                                               ; preds = %60
  %69 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %69, i64 %70
  %72 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %77, i64 %78
  %80 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %81, %82
  br label %84

84:                                               ; preds = %76, %68
  %85 = phi i1 [ false, %68 ], [ %83, %76 ]
  br label %86

86:                                               ; preds = %84, %60
  %87 = phi i1 [ true, %60 ], [ %85, %84 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i64, i64* %6, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %6, align 8
  br label %60

91:                                               ; preds = %86
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %96, i64 %97
  %99 = bitcast %struct.ad_user_view_triple* %9 to i8*
  %100 = bitcast %struct.ad_user_view_triple* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 8, i1 false)
  %101 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %5, align 8
  %104 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %101, i64 %102
  %105 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %105, i64 %106
  %108 = bitcast %struct.ad_user_view_triple* %104 to i8*
  %109 = bitcast %struct.ad_user_view_triple* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 8, i1 false)
  %110 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %111 = load i64, i64* %6, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %6, align 8
  %113 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %110, i64 %111
  %114 = bitcast %struct.ad_user_view_triple* %113 to i8*
  %115 = bitcast %struct.ad_user_view_triple* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 8, i1 false)
  br label %116

116:                                              ; preds = %95, %91
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* %6, align 8
  %120 = icmp sle i64 %118, %119
  br i1 %120, label %27, label %121

121:                                              ; preds = %117
  %122 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %123 = load i64, i64* %6, align 8
  call void @sort_axz(%struct.ad_user_view_triple* %122, i64 %123)
  %124 = load %struct.ad_user_view_triple*, %struct.ad_user_view_triple** %3, align 8
  %125 = load i64, i64* %5, align 8
  %126 = getelementptr inbounds %struct.ad_user_view_triple, %struct.ad_user_view_triple* %124, i64 %125
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* %5, align 8
  %129 = sub nsw i64 %127, %128
  call void @sort_axz(%struct.ad_user_view_triple* %126, i64 %129)
  br label %130

130:                                              ; preds = %121, %12
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
