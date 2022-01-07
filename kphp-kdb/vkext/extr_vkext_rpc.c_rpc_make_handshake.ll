; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_make_handshake.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_make_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i64, i64, i32, i32 }

@rpc_status_connected = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_make_handshake(%struct.rpc_server* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_server*, align 8
  %5 = alloca double, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %4, align 8
  store double %1, double* %5, align 8
  %6 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @rpc_status_connected, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %67

17:                                               ; preds = %11
  %18 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -2
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -2
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %29 = call i32 @rpc_server_disconnect(%struct.rpc_server* %28)
  store i32 -1, i32* %3, align 4
  br label %67

30:                                               ; preds = %22
  %31 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %32 = load double, double* %5, align 8
  %33 = call i64 @rpc_nonce_send(%struct.rpc_server* %31, double %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %37 = call i32 @rpc_server_disconnect(%struct.rpc_server* %36)
  store i32 -1, i32* %3, align 4
  br label %67

38:                                               ; preds = %30
  %39 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %40 = load double, double* %5, align 8
  %41 = call i64 @rpc_work(%struct.rpc_server* %39, i32 1, double %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %45 = call i32 @rpc_server_disconnect(%struct.rpc_server* %44)
  store i32 -1, i32* %3, align 4
  br label %67

46:                                               ; preds = %38
  %47 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %48 = load double, double* %5, align 8
  %49 = call i64 @rpc_work(%struct.rpc_server* %47, i32 1, double %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %53 = call i32 @rpc_server_disconnect(%struct.rpc_server* %52)
  store i32 -1, i32* %3, align 4
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %56 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %54, %51, %43, %35, %27, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @rpc_server_disconnect(%struct.rpc_server*) #1

declare dso_local i64 @rpc_nonce_send(%struct.rpc_server*, double) #1

declare dso_local i64 @rpc_work(%struct.rpc_server*, i32, double) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
