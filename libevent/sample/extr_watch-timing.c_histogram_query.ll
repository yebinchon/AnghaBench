; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_histogram_query.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_histogram_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histogram = type { double, double, double, i32, i32, %struct.bin* }
%struct.bin = type { double, double, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.histogram*, double)* @histogram_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @histogram_query(%struct.histogram* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.histogram*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bin, align 8
  %9 = alloca %struct.bin, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.histogram* %0, %struct.histogram** %4, align 8
  store double %1, double* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = bitcast %struct.bin* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.bin* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  %19 = load %struct.histogram*, %struct.histogram** %4, align 8
  %20 = getelementptr inbounds %struct.histogram, %struct.histogram* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = load double, double* %5, align 8
  %23 = fmul double %21, %22
  store double %23, double* %16, align 8
  %24 = load double, double* %5, align 8
  %25 = fcmp ole double %24, 0.000000e+00
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.histogram*, %struct.histogram** %4, align 8
  %28 = getelementptr inbounds %struct.histogram, %struct.histogram* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  store double %29, double* %3, align 8
  br label %161

30:                                               ; preds = %2
  %31 = load double, double* %5, align 8
  %32 = fcmp oge double %31, 1.000000e+00
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.histogram*, %struct.histogram** %4, align 8
  %35 = getelementptr inbounds %struct.histogram, %struct.histogram* %34, i32 0, i32 2
  %36 = load double, double* %35, align 8
  store double %36, double* %3, align 8
  br label %161

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %101, %37
  %39 = load double, double* %11, align 8
  %40 = load double, double* %16, align 8
  %41 = fcmp olt double %39, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.histogram*, %struct.histogram** %4, align 8
  %47 = getelementptr inbounds %struct.histogram, %struct.histogram* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 0
  store double %48, double* %49, align 8
  %50 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 1
  store double 0.000000e+00, double* %50, align 8
  br label %60

51:                                               ; preds = %42
  %52 = load %struct.histogram*, %struct.histogram** %4, align 8
  %53 = getelementptr inbounds %struct.histogram, %struct.histogram* %52, i32 0, i32 5
  %54 = load %struct.bin*, %struct.bin** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bin, %struct.bin* %54, i64 %56
  %58 = bitcast %struct.bin* %8 to i8*
  %59 = bitcast %struct.bin* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  br label %60

60:                                               ; preds = %51, %45
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.histogram*, %struct.histogram** %4, align 8
  %63 = getelementptr inbounds %struct.histogram, %struct.histogram* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ugt i32 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.histogram*, %struct.histogram** %4, align 8
  %68 = getelementptr inbounds %struct.histogram, %struct.histogram* %67, i32 0, i32 2
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 0
  store double %69, double* %70, align 8
  %71 = getelementptr inbounds %struct.bin, %struct.bin* %9, i32 0, i32 1
  store double 0.000000e+00, double* %71, align 8
  br label %81

72:                                               ; preds = %60
  %73 = load %struct.histogram*, %struct.histogram** %4, align 8
  %74 = getelementptr inbounds %struct.histogram, %struct.histogram* %73, i32 0, i32 5
  %75 = load %struct.bin*, %struct.bin** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.bin, %struct.bin* %75, i64 %77
  %79 = bitcast %struct.bin* %9 to i8*
  %80 = bitcast %struct.bin* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 24, i1 false)
  br label %81

81:                                               ; preds = %72, %66
  %82 = load double, double* %11, align 8
  store double %82, double* %10, align 8
  %83 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = getelementptr inbounds %struct.bin, %struct.bin* %9, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = fadd double %84, %86
  %88 = fmul double 5.000000e-01, %87
  %89 = load double, double* %11, align 8
  %90 = fadd double %89, %88
  store double %90, double* %11, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %7, align 4
  store i32 %91, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.histogram*, %struct.histogram** %4, align 8
  %95 = getelementptr inbounds %struct.histogram, %struct.histogram* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %81
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %81
  br label %38

102:                                              ; preds = %38
  %103 = getelementptr inbounds %struct.bin, %struct.bin* %9, i32 0, i32 1
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = fsub double %104, %106
  store double %107, double* %12, align 8
  %108 = load double, double* %12, align 8
  %109 = call i64 @eq(double %108, i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %102
  %112 = load double, double* %11, align 8
  %113 = load double, double* %10, align 8
  %114 = fsub double %112, %113
  store double %114, double* %13, align 8
  %115 = load double, double* %13, align 8
  %116 = call i64 @eq(double %115, i32 0)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %125

119:                                              ; preds = %111
  %120 = load double, double* %16, align 8
  %121 = load double, double* %10, align 8
  %122 = fsub double %120, %121
  %123 = load double, double* %13, align 8
  %124 = fdiv double %122, %123
  br label %125

125:                                              ; preds = %119, %118
  %126 = phi double [ 0.000000e+00, %118 ], [ %124, %119 ]
  store double %126, double* %15, align 8
  br label %150

127:                                              ; preds = %102
  %128 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 1
  %129 = load double, double* %128, align 8
  %130 = fmul double 2.000000e+00, %129
  store double %130, double* %13, align 8
  %131 = load double, double* %10, align 8
  %132 = load double, double* %16, align 8
  %133 = fsub double %131, %132
  %134 = fmul double 2.000000e+00, %133
  store double %134, double* %14, align 8
  %135 = load double, double* %13, align 8
  %136 = fneg double %135
  %137 = load double, double* %13, align 8
  %138 = load double, double* %13, align 8
  %139 = fmul double %137, %138
  %140 = load double, double* %12, align 8
  %141 = fmul double 4.000000e+00, %140
  %142 = load double, double* %14, align 8
  %143 = fmul double %141, %142
  %144 = fsub double %139, %143
  %145 = call double @sqrt(double %144) #4
  %146 = fadd double %136, %145
  %147 = load double, double* %12, align 8
  %148 = fmul double 2.000000e+00, %147
  %149 = fdiv double %146, %148
  store double %149, double* %15, align 8
  br label %150

150:                                              ; preds = %127, %125
  %151 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 0
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds %struct.bin, %struct.bin* %9, i32 0, i32 0
  %154 = load double, double* %153, align 8
  %155 = getelementptr inbounds %struct.bin, %struct.bin* %8, i32 0, i32 0
  %156 = load double, double* %155, align 8
  %157 = fsub double %154, %156
  %158 = load double, double* %15, align 8
  %159 = fmul double %157, %158
  %160 = fadd double %152, %159
  store double %160, double* %3, align 8
  br label %161

161:                                              ; preds = %150, %33, %26
  %162 = load double, double* %3, align 8
  ret double %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @eq(double, i32) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
