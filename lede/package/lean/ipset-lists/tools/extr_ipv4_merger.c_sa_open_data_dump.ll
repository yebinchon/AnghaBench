; ModuleID = '/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_sa_open_data_dump.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_sa_open_data_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_open_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s-%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa_open_data*)* @sa_open_data_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa_open_data_dump(%struct.sa_open_data* %0) #0 {
  %2 = alloca %struct.sa_open_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca [20 x i8], align 16
  store %struct.sa_open_data* %0, %struct.sa_open_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.sa_open_data*, %struct.sa_open_data** %2, align 8
  %9 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load %struct.sa_open_data*, %struct.sa_open_data** %2, align 8
  %14 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %21 = call i8* @ipv4_hltos(i32 %19, i8* %20)
  %22 = load %struct.sa_open_data*, %struct.sa_open_data** %2, align 8
  %23 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %30 = call i8* @ipv4_hltos(i32 %28, i8* %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %30)
  br label %32

32:                                               ; preds = %12
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %6

35:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @ipv4_hltos(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
