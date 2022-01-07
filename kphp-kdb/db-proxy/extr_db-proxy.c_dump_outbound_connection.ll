; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_dump_outbound_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_dump_outbound_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sqlc_data = type { i32, i32 }

@.str = private unnamed_addr constant [290 x i8] c"fd = %d, %s:%d, flags = %d , status = %d, err = %d, gen = %d, skip = %d, basic_type = %d\0A  Inb = %d + %d, Outb = %d + %d, pend = %d, ready = %d, parse_state=%d, type = %p\0A  auth state = %d, packet_state = %d\0A  last_response_time = %.6f, last_query_sent_time = %.6f, last_query_time = %.6f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_outbound_connection(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sqlc_data*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.connection*, %struct.connection** %4, align 8
  %9 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %8)
  store %struct.sqlc_data* %9, %struct.sqlc_data** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 16
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @show_ip(i32 %17)
  %19 = load %struct.connection*, %struct.connection** %4, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.connection*, %struct.connection** %4, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.connection*, %struct.connection** %4, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.connection*, %struct.connection** %4, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.connection*, %struct.connection** %4, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.connection*, %struct.connection** %4, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.connection*, %struct.connection** %4, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.connection*, %struct.connection** %4, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 15
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.connection*, %struct.connection** %4, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 15
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.connection*, %struct.connection** %4, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 14
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.connection*, %struct.connection** %4, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 14
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.connection*, %struct.connection** %4, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.connection*, %struct.connection** %4, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.connection*, %struct.connection** %4, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.connection*, %struct.connection** %4, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sqlc_data*, %struct.sqlc_data** %7, align 8
  %69 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sqlc_data*, %struct.sqlc_data** %7, align 8
  %72 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.connection*, %struct.connection** %4, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 11
  %76 = load double, double* %75, align 8
  %77 = load %struct.connection*, %struct.connection** %4, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 12
  %79 = load double, double* %78, align 8
  %80 = load %struct.connection*, %struct.connection** %4, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 13
  %82 = load double, double* %81, align 8
  %83 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, double %76, double %79, double %82)
  ret i32 %83
}

declare dso_local %struct.sqlc_data* @SQLC_DATA(%struct.connection*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double) #1

declare dso_local i8* @show_ip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
