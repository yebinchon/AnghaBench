; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_hts_default_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_hts_default_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.hts_data = type { i32, i64, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"http_server: op=%d, header_size=%d\0A\00", align 1
@netw_queries = common dso_local global i32 0, align 4
@netw_update_queries = common dso_local global i32 0, align 4
@QF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_default_execute(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hts_data*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = call %struct.hts_data* @HTS_DATA(%struct.connection* %6)
  store %struct.hts_data* %7, %struct.hts_data** %5, align 8
  %8 = load i64, i64* @verbosity, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.hts_data*, %struct.hts_data** %5, align 8
  %14 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 131
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* @netw_queries, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @netw_queries, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 130
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @netw_update_queries, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @netw_update_queries, align 4
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %33 [
    i32 131, label %31
    i32 130, label %32
    i32 128, label %32
    i32 129, label %32
  ]

31:                                               ; preds = %29
  br label %39

32:                                               ; preds = %29, %29, %29
  br label %33

33:                                               ; preds = %29, %32
  %34 = load i32, i32* @QF_ERROR, align 4
  %35 = load %struct.hts_data*, %struct.hts_data** %5, align 8
  %36 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %31
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 0
  %42 = load %struct.hts_data*, %struct.hts_data** %5, align 8
  %43 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @advance_skip_read_ptr(i32* %41, i32 %44)
  %46 = load %struct.hts_data*, %struct.hts_data** %5, align 8
  %47 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.hts_data*, %struct.hts_data** %5, align 8
  %54 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 -413, i32 -501
  ret i32 %58
}

declare dso_local %struct.hts_data* @HTS_DATA(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @advance_skip_read_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
