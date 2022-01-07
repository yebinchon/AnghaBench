; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_sqrt.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }

@F80_NAN = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i64 } @f80_sqrt(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = bitcast %struct.TYPE_15__* %4 to { i32, i64 }*
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 0
  store i32 %0, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 8
  %15 = bitcast %struct.TYPE_15__* %4 to { i32, i64 }*
  %16 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @f80_isnan(i32 %17, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %2
  %27 = bitcast %struct.TYPE_15__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_15__* @F80_NAN to i8*), i64 16, i1 false)
  br label %118

28:                                               ; preds = %22
  %29 = bitcast %struct.TYPE_15__* %5 to i8*
  %30 = bitcast %struct.TYPE_15__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @unbias(i32 %32)
  %34 = sdiv i32 %33, 2
  %35 = call i32 @bias(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = call { i32, i64 } @f80_from_int(i32 2)
  %38 = bitcast %struct.TYPE_15__* %7 to { i32, i64 }*
  %39 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i32, i64 } %37, 0
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i32, i64 } %37, 1
  store i64 %42, i64* %41, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %113, %28
  %44 = bitcast %struct.TYPE_15__* %6 to i8*
  %45 = bitcast %struct.TYPE_15__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = bitcast %struct.TYPE_15__* %4 to { i32, i64 }*
  %47 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %struct.TYPE_15__* %5 to { i32, i64 }*
  %52 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call { i32, i64 } @f80_div(i32 %48, i64 %50, i32 %53, i64 %55)
  %57 = bitcast %struct.TYPE_15__* %11 to { i32, i64 }*
  %58 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i32, i64 } %56, 0
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i32, i64 } %56, 1
  store i64 %61, i64* %60, align 8
  %62 = bitcast %struct.TYPE_15__* %5 to { i32, i64 }*
  %63 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %62, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = bitcast %struct.TYPE_15__* %11 to { i32, i64 }*
  %68 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call { i32, i64 } @f80_add(i32 %64, i64 %66, i32 %69, i64 %71)
  %73 = bitcast %struct.TYPE_15__* %10 to { i32, i64 }*
  %74 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %73, i32 0, i32 0
  %75 = extractvalue { i32, i64 } %72, 0
  store i32 %75, i32* %74, align 8
  %76 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %73, i32 0, i32 1
  %77 = extractvalue { i32, i64 } %72, 1
  store i64 %77, i64* %76, align 8
  %78 = bitcast %struct.TYPE_15__* %10 to { i32, i64 }*
  %79 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %78, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = bitcast %struct.TYPE_15__* %7 to { i32, i64 }*
  %84 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call { i32, i64 } @f80_div(i32 %80, i64 %82, i32 %85, i64 %87)
  %89 = bitcast %struct.TYPE_15__* %9 to { i32, i64 }*
  %90 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %89, i32 0, i32 0
  %91 = extractvalue { i32, i64 } %88, 0
  store i32 %91, i32* %90, align 8
  %92 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %89, i32 0, i32 1
  %93 = extractvalue { i32, i64 } %88, 1
  store i64 %93, i64* %92, align 8
  %94 = bitcast %struct.TYPE_15__* %5 to i8*
  %95 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  br label %96

96:                                               ; preds = %43
  %97 = bitcast %struct.TYPE_15__* %5 to { i32, i64 }*
  %98 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = bitcast %struct.TYPE_15__* %6 to { i32, i64 }*
  %103 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %102, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @f80_eq(i32 %99, i64 %101, i32 %104, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = icmp slt i32 %110, 100
  br label %113

113:                                              ; preds = %109, %96
  %114 = phi i1 [ false, %96 ], [ %112, %109 ]
  br i1 %114, label %43, label %115

115:                                              ; preds = %113
  %116 = bitcast %struct.TYPE_15__* %3 to i8*
  %117 = bitcast %struct.TYPE_15__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 16, i1 false)
  br label %118

118:                                              ; preds = %115, %26
  %119 = bitcast %struct.TYPE_15__* %3 to { i32, i64 }*
  %120 = load { i32, i64 }, { i32, i64 }* %119, align 8
  ret { i32, i64 } %120
}

declare dso_local i64 @f80_isnan(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bias(i32) #1

declare dso_local i32 @unbias(i32) #1

declare dso_local { i32, i64 } @f80_from_int(i32) #1

declare dso_local { i32, i64 } @f80_div(i32, i64, i32, i64) #1

declare dso_local { i32, i64 } @f80_add(i32, i64, i32, i64) #1

declare dso_local i32 @f80_eq(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
