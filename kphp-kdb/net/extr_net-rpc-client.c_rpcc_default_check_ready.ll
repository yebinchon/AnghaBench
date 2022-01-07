; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_default_check_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_default_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@C_FAILED = common dso_local global i32 0, align 4
@conn_error = common dso_local global i64 0, align 8
@cr_failed = common dso_local global i32 0, align 4
@conn_connecting = common dso_local global i64 0, align 8
@conn_running = common dso_local global i64 0, align 8
@cr_ok = common dso_local global i32 0, align 4
@precise_now = common dso_local global double 0.000000e+00, align 8
@cr_notyet = common dso_local global i32 0, align 4
@conn_wait_answer = common dso_local global i64 0, align 8
@conn_reading_answer = common dso_local global i64 0, align 8
@conn_expect_query = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_default_check_ready(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca double, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @C_FAILED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @conn_error, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @cr_failed, align 4
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  store i32 %18, i32* %2, align 4
  br label %99

21:                                               ; preds = %11
  store double 3.000000e+00, double* %4, align 8
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @conn_connecting, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = call %struct.TYPE_2__* @RPCC_DATA(%struct.connection* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %27, %21
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = call %struct.TYPE_2__* @RPCC_DATA(%struct.connection* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @conn_running, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @cr_ok, align 4
  %47 = load %struct.connection*, %struct.connection** %3, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  store i32 %46, i32* %2, align 4
  br label %99

49:                                               ; preds = %39, %33
  %50 = load %struct.connection*, %struct.connection** %3, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.connection*, %struct.connection** %3, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to double
  %60 = load double, double* @precise_now, align 8
  %61 = fsub double %60, 3.000000e+00
  %62 = fcmp olt double %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = load %struct.connection*, %struct.connection** %3, align 8
  %65 = call i32 @fail_connection(%struct.connection* %64, i32 -6)
  %66 = load i32, i32* @cr_failed, align 4
  %67 = load %struct.connection*, %struct.connection** %3, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  store i32 %66, i32* %2, align 4
  br label %99

69:                                               ; preds = %49
  %70 = load i32, i32* @cr_notyet, align 4
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  store i32 %70, i32* %2, align 4
  br label %99

73:                                               ; preds = %27
  %74 = load %struct.connection*, %struct.connection** %3, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @conn_wait_answer, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load %struct.connection*, %struct.connection** %3, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @conn_reading_answer, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.connection*, %struct.connection** %3, align 8
  %87 = getelementptr inbounds %struct.connection, %struct.connection* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @conn_expect_query, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %79, %73
  %92 = load i32, i32* @cr_ok, align 4
  %93 = load %struct.connection*, %struct.connection** %3, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  store i32 %92, i32* %2, align 4
  br label %99

95:                                               ; preds = %85
  %96 = load i32, i32* @cr_failed, align 4
  %97 = load %struct.connection*, %struct.connection** %3, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  store i32 %96, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %91, %69, %63, %45, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_2__* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
