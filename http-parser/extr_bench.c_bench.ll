; ModuleID = '/home/carl/AnghaBench/http-parser/extr_bench.c_bench.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_bench.c_bench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser = type { i32 }
%struct.timeval = type { float, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"req_len=%d\0A\00", align 1
@data_len = common dso_local global i64 0, align 8
@HTTP_REQUEST = common dso_local global i32 0, align 4
@settings = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Benchmark result:\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%.2f mb | %.2f mb/s | %.2f req/sec | %.2f s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bench(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_parser, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i64, i64* @data_len, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %42, %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* @HTTP_REQUEST, align 4
  %33 = call i32 @http_parser_init(%struct.http_parser* %5, i32 %32)
  %34 = load i32, i32* @data, align 4
  %35 = load i64, i64* @data_len, align 8
  %36 = call i64 @http_parser_execute(%struct.http_parser* %5, i32* @settings, i32 %34, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @data_len, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %91, label %48

48:                                               ; preds = %45
  %49 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* @stdout, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %57, %59
  %61 = sitofp i64 %60 to double
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %63 = load float, float* %62, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %65 = load float, float* %64, align 8
  %66 = fsub float %63, %65
  %67 = fmul float %66, 0x3EB0C6F7A0000000
  %68 = fpext float %67 to double
  %69 = fadd double %61, %68
  store double %69, double* %11, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sitofp i32 %70 to double
  %72 = load i64, i64* @data_len, align 8
  %73 = uitofp i64 %72 to double
  %74 = fmul double %71, %73
  store double %74, double* %13, align 8
  %75 = load double, double* %13, align 8
  %76 = load double, double* %11, align 8
  %77 = fdiv double %75, %76
  store double %77, double* %12, align 8
  %78 = load i32, i32* @stdout, align 4
  %79 = load double, double* %13, align 8
  %80 = fdiv double %79, 0x4130000000000000
  %81 = load double, double* %12, align 8
  %82 = fdiv double %81, 0x4130000000000000
  %83 = load i32, i32* %3, align 4
  %84 = sitofp i32 %83 to double
  %85 = load double, double* %11, align 8
  %86 = fdiv double %84, %85
  %87 = load double, double* %11, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), double %80, double %82, double %86, double %87)
  %89 = load i32, i32* @stdout, align 4
  %90 = call i32 @fflush(i32 %89)
  br label %91

91:                                               ; preds = %48, %45
  ret i32 0
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @http_parser_init(%struct.http_parser*, i32) #1

declare dso_local i64 @http_parser_execute(%struct.http_parser*, i32*, i32, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
