; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_create_pnet_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_create_pnet_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.TYPE_2__, i32*, i32*, i32, %struct.connection*, %struct.connection*, i64 }
%struct.TYPE_2__ = type { double }
%struct.connection = type { i32 }

@precise_now = common dso_local global i32 0, align 4
@pnet_cq_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_query* @create_pnet_query(%struct.connection* %0, %struct.connection* %1, i32* %2, double %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.connection* %1, %struct.connection** %6, align 8
  store i32* %2, i32** %7, align 8
  store double %3, double* %8, align 8
  %10 = call %struct.conn_query* @zmalloc(i32 56)
  store %struct.conn_query* %10, %struct.conn_query** %9, align 8
  %11 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %12 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.connection*, %struct.connection** %6, align 8
  %14 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %15 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %14, i32 0, i32 5
  store %struct.connection* %13, %struct.connection** %15, align 8
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %18 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %17, i32 0, i32 4
  store %struct.connection* %16, %struct.connection** %18, align 8
  %19 = load i32, i32* @precise_now, align 4
  %20 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %21 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %24 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %26 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %25, i32 0, i32 1
  store i32* @pnet_cq_func, i32** %26, align 8
  %27 = load double, double* %8, align 8
  %28 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store double %27, double* %30, align 8
  %31 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %32 = call i32 @insert_conn_query(%struct.conn_query* %31)
  %33 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  ret %struct.conn_query* %33
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
