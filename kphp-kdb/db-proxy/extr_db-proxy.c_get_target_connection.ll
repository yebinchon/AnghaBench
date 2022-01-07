; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_get_target_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_get_target_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, %struct.connection* }
%struct.conn_target = type { double, %struct.connection* }

@cr_notyet = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"checked connection %p (%d %s:%d): ready status = %d (connect status %d)\0A\00", align 1
@cr_ok = common dso_local global i32 0, align 4
@round_robin = common dso_local global i64 0, align 8
@cr_busy = common dso_local global i32 0, align 4
@cr_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @get_target_connection(%struct.conn_target* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  store %struct.connection* null, %struct.connection** %5, align 8
  %9 = load i32, i32* @cr_notyet, align 4
  store i32 %9, i32* %7, align 4
  store i32 10000, i32* %8, align 4
  %10 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %11 = icmp ne %struct.conn_target* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %104

13:                                               ; preds = %1
  %14 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %15 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %14, i32 0, i32 1
  %16 = load %struct.connection*, %struct.connection** %15, align 8
  store %struct.connection* %16, %struct.connection** %4, align 8
  br label %17

17:                                               ; preds = %84, %13
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %20 = bitcast %struct.conn_target* %19 to %struct.connection*
  %21 = icmp ne %struct.connection* %18, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %17
  %23 = load %struct.connection*, %struct.connection** %4, align 8
  %24 = call i32 @sqlp_check_ready(%struct.connection* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.connection*, %struct.connection** %4, align 8
  %30 = load %struct.connection*, %struct.connection** %4, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.connection*, %struct.connection** %4, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @show_ip(i32 %35)
  %37 = load %struct.connection*, %struct.connection** %4, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.connection*, %struct.connection** %4, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), %struct.connection* %29, i32 %32, i8* %36, i32 %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %27, %22
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @cr_ok, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i64, i64* @round_robin, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %54 = load %struct.connection*, %struct.connection** %4, align 8
  %55 = call i32 @rotate_target(%struct.conn_target* %53, %struct.connection* %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %57, %struct.connection** %2, align 8
  br label %104

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @cr_busy, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  store i32 -1073741824, i32* %8, align 4
  %63 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %63, %struct.connection** %5, align 8
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %7, align 4
  br label %82

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @cr_stopped, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.connection*, %struct.connection** %4, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.connection*, %struct.connection** %4, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %79, %struct.connection** %5, align 8
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %75, %69, %65
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.connection*, %struct.connection** %4, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 5
  %87 = load %struct.connection*, %struct.connection** %86, align 8
  store %struct.connection* %87, %struct.connection** %4, align 8
  br label %17

88:                                               ; preds = %17
  %89 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %90 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %89, i32 0, i32 0
  %91 = load double, double* %90, align 8
  %92 = fcmp ogt double %91, 5.000000e+00
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @cr_notyet, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @cr_busy, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %93
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %104

102:                                              ; preds = %97, %88
  %103 = load %struct.connection*, %struct.connection** %5, align 8
  store %struct.connection* %103, %struct.connection** %2, align 8
  br label %104

104:                                              ; preds = %102, %101, %56, %12
  %105 = load %struct.connection*, %struct.connection** %2, align 8
  ret %struct.connection* %105
}

declare dso_local i32 @sqlp_check_ready(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.connection*, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @show_ip(i32) #1

declare dso_local i32 @rotate_target(%struct.conn_target*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
