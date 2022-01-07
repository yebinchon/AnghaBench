; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_authorized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 (%struct.connection*, i32)*, i32 (%struct.connection*)* }

@sql_database = common dso_local global i8* null, align 8
@sql_auth_ok = common dso_local global i32 0, align 4
@conn_ready = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"outcoming initdb successful\0A\00", align 1
@sql_auth_initdb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlp_authorized(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8 2, i8* %7, align 1
  %8 = load i8*, i8** @sql_database, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** @sql_database, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @sql_auth_ok, align 4
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = call %struct.TYPE_4__* @SQLC_DATA(%struct.connection* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @conn_ready, align 4
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = call %struct.TYPE_4__* @SQLC_DATA(%struct.connection* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = call %struct.TYPE_3__* @SQLC_FUNC(%struct.connection* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %33, align 8
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = call i32 %34(%struct.connection* %35)
  store i32 0, i32* %2, align 4
  br label %82

37:                                               ; preds = %10
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 0
  %40 = call i32 @nbit_setw(i32* %4, i32* %39)
  %41 = load %struct.connection*, %struct.connection** %3, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 0
  %43 = call i64 (i32*, ...) @write_out(i32* %42, i32* %5, i32 4)
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 0
  %46 = call i64 (i32*, ...) @write_out(i32* %45, i8* %7, i32 1)
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load i8*, i8** @sql_database, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %37
  %54 = load i8*, i8** @sql_database, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.connection*, %struct.connection** %3, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 0
  %61 = load i8*, i8** @sql_database, align 8
  %62 = load i8*, i8** @sql_database, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i64 (i32*, ...) @write_out(i32* %60, i8* %61, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %58, %53, %37
  %70 = call i32 @nbit_write_out(i32* %4, i32* %6, i32 3)
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = call %struct.TYPE_3__* @SQLC_FUNC(%struct.connection* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %73, align 8
  %75 = load %struct.connection*, %struct.connection** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 %74(%struct.connection* %75, i32 %76)
  %78 = load i32, i32* @sql_auth_initdb, align 4
  %79 = load %struct.connection*, %struct.connection** %3, align 8
  %80 = call %struct.TYPE_4__* @SQLC_DATA(%struct.connection* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %69, %30
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_4__* @SQLC_DATA(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @SQLC_FUNC(%struct.connection*) #1

declare dso_local i32 @nbit_setw(i32*, i32*) #1

declare dso_local i64 @write_out(i32*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nbit_write_out(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
