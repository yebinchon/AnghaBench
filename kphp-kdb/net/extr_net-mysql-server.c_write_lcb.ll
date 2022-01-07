; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_write_lcb.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_write_lcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\FC\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\FD\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\FE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_lcb(%struct.connection* %0, i64 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = icmp ule i64 %6, 250
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 0
  %11 = bitcast i64* %4 to i8*
  %12 = call i64 @write_out(i32* %10, i8* %11, i32 1)
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = icmp ule i64 %18, 65535
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = call i64 @write_out(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  %30 = bitcast i64* %4 to i8*
  %31 = call i64 @write_out(i32* %29, i8* %30, i32 2)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %72

36:                                               ; preds = %17
  %37 = load i64, i64* %4, align 8
  %38 = icmp ule i64 %37, 16777215
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 0
  %42 = call i64 @write_out(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.connection*, %struct.connection** %3, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 0
  %49 = bitcast i64* %4 to i8*
  %50 = call i64 @write_out(i32* %48, i8* %49, i32 3)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %71

55:                                               ; preds = %36
  %56 = load %struct.connection*, %struct.connection** %3, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  %58 = call i64 @write_out(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load %struct.connection*, %struct.connection** %3, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 0
  %65 = bitcast i64* %4 to i8*
  %66 = call i64 @write_out(i32* %64, i8* %65, i32 8)
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %55, %39
  br label %72

72:                                               ; preds = %71, %20
  br label %73

73:                                               ; preds = %72, %8
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
