; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_conn_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_conn_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64, %struct.conn_query*, i64, %struct.connection* }
%struct.connection = type { i64, %struct.conn_query* }
%struct.gather_data = type { i64, i32 }

@cur_key_len = common dso_local global i64 0, align 8
@cur_key = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No target gather found. Dropping request.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_query* @get_conn_query(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.conn_query*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.conn_query*, align 8
  %9 = alloca %struct.connection*, align 8
  %10 = alloca %struct.conn_query*, align 8
  %11 = alloca %struct.conn_query*, align 8
  %12 = alloca %struct.gather_data*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @get_key(i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.conn_query* null, %struct.conn_query** %4, align 8
  br label %105

18:                                               ; preds = %3
  %19 = load %struct.connection*, %struct.connection** %5, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 1
  %21 = load %struct.conn_query*, %struct.conn_query** %20, align 8
  store %struct.conn_query* %21, %struct.conn_query** %8, align 8
  br label %22

22:                                               ; preds = %94, %69, %38, %18
  %23 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = bitcast %struct.connection* %24 to %struct.conn_query*
  %26 = icmp ne %struct.conn_query* %23, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %22
  %28 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 3
  %30 = load %struct.connection*, %struct.connection** %29, align 8
  store %struct.connection* %30, %struct.connection** %9, align 8
  %31 = load %struct.connection*, %struct.connection** %9, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %35 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %40 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %39, i32 0, i32 1
  %41 = load %struct.conn_query*, %struct.conn_query** %40, align 8
  store %struct.conn_query* %41, %struct.conn_query** %8, align 8
  br label %22

42:                                               ; preds = %27
  %43 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %44 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.conn_query*
  store %struct.conn_query* %46, %struct.conn_query** %10, align 8
  %47 = load %struct.connection*, %struct.connection** %9, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 1
  %49 = load %struct.conn_query*, %struct.conn_query** %48, align 8
  store %struct.conn_query* %49, %struct.conn_query** %11, align 8
  br label %50

50:                                               ; preds = %60, %42
  %51 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %52 = load %struct.connection*, %struct.connection** %9, align 8
  %53 = bitcast %struct.connection* %52 to %struct.conn_query*
  %54 = icmp ne %struct.conn_query* %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %57 = load %struct.conn_query*, %struct.conn_query** %10, align 8
  %58 = icmp eq %struct.conn_query* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %64

60:                                               ; preds = %55
  %61 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %62 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %61, i32 0, i32 1
  %63 = load %struct.conn_query*, %struct.conn_query** %62, align 8
  store %struct.conn_query* %63, %struct.conn_query** %11, align 8
  br label %50

64:                                               ; preds = %59, %50
  %65 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %66 = load %struct.connection*, %struct.connection** %9, align 8
  %67 = bitcast %struct.connection* %66 to %struct.conn_query*
  %68 = icmp eq %struct.conn_query* %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %71 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %70, i32 0, i32 1
  %72 = load %struct.conn_query*, %struct.conn_query** %71, align 8
  store %struct.conn_query* %72, %struct.conn_query** %8, align 8
  br label %22

73:                                               ; preds = %64
  %74 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %75 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.conn_query*
  %78 = call %struct.gather_data* @GATHER_QUERY(%struct.conn_query* %77)
  store %struct.gather_data* %78, %struct.gather_data** %12, align 8
  %79 = load %struct.gather_data*, %struct.gather_data** %12, align 8
  %80 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @cur_key_len, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load %struct.gather_data*, %struct.gather_data** %12, align 8
  %86 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @cur_key, align 4
  %89 = load i64, i64* @cur_key_len, align 8
  %90 = call i32 @memcmp(i32 %87, i32 %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  store %struct.conn_query* %93, %struct.conn_query** %4, align 8
  br label %105

94:                                               ; preds = %84, %73
  %95 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %96 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %95, i32 0, i32 1
  %97 = load %struct.conn_query*, %struct.conn_query** %96, align 8
  store %struct.conn_query* %97, %struct.conn_query** %8, align 8
  br label %22

98:                                               ; preds = %22
  %99 = load i64, i64* @verbosity, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  store %struct.conn_query* null, %struct.conn_query** %4, align 8
  br label %105

105:                                              ; preds = %104, %92, %17
  %106 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  ret %struct.conn_query* %106
}

declare dso_local i32 @get_key(i8*, i32) #1

declare dso_local %struct.gather_data* @GATHER_QUERY(%struct.conn_query*) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
