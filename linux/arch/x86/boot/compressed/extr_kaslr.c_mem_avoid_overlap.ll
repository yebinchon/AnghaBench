; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_mem_avoid_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_mem_avoid_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_vector = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.setup_data = type { i64, i64 }

@MEM_AVOID_MAX = common dso_local global i32 0, align 4
@mem_avoid = common dso_local global %struct.mem_vector* null, align 8
@boot_params = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_vector*, %struct.mem_vector*)* @mem_avoid_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_avoid_overlap(%struct.mem_vector* %0, %struct.mem_vector* %1) #0 {
  %3 = alloca %struct.mem_vector*, align 8
  %4 = alloca %struct.mem_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.setup_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_vector, align 8
  store %struct.mem_vector* %0, %struct.mem_vector** %3, align 8
  store %struct.mem_vector* %1, %struct.mem_vector** %4, align 8
  %10 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %11 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %14 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %50, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MEM_AVOID_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %23 = load %struct.mem_vector*, %struct.mem_vector** @mem_avoid, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %23, i64 %25
  %27 = call i64 @mem_overlaps(%struct.mem_vector* %22, %struct.mem_vector* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load %struct.mem_vector*, %struct.mem_vector** @mem_avoid, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %30, i64 %32
  %34 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %40 = load %struct.mem_vector*, %struct.mem_vector** @mem_avoid, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %40, i64 %42
  %44 = bitcast %struct.mem_vector* %39 to i8*
  %45 = bitcast %struct.mem_vector* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %47 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %38, %29, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.setup_data*
  store %struct.setup_data* %58, %struct.setup_data** %6, align 8
  br label %59

59:                                               ; preds = %86, %53
  %60 = load %struct.setup_data*, %struct.setup_data** %6, align 8
  %61 = icmp ne %struct.setup_data* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  %63 = load %struct.setup_data*, %struct.setup_data** %6, align 8
  %64 = ptrtoint %struct.setup_data* %63 to i64
  %65 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %9, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load %struct.setup_data*, %struct.setup_data** %6, align 8
  %67 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 16, %68
  %70 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %72 = call i64 @mem_overlaps(%struct.mem_vector* %71, %struct.mem_vector* %9)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %81 = bitcast %struct.mem_vector* %80 to i8*
  %82 = bitcast %struct.mem_vector* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  %83 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %84 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %79, %74, %62
  %87 = load %struct.setup_data*, %struct.setup_data** %6, align 8
  %88 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.setup_data*
  store %struct.setup_data* %90, %struct.setup_data** %6, align 8
  br label %59

91:                                               ; preds = %59
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i64 @mem_overlaps(%struct.mem_vector*, %struct.mem_vector*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
