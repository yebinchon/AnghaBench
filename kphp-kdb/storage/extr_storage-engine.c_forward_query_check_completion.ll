; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_forward_query_check_completion.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_forward_query_check_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_forward_query = type { double, %struct.rpc_forward_query*, %struct.rpc_forward_query*, %struct.rpc_get_file_data* }
%struct.rpc_get_file_data = type { i32 }
%struct.connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_forward_query*, double)* @forward_query_check_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_query_check_completion(%struct.rpc_forward_query* %0, double %1) #0 {
  %3 = alloca %struct.rpc_forward_query*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_get_file_data*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca %struct.rpc_forward_query*, align 8
  %9 = alloca %struct.rpc_forward_query*, align 8
  store %struct.rpc_forward_query* %0, %struct.rpc_forward_query** %3, align 8
  store double %1, double* %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %10, i32 0, i32 3
  %12 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %11, align 8
  store %struct.rpc_get_file_data* %12, %struct.rpc_get_file_data** %6, align 8
  %13 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %6, align 8
  %14 = call %struct.connection* @find_target_connection(%struct.rpc_get_file_data* %13)
  store %struct.connection* %14, %struct.connection** %7, align 8
  %15 = load %struct.connection*, %struct.connection** %7, align 8
  %16 = icmp ne %struct.connection* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.connection*, %struct.connection** %7, align 8
  %19 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %6, align 8
  %20 = call i32 @rpc_forward_file_content(%struct.connection* %18, %struct.rpc_get_file_data* %19)
  store i32 1, i32* %5, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load double, double* %4, align 8
  %23 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fcmp oge double %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %6, align 8
  %29 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %6, align 8
  %32 = call i32 @rpc_send_file_content(i32 %30, %struct.rpc_get_file_data* %31)
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %38, i32 0, i32 1
  %40 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %39, align 8
  store %struct.rpc_forward_query* %40, %struct.rpc_forward_query** %8, align 8
  %41 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %42 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %41, i32 0, i32 2
  %43 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %42, align 8
  store %struct.rpc_forward_query* %43, %struct.rpc_forward_query** %9, align 8
  %44 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %9, align 8
  %45 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %8, align 8
  %46 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %45, i32 0, i32 2
  store %struct.rpc_forward_query* %44, %struct.rpc_forward_query** %46, align 8
  %47 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %8, align 8
  %48 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %9, align 8
  %49 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %48, i32 0, i32 1
  store %struct.rpc_forward_query* %47, %struct.rpc_forward_query** %49, align 8
  br label %50

50:                                               ; preds = %37, %34
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.connection* @find_target_connection(%struct.rpc_get_file_data*) #1

declare dso_local i32 @rpc_forward_file_content(%struct.connection*, %struct.rpc_get_file_data*) #1

declare dso_local i32 @rpc_send_file_content(i32, %struct.rpc_get_file_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
