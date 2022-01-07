; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_compute_next_reconnect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_compute_next_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { double, double, i32, i64 }

@precise_now = common dso_local global i32 0, align 4
@MAX_RECONNECT_INTERVAL = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_next_reconnect(%struct.conn_target* %0) #0 {
  %2 = alloca %struct.conn_target*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %2, align 8
  %3 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %4 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %3, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %7 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %6, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = fcmp olt double %5, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %12 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %1
  %16 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %17 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %20 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %19, i32 0, i32 0
  store double %18, double* %20, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load i32, i32* @precise_now, align 4
  %23 = sitofp i32 %22 to double
  %24 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %25 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = fadd double %23, %26
  %28 = fptosi double %27 to i32
  %29 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %30 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %32 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %21
  %36 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %37 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = load double, double* @MAX_RECONNECT_INTERVAL, align 8
  %40 = fcmp olt double %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %43 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %42, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fmul double %44, 1.500000e+00
  %46 = call double (...) @drand48()
  %47 = fmul double %46, 2.000000e-01
  %48 = fadd double %45, %47
  %49 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %50 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %49, i32 0, i32 0
  store double %48, double* %50, align 8
  br label %51

51:                                               ; preds = %41, %35, %21
  %52 = load %struct.conn_target*, %struct.conn_target** %2, align 8
  %53 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  ret i32 %54
}

declare dso_local double @drand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
