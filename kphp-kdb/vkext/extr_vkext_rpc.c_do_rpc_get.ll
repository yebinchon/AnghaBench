; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { double, i8*, i32, i64 }

@rpc_get = common dso_local global i32 0, align 4
@rpc_get_and_parse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rpc_get(i64 %0, double %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.rpc_query*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store double %1, double* %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* @rpc_get, align 4
  %12 = call i32 @ADD_CNT(i32 %11)
  %13 = load i32, i32* @rpc_get, align 4
  %14 = call i32 @START_TIMER(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.rpc_query* @rpc_query_get(i64 %15)
  store %struct.rpc_query* %16, %struct.rpc_query** %8, align 8
  %17 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %18 = icmp ne %struct.rpc_query* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @rpc_get, align 4
  %21 = call i32 @END_TIMER(i32 %20)
  store i32 -1, i32* %4, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load double, double* %6, align 8
  %24 = fcmp oge double %23, 0.000000e+00
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %27 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sitofp i64 %28 to double
  %30 = load double, double* %6, align 8
  %31 = fadd double %30, %29
  store double %31, double* %6, align 8
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %34 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  store double %35, double* %6, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %38 = load double, double* %6, align 8
  %39 = call i32 @rpc_get_answer(%struct.rpc_query* %37, double %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @rpc_get, align 4
  %44 = call i32 @END_TIMER(i32 %43)
  store i32 -1, i32* %4, align 4
  br label %60

45:                                               ; preds = %36
  %46 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %47 = call i32 @assert(%struct.rpc_query* %46)
  %48 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %49 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %53 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  %55 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %56 = call i32 @rpc_query_delete_nobuf(%struct.rpc_query* %55)
  %57 = load i32, i32* @rpc_get_and_parse, align 4
  %58 = call i32 @END_TIMER(i32 %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %45, %42, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local %struct.rpc_query* @rpc_query_get(i64) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i32 @rpc_get_answer(%struct.rpc_query*, double) #1

declare dso_local i32 @assert(%struct.rpc_query*) #1

declare dso_local i32 @rpc_query_delete_nobuf(%struct.rpc_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
