; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i8* null, align 8
@blksize = common dso_local global i32 0, align 4
@stats_port = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Illegal -R %s option\0A\00", align 1
@timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unimplemented option '%c' (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %44 [
    i32 66, label %5
    i32 80, label %18
    i32 82, label %21
    i32 84, label %31
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @optarg, align 8
  %7 = call i8* @atoi(i8* %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* @blksize, align 4
  %9 = load i32, i32* @blksize, align 4
  %10 = icmp sge i32 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i32, i32* @blksize, align 4
  %13 = icmp sle i32 %12, 65464
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %51

18:                                               ; preds = %1
  %19 = load i8*, i8** @optarg, align 8
  %20 = call i8* @atoi(i8* %19)
  store i8* %20, i8** @stats_port, align 8
  br label %51

21:                                               ; preds = %1
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @parse_port_range(i8* %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 (...) @usage()
  br label %51

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %1, %30
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i8* @atoi(i8* %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* @timeout, align 4
  %35 = load i32, i32* @timeout, align 4
  %36 = icmp sge i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @timeout, align 4
  %39 = icmp sle i32 %38, 255
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi i1 [ false, %31 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %51

44:                                               ; preds = %1
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %3, align 4
  %47 = trunc i32 %46 to i8
  %48 = sext i8 %47 to i32
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  store i32 -1, i32* %2, align 4
  br label %52

51:                                               ; preds = %40, %25, %18, %14
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @parse_port_range(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
