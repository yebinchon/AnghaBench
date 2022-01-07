; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_set_cur_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_set_cur_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_n = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@dump_fd = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0ASwitching to dump %d\0A\00", align 1
@dump_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"dump%03d.%d\00", align 1
@dump_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cur_dump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 0, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @engine_n, align 4
  %9 = icmp slt i32 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** @fd, align 8
  %15 = load i64, i64* @dump_fd, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @dump_fd, align 8
  %24 = call i32 @dl_close_file(i64 %23)
  br label %25

25:                                               ; preds = %22, %19, %10
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i64, i64* @verbosity, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @dump_name, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @dump_type, align 4
  %37 = call i32 @snprintf(i32 %34, i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i64, i64* @dump_fd, align 8
  %39 = load i32, i32* @dump_name, align 4
  %40 = call i64 @dl_open_file(i64 %38, i32 %39, i32 -1)
  %41 = icmp sge i64 %40, 0
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_close_file(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @dl_open_file(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
