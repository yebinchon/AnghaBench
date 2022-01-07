; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_check_gather_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_check_gather_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, %struct.conn_query* }
%struct.conn_query = type { i64, %struct.conn_query*, i64, %struct.connection* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_gather_query(%struct.connection* %0, %struct.conn_query* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.conn_query*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.conn_query* %1, %struct.conn_query** %5, align 8
  %8 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %9 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %8, i32 0, i32 3
  %10 = load %struct.connection*, %struct.connection** %9, align 8
  store %struct.connection* %10, %struct.connection** %6, align 8
  %11 = load %struct.connection*, %struct.connection** %6, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 1
  %13 = load %struct.conn_query*, %struct.conn_query** %12, align 8
  store %struct.conn_query* %13, %struct.conn_query** %7, align 8
  %14 = load %struct.connection*, %struct.connection** %6, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %18 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %38, %22
  %24 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %25 = load %struct.connection*, %struct.connection** %6, align 8
  %26 = bitcast %struct.connection* %25 to %struct.conn_query*
  %27 = icmp ne %struct.conn_query* %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %30 = call i32 @assert(%struct.conn_query* %29)
  %31 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %32 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %33 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.conn_query*
  %36 = icmp eq %struct.conn_query* %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %40 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %39, i32 0, i32 1
  %41 = load %struct.conn_query*, %struct.conn_query** %40, align 8
  store %struct.conn_query* %41, %struct.conn_query** %7, align 8
  br label %23

42:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @assert(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
