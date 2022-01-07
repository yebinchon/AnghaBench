; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_sqlp_authorized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_sqlp_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 (%struct.connection*, i32)*, i32 (%struct.connection*)* }

@sql_database = common dso_local global i8* null, align 8
@sql_auth_ok = common dso_local global i32 0, align 4
@conn_ready = common dso_local global i32 0, align 4
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
  br i1 %13, label %32, label %14

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
  %25 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = call %struct.TYPE_3__* @SQLC_FUNC(%struct.connection* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %28, align 8
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = call i32 %29(%struct.connection* %30)
  store i32 0, i32* %2, align 4
  br label %78

32:                                               ; preds = %10
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  %35 = call i32 @nbit_setw(i32* %4, i32* %34)
  %36 = load %struct.connection*, %struct.connection** %3, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 0
  %38 = call i64 (i32*, ...) @write_out(i32* %37, i32* %5, i32 4)
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 0
  %41 = call i64 (i32*, ...) @write_out(i32* %40, i8* %7, i32 1)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i8*, i8** @sql_database, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %32
  %49 = load i8*, i8** @sql_database, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.connection*, %struct.connection** %3, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 0
  %56 = load i8*, i8** @sql_database, align 8
  %57 = load i8*, i8** @sql_database, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = trunc i64 %58 to i32
  %60 = call i64 (i32*, ...) @write_out(i32* %55, i8* %56, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %53, %48, %32
  %66 = call i32 @nbit_write_out(i32* %4, i32* %6, i32 3)
  %67 = load %struct.connection*, %struct.connection** %3, align 8
  %68 = call %struct.TYPE_3__* @SQLC_FUNC(%struct.connection* %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %69, align 8
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 %70(%struct.connection* %71, i32 %72)
  %74 = load i32, i32* @sql_auth_initdb, align 4
  %75 = load %struct.connection*, %struct.connection** %3, align 8
  %76 = call %struct.TYPE_4__* @SQLC_DATA(%struct.connection* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %65, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_4__* @SQLC_DATA(%struct.connection*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @SQLC_FUNC(%struct.connection*) #1

declare dso_local i32 @nbit_setw(i32*, i32*) #1

declare dso_local i64 @write_out(i32*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @nbit_write_out(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
