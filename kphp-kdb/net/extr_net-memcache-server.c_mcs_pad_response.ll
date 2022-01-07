; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-memcache-server.c_mcs_pad_response.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-memcache-server.c_mcs_pad_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.connection*)* }
%struct.TYPE_4__ = type { i32 }

@conn_expect_query = common dso_local global i64 0, align 8
@mcs_pad_response.pad_str = internal global [16 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mcs_pad_response(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @conn_expect_query, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = call %struct.TYPE_4__* @MCS_DATA(%struct.connection* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %20, align 8
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = call i32 %21(%struct.connection* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 %27, 15
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.connection*, %struct.connection** %2, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @write_out(i32* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mcs_pad_response.pad_str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %26, %16
  br label %36

36:                                               ; preds = %35, %9, %1
  ret void
}

declare dso_local %struct.TYPE_4__* @MCS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
