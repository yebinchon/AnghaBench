; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_sift_up.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_sift_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, i64 }
%struct.TYPE_3__ = type { i32 }

@HN = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_4__* null, align 8
@HS = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float)* @heap_sift_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_sift_up(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store float %0, float* %2, align 4
  %5 = load i32, i32* @HN, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @HN, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %53

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load float, float* %17, align 8
  %19 = load float, float* %2, align 4
  %20 = fcmp ole float %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %53

22:                                               ; preds = %10
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HS, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %31, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %22
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = bitcast %struct.TYPE_4__* %45 to i8*
  %51 = bitcast %struct.TYPE_4__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %3, align 4
  br label %7

53:                                               ; preds = %21, %7
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
