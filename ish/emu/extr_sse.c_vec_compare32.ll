; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_sse.c_vec_compare32.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_sse.c_vec_compare32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"something's horribly wrong. err 1093281094\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vec_compare32(%struct.cpu_state* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.cpu_state*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store %struct.cpu_state* %0, %struct.cpu_state** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float*, float** %6, align 8
  %8 = load float, float* %7, align 4
  %9 = call i64 @isnan(float %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load float*, float** %5, align 8
  %13 = load float, float* %12, align 4
  %14 = call i64 @isnan(float %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11, %3
  %17 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %18 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %20 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %22 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  br label %67

23:                                               ; preds = %11
  %24 = load float*, float** %6, align 8
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %5, align 8
  %27 = load float, float* %26, align 4
  %28 = fcmp ogt float %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %31 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %33 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %35 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  br label %66

36:                                               ; preds = %23
  %37 = load float*, float** %6, align 8
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %5, align 8
  %40 = load float, float* %39, align 4
  %41 = fcmp olt float %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %44 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %46 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %48 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  br label %65

49:                                               ; preds = %36
  %50 = load float*, float** %6, align 8
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %5, align 8
  %53 = load float, float* %52, align 4
  %54 = fcmp oeq float %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %57 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %59 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %61 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  br label %64

62:                                               ; preds = %49
  %63 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %29
  br label %67

67:                                               ; preds = %66, %16
  %68 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %69 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %71 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  ret void
}

declare dso_local i64 @isnan(float) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
