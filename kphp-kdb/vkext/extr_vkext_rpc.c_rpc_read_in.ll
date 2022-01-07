; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_read_in.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_read_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32, i64, i64 }

@read_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, i8*, i32, double)* @rpc_read_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_read_in(%struct.rpc_server* %0, i8* %1, i32 %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_server*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store %struct.rpc_server* %0, %struct.rpc_server** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  %11 = load i32, i32* @read_in, align 4
  %12 = call i32 @ADD_CNT(i32 %11)
  %13 = load i32, i32* @read_in, align 4
  %14 = call i32 @START_TIMER(i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %17 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %23 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %26 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @memcpy(i8* %21, i64 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %39 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @read_in, align 4
  %43 = call i32 @END_TIMER(i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %5, align 4
  br label %68

45:                                               ; preds = %4
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %48 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %51 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %55 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i8* %46, i64 %53, i32 %56)
  %58 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %59 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  %61 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %62 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %64 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load i32, i32* @read_in, align 4
  %66 = call i32 @END_TIMER(i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %45, %20
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @END_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
