; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_log2.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_log2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i64 }

@F80_NAN = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f80_log2(%struct.TYPE_22__* noalias sret %0, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_22__, align 8
  %4 = alloca %struct.TYPE_22__, align 8
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  call void @f80_from_int(%struct.TYPE_22__* sret %3, i32 0)
  call void @f80_from_int(%struct.TYPE_22__* sret %4, i32 1)
  call void @f80_from_int(%struct.TYPE_22__* sret %5, i32 2)
  %16 = call i64 @f80_isnan(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = call i64 @f80_lte(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %2
  %22 = bitcast %struct.TYPE_22__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_22__* @F80_NAN to i8*), i64 24, i1 false)
  br label %91

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %27, %23
  %25 = call i64 @f80_lt(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  call void @f80_mul(%struct.TYPE_22__* sret %7, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %5)
  %30 = bitcast %struct.TYPE_22__* %1 to i8*
  %31 = bitcast %struct.TYPE_22__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  br label %24

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %36, %32
  %34 = call i64 @f80_gt(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  call void @f80_div(%struct.TYPE_22__* sret %8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %5)
  %39 = bitcast %struct.TYPE_22__* %1 to i8*
  %40 = bitcast %struct.TYPE_22__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 24, i1 false)
  br label %33

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  call void @f80_from_int(%struct.TYPE_22__* sret %9, i32 %42)
  %43 = bitcast %struct.TYPE_22__* %10 to i8*
  %44 = bitcast %struct.TYPE_22__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  br label %45

45:                                               ; preds = %85, %41
  %46 = call i64 @f80_gt(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %10, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %57, %48
  %50 = call i64 @f80_lte(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %5)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i64 @f80_gt(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %10, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  call void @f80_mul(%struct.TYPE_22__* sret %11, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1)
  %58 = bitcast %struct.TYPE_22__* %1 to i8*
  %59 = bitcast %struct.TYPE_22__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  call void @f80_div(%struct.TYPE_22__* sret %12, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %10, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %5)
  %60 = bitcast %struct.TYPE_22__* %10 to i8*
  %61 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  br label %49

62:                                               ; preds = %55
  %63 = bitcast %struct.TYPE_22__* %13 to i8*
  %64 = bitcast %struct.TYPE_22__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  call void @f80_add(%struct.TYPE_22__* sret %14, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %9, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %10)
  %65 = bitcast %struct.TYPE_22__* %9 to i8*
  %66 = bitcast %struct.TYPE_22__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 24, i1 false)
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %88

85:                                               ; preds = %78, %72, %62
  call void @f80_div(%struct.TYPE_22__* sret %15, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %5)
  %86 = bitcast %struct.TYPE_22__* %1 to i8*
  %87 = bitcast %struct.TYPE_22__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 24, i1 false)
  br label %45

88:                                               ; preds = %84, %45
  %89 = bitcast %struct.TYPE_22__* %0 to i8*
  %90 = bitcast %struct.TYPE_22__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 24, i1 false)
  br label %91

91:                                               ; preds = %88, %21
  ret void
}

declare dso_local void @f80_from_int(%struct.TYPE_22__* sret, i32) #1

declare dso_local i64 @f80_isnan(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local i64 @f80_lte(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @f80_lt(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local void @f80_mul(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local i64 @f80_gt(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local void @f80_div(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local void @f80_add(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
