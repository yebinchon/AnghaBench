; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_compute_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_compute_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.conn_target = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@R = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp_get_compute_target(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.conn_target*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 6
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 6
  %13 = call %struct.conn_target* @calculate_key_target(i8* %10, i32 %12)
  store %struct.conn_target* %13, %struct.conn_target** %8, align 8
  %14 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %15 = icmp ne %struct.conn_target* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %19 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = load i32*, i32** @R, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %26 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @R, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** @R, align 8
  %34 = call i32 @return_one_key_list(%struct.connection* %30, i8* %31, i32 %32, i32 1, i32 2, i32* %33, i32 2)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %17, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.conn_target* @calculate_key_target(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
