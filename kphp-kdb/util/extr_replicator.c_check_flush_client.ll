; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_flush_client.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_flush_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_client_status = type { i64, double, %struct.related_binlog* }
%struct.related_binlog = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@MAX_CLIENT_UNFLUSHED_BYTES = common dso_local global i64 0, align 8
@MAX_FLUSH_INTERVAL = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [61 x i8] c"%lld unflushed bytes pending in binlog slice %s, syncing...\0A\00", align 1
@tot_unflushed_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_flush_client(%struct.repl_client_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repl_client_status*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.related_binlog*, align 8
  store %struct.repl_client_status* %0, %struct.repl_client_status** %3, align 8
  %6 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %7 = call double @get_utime(i32 %6)
  store double %7, double* %4, align 8
  %8 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %9 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAX_CLIENT_UNFLUSHED_BYTES, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %15 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %13
  %19 = load double, double* %4, align 8
  %20 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %21 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = load double, double* @MAX_FLUSH_INTERVAL, align 8
  %24 = fadd double %22, %23
  %25 = fcmp ogt double %19, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %18, %1
  %27 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %28 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %27, i32 0, i32 2
  %29 = load %struct.related_binlog*, %struct.related_binlog** %28, align 8
  store %struct.related_binlog* %29, %struct.related_binlog** %5, align 8
  %30 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %31 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.related_binlog*, %struct.related_binlog** %5, align 8
  %34 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %39)
  %41 = load %struct.related_binlog*, %struct.related_binlog** %5, align 8
  %42 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @fsync(i32 %45)
  %47 = icmp sge i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %51 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @tot_unflushed_bytes, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @tot_unflushed_bytes, align 4
  %57 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %58 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load double, double* %4, align 8
  %60 = load %struct.repl_client_status*, %struct.repl_client_status** %3, align 8
  %61 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %60, i32 0, i32 1
  store double %59, double* %61, align 8
  store i32 1, i32* %2, align 4
  br label %63

62:                                               ; preds = %18, %13
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
