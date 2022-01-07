; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_open_binlog_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_open_binlog_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@BINLOG_NAME = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@CC = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"can not open file for replication (error %m)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_binlog_file() #0 {
  %1 = load i8*, i8** @BINLOG_NAME, align 8
  %2 = load i32, i32* @O_RDWR, align 4
  %3 = load i32, i32* @O_CREAT, align 4
  %4 = or i32 %2, %3
  %5 = call i64 @open(i8* %1, i32 %4, i32 384)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %0
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @BINLOG_NAME, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %0
  ret void
}

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
