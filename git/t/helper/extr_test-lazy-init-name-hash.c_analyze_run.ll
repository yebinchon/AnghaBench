; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-lazy-init-name-hash.c_analyze_run.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-lazy-init-name-hash.c_analyze_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@the_index = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@analyze = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"    [size %8d] [single %f]   non-threaded code path used\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"    [size %8d] [single %f] %c [multi %f %d]\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"avg [size %8d] [single %f]\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"avg [size %8d] [single %f] %c [multi %f %d]\0A\00", align 1
@analyze_step = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @analyze_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_run() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %6, align 4
  %13 = call i32 (...) @read_cache()
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 4
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @discard_cache()
  %16 = load i32, i32* @analyze, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %0, %135
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %17
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %89, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @count, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %24
  %29 = call i32 (...) @read_cache()
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 4
  %31 = call i64 (...) @getnanotime()
  store i64 %31, i64* %1, align 8
  %32 = call i32 @test_lazy_init_name_hash(%struct.TYPE_3__* @the_index, i32 0)
  %33 = call i64 (...) @getnanotime()
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %1, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 4
  %40 = call i32 (...) @discard_cache()
  %41 = call i32 (...) @read_cache()
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 4
  %43 = call i64 (...) @getnanotime()
  store i64 %43, i64* %2, align 8
  %44 = call i32 @test_lazy_init_name_hash(%struct.TYPE_3__* @the_index, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = call i64 (...) @getnanotime()
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %2, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 4
  %52 = call i32 (...) @discard_cache()
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %1, align 8
  %59 = sub nsw i64 %57, %58
  %60 = sitofp i64 %59 to double
  %61 = fdiv double %60, 1.000000e+09
  %62 = call i32 (i8*, i32, double, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %56, double %61)
  br label %86

63:                                               ; preds = %28
  %64 = load i32, i32* %8, align 4
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %1, align 8
  %67 = sub nsw i64 %65, %66
  %68 = sitofp i64 %67 to double
  %69 = fdiv double %68, 1.000000e+09
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* %1, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %2, align 8
  %75 = sub nsw i64 %73, %74
  %76 = icmp slt i64 %72, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 60, i32 62
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %2, align 8
  %81 = sub nsw i64 %79, %80
  %82 = sitofp i64 %81 to double
  %83 = fdiv double %82, 1.000000e+09
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i8*, i32, double, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %64, double %69, i32 %78, double %83, i32 %84)
  br label %86

86:                                               ; preds = %63, %55
  %87 = load i32, i32* @stdout, align 4
  %88 = call i32 @fflush(i32 %87)
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %24

92:                                               ; preds = %24
  %93 = load i32, i32* @count, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %130

95:                                               ; preds = %92
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* @count, align 4
  %98 = sext i32 %97 to i64
  %99 = sdiv i64 %96, %98
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i32, i32* @count, align 4
  %102 = sext i32 %101 to i64
  %103 = sdiv i64 %100, %102
  store i64 %103, i64* %12, align 8
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %8, align 4
  %108 = load i64, i64* %11, align 8
  %109 = sitofp i64 %108 to double
  %110 = fdiv double %109, 1.000000e+09
  %111 = call i32 (i8*, i32, double, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %107, double %110)
  br label %127

112:                                              ; preds = %95
  %113 = load i32, i32* %8, align 4
  %114 = load i64, i64* %11, align 8
  %115 = sitofp i64 %114 to double
  %116 = fdiv double %115, 1.000000e+09
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = icmp slt i64 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 60, i32 62
  %122 = load i64, i64* %12, align 8
  %123 = sitofp i64 %122 to double
  %124 = fdiv double %123, 1.000000e+09
  %125 = load i32, i32* %6, align 4
  %126 = call i32 (i8*, i32, double, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %113, double %116, i32 %121, double %124, i32 %125)
  br label %127

127:                                              ; preds = %112, %106
  %128 = load i32, i32* @stdout, align 4
  %129 = call i32 @fflush(i32 %128)
  br label %130

130:                                              ; preds = %127, %92
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  ret void

135:                                              ; preds = %130
  %136 = load i64, i64* @analyze_step, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %8, align 4
  br label %17
}

declare dso_local i32 @read_cache(...) #1

declare dso_local i32 @discard_cache(...) #1

declare dso_local i64 @getnanotime(...) #1

declare dso_local i32 @test_lazy_init_name_hash(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @printf(i8*, i32, double, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
