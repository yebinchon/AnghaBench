; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, double, %struct.tree*, %struct.tree* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @count(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tree*, %struct.tree** %4, align 8
  %7 = icmp ne %struct.tree* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %37

9:                                                ; preds = %2
  %10 = load %struct.tree*, %struct.tree** %4, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.tree*, %struct.tree** %4, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  store double %18, double* %3, align 8
  br label %37

19:                                               ; preds = %9
  %20 = load %struct.tree*, %struct.tree** %4, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store double 0.000000e+00, double* %3, align 8
  br label %37

25:                                               ; preds = %19
  %26 = load %struct.tree*, %struct.tree** %4, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 3
  %28 = load %struct.tree*, %struct.tree** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call double @count(%struct.tree* %28, i32 %29)
  %31 = load %struct.tree*, %struct.tree** %4, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 2
  %33 = load %struct.tree*, %struct.tree** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call double @count(%struct.tree* %33, i32 %34)
  %36 = fadd double %30, %35
  store double %36, double* %3, align 8
  br label %37

37:                                               ; preds = %25, %24, %15, %8
  %38 = load double, double* %3, align 8
  ret double %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
