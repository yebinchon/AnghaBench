; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_memcache_get_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_memcache_get_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32 }

@C_INTIMEOUT = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@total_get_time = common dso_local global i32 0, align 4
@get_queries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"memcache_get end: query time %.3fms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get_end(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @C_INTIMEOUT, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %12 = call i32 @get_utime(i32 %11)
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @total_get_time, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* @total_get_time, align 4
  %24 = load i32, i32* @get_queries, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @get_queries, align 4
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 2
  %28 = call i32 @write_out(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %29 = load i32, i32* @verbosity, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @stderr, align 4
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %2
  ret i32 0
}

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
