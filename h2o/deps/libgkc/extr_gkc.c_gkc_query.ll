; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_query.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gkc_summary = type { double, double, %struct.list }
%struct.list = type { %struct.list* }
%struct.gkc_tuple = type { double, double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gkc_query(%struct.gkc_summary* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gkc_summary*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.list*, align 8
  %7 = alloca %struct.list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gkc_tuple*, align 8
  %12 = alloca %struct.gkc_tuple*, align 8
  store %struct.gkc_summary* %0, %struct.gkc_summary** %4, align 8
  store double %1, double* %5, align 8
  %13 = load double, double* %5, align 8
  %14 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %15 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fmul double %13, %16
  %18 = fadd double 5.000000e-01, %17
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %21 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %24 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %23, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = fmul double %22, %25
  store double %26, double* %10, align 8
  store double 0.000000e+00, double* %9, align 8
  %27 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %28 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %27, i32 0, i32 2
  %29 = call i64 @list_empty(%struct.list* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

32:                                               ; preds = %2
  %33 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %34 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.list, %struct.list* %34, i32 0, i32 0
  %36 = load %struct.list*, %struct.list** %35, align 8
  store %struct.list* %36, %struct.list** %6, align 8
  br label %37

37:                                               ; preds = %32, %92
  %38 = load %struct.list*, %struct.list** %6, align 8
  %39 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %38)
  store %struct.gkc_tuple* %39, %struct.gkc_tuple** %11, align 8
  %40 = load %struct.list*, %struct.list** %6, align 8
  %41 = getelementptr inbounds %struct.list, %struct.list* %40, i32 0, i32 0
  %42 = load %struct.list*, %struct.list** %41, align 8
  store %struct.list* %42, %struct.list** %7, align 8
  %43 = load %struct.list*, %struct.list** %7, align 8
  %44 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %45 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %44, i32 0, i32 2
  %46 = icmp eq %struct.list* %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %49 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %3, align 4
  br label %94

51:                                               ; preds = %37
  %52 = load %struct.list*, %struct.list** %7, align 8
  %53 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %52)
  store %struct.gkc_tuple* %53, %struct.gkc_tuple** %12, align 8
  %54 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %55 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = load double, double* %9, align 8
  %58 = fadd double %57, %56
  store double %58, double* %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sitofp i32 %59 to double
  %61 = load double, double* %10, align 8
  %62 = fadd double %60, %61
  %63 = load double, double* %9, align 8
  %64 = load %struct.gkc_tuple*, %struct.gkc_tuple** %12, align 8
  %65 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fadd double %63, %66
  %68 = load %struct.gkc_tuple*, %struct.gkc_tuple** %12, align 8
  %69 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = fadd double %67, %70
  %72 = fcmp olt double %62, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %51
  %74 = load i32, i32* %8, align 4
  %75 = sitofp i32 %74 to double
  %76 = load double, double* %10, align 8
  %77 = fadd double %75, %76
  %78 = load double, double* %9, align 8
  %79 = load %struct.gkc_tuple*, %struct.gkc_tuple** %12, align 8
  %80 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = fadd double %78, %81
  %83 = fcmp olt double %77, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %86 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %73
  %89 = load %struct.gkc_tuple*, %struct.gkc_tuple** %12, align 8
  %90 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %3, align 4
  br label %94

92:                                               ; preds = %51
  %93 = load %struct.list*, %struct.list** %7, align 8
  store %struct.list* %93, %struct.list** %6, align 8
  br label %37

94:                                               ; preds = %88, %84, %47, %31
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @list_empty(%struct.list*) #1

declare dso_local %struct.gkc_tuple* @list_to_tuple(%struct.list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
