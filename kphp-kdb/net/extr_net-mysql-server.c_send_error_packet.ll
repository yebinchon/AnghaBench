; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_send_error_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_send_error_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"#%05d\00", align 1
@C_WANTWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_error_packet(%struct.connection* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.connection*, %struct.connection** %7, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 1
  %18 = call i32 @nbit_setw(i32* %13, i32* %17)
  %19 = load i32, i32* %12, align 4
  %20 = shl i32 %19, 24
  store i32 %20, i32* %12, align 4
  %21 = load %struct.connection*, %struct.connection** %7, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 1
  %23 = call i64 (i32*, ...) @write_out(i32* %22, i32* %12, i32 4)
  %24 = load %struct.connection*, %struct.connection** %7, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 1
  %26 = call i64 (i32*, ...) @write_out(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load %struct.connection*, %struct.connection** %7, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 1
  %33 = call i64 (i32*, ...) @write_out(i32* %32, i32* %8, i32 2)
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %15, align 4
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.connection*, %struct.connection** %7, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 1
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %44 = call i64 (i32*, ...) @write_out(i32* %42, i8* %43, i32 6)
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load %struct.connection*, %struct.connection** %7, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 1
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 (i32*, ...) @write_out(i32* %50, i8* %51, i32 %52)
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = call i32 @nbit_write_out(i32* %13, i32* %15, i32 3)
  %59 = load %struct.connection*, %struct.connection** %7, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @sqls_flush_packet(%struct.connection* %59, i32 %60)
  %62 = load i32, i32* @C_WANTWR, align 4
  %63 = load %struct.connection*, %struct.connection** %7, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 4
  ret i32 %68
}

declare dso_local i32 @nbit_setw(i32*, i32*) #1

declare dso_local i64 @write_out(i32*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @nbit_write_out(i32*, i32*, i32) #1

declare dso_local i32 @sqls_flush_packet(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
