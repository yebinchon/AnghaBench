; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@R = common dso_local global i64 0, align 8
@R_end = common dso_local global i64 0, align 8
@max_connection = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i64 0, align 8
@Connections = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp_get_connections(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @R, align 8
  store i64 %8, i64* @R_end, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @max_connection, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i64, i64* @R_end, align 8
  %15 = load i64, i64* @R, align 8
  %16 = load i64, i64* @MAX_RES, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp slt i64 %14, %17
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi i1 [ false, %9 ], [ %18, %13 ]
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = load i32*, i32** @Connections, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @store_connection(i32* %25)
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %9

30:                                               ; preds = %19
  %31 = load %struct.connection*, %struct.connection** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @max_connection, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i64, i64* @R, align 8
  %37 = load i64, i64* @R_end, align 8
  %38 = load i64, i64* @R, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i32 @return_one_key_list(%struct.connection* %31, i8* %32, i32 %33, i32 %35, i32 5, i64 %36, i64 %39)
  ret i32 %40
}

declare dso_local i32 @store_connection(i32*) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
