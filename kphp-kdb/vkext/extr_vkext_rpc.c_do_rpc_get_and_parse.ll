; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_get_and_parse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_get_and_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { double, i32, i32, i64 }

@rpc_get_and_parse = common dso_local global i32 0, align 4
@inbuf = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rpc_get_and_parse(i64 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.rpc_query*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  %8 = load i32, i32* @rpc_get_and_parse, align 4
  %9 = call i32 @ADD_CNT(i32 %8)
  %10 = load i32, i32* @rpc_get_and_parse, align 4
  %11 = call i32 @START_TIMER(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.rpc_query* @rpc_query_get(i64 %12)
  store %struct.rpc_query* %13, %struct.rpc_query** %6, align 8
  %14 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %15 = icmp ne %struct.rpc_query* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @rpc_get_and_parse, align 4
  %18 = call i32 @END_TIMER(i32 %17)
  store i32 -1, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load double, double* %5, align 8
  %21 = fcmp oge double %20, 0.000000e+00
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %24 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = sitofp i64 %25 to double
  %27 = load double, double* %5, align 8
  %28 = fadd double %27, %26
  store double %28, double* %5, align 8
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %31 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  store double %32, double* %5, align 8
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %35 = load double, double* %5, align 8
  %36 = call i32 @rpc_get_answer(%struct.rpc_query* %34, double %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @rpc_get_and_parse, align 4
  %41 = call i32 @END_TIMER(i32 %40)
  store i32 -1, i32* %3, align 4
  br label %62

42:                                               ; preds = %33
  %43 = load i64, i64* @inbuf, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* @inbuf, align 8
  %47 = call i64 @buffer_delete(i64 %46)
  store i64 %47, i64* @inbuf, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %50 = call i32 @assert(%struct.rpc_query* %49)
  %51 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %52 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %55 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @buffer_create_data(i32 %53, i32 %56)
  store i64 %57, i64* @inbuf, align 8
  %58 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %59 = call i32 @rpc_query_delete_nobuf(%struct.rpc_query* %58)
  %60 = load i32, i32* @rpc_get_and_parse, align 4
  %61 = call i32 @END_TIMER(i32 %60)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %48, %39, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local %struct.rpc_query* @rpc_query_get(i64) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i32 @rpc_get_answer(%struct.rpc_query*, double) #1

declare dso_local i64 @buffer_delete(i64) #1

declare dso_local i32 @assert(%struct.rpc_query*) #1

declare dso_local i64 @buffer_create_data(i32, i32) #1

declare dso_local i32 @rpc_query_delete_nobuf(%struct.rpc_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
