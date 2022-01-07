; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_check_all_aio_completions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_check_all_aio_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.aio_connection* }
%struct.aio_connection = type { %struct.aio_connection* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"check_all_aio_completions ()\0A\00", align 1
@aio_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"check_all_aio_completions returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_all_aio_completions() #0 {
  %1 = alloca %struct.aio_connection*, align 8
  %2 = alloca %struct.aio_connection*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @verbosity, align 4
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.aio_connection*, %struct.aio_connection** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aio_list, i32 0, i32 0), align 8
  store %struct.aio_connection* %10, %struct.aio_connection** %1, align 8
  br label %11

11:                                               ; preds = %24, %9
  %12 = load %struct.aio_connection*, %struct.aio_connection** %1, align 8
  %13 = icmp ne %struct.aio_connection* %12, bitcast (%struct.TYPE_2__* @aio_list to %struct.aio_connection*)
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.aio_connection*, %struct.aio_connection** %1, align 8
  %16 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %15, i32 0, i32 0
  %17 = load %struct.aio_connection*, %struct.aio_connection** %16, align 8
  store %struct.aio_connection* %17, %struct.aio_connection** %2, align 8
  %18 = load %struct.aio_connection*, %struct.aio_connection** %1, align 8
  %19 = call i64 @check_aio_completion(%struct.aio_connection* %18)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load %struct.aio_connection*, %struct.aio_connection** %2, align 8
  store %struct.aio_connection* %25, %struct.aio_connection** %1, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* @verbosity, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %29, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @check_aio_completion(%struct.aio_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
