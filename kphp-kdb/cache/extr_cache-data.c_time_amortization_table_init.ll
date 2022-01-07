; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_time_amortization_table_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_time_amortization_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_amortization_table = type { double, double, double*, double* }

@M_LN2 = common dso_local global double 0.000000e+00, align 8
@AMORTIZATION_TABLE_SQRT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @time_amortization_table_init(%struct.time_amortization_table* %0, double %1) #0 {
  %3 = alloca %struct.time_amortization_table*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.time_amortization_table* %0, %struct.time_amortization_table** %3, align 8
  store double %1, double* %4, align 8
  %8 = load double, double* @M_LN2, align 8
  %9 = load double, double* %4, align 8
  %10 = fdiv double %8, %9
  %11 = fneg double %10
  %12 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %13 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %12, i32 0, i32 0
  store double %11, double* %13, align 8
  %14 = load double, double* %4, align 8
  %15 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %16 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %15, i32 0, i32 1
  store double %14, double* %16, align 8
  %17 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %18 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double %19, %21
  %23 = fptosi double %22 to i32
  %24 = call double @exp(i32 %23)
  store double %24, double* %6, align 8
  %25 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %26 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fptosi double %27 to i32
  %29 = call double @exp(i32 %28)
  store double %29, double* %7, align 8
  %30 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %31 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %30, i32 0, i32 3
  %32 = load double*, double** %31, align 8
  %33 = getelementptr inbounds double, double* %32, i64 0
  store double 1.000000e+00, double* %33, align 8
  %34 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %35 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %34, i32 0, i32 2
  %36 = load double*, double** %35, align 8
  %37 = getelementptr inbounds double, double* %36, i64 0
  store double 1.000000e+00, double* %37, align 8
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %75, %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %44 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %43, i32 0, i32 2
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %45, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double, double* %6, align 8
  %52 = fmul double %50, %51
  %53 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %54 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %53, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  store double %52, double* %58, align 8
  %59 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %60 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %59, i32 0, i32 3
  %61 = load double*, double** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %61, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double, double* %7, align 8
  %68 = fmul double %66, %67
  %69 = load %struct.time_amortization_table*, %struct.time_amortization_table** %3, align 8
  %70 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %69, i32 0, i32 3
  %71 = load double*, double** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  store double %68, double* %74, align 8
  br label %75

75:                                               ; preds = %42
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %38

78:                                               ; preds = %38
  ret void
}

declare dso_local double @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
