; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_set_cur_database_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_set_cur_database_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_n = common dso_local global i32 0, align 4
@database_dump_prefix = common dso_local global i8* null, align 8
@fd = common dso_local global i32* null, align 8
@dump_fd = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"\0ASwitching to database dump %d, memory_used = %lld\0A\00", align 1
@dump_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s%03d.dump\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cur_database_dump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 0, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @engine_n, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i8*, i8** @database_dump_prefix, align 8
  %12 = icmp ne i8* %11, null
  br label %13

13:                                               ; preds = %10, %6, %1
  %14 = phi i1 [ false, %6 ], [ false, %1 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** @fd, align 8
  %18 = load i64, i64* @dump_fd, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i64, i64* @dump_fd, align 8
  %24 = call i32 @dl_close_file(i64 %23)
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i64, i64* @verbosity, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (...) @dl_get_memory_used()
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* @dump_name, align 4
  %36 = load i8*, i8** @database_dump_prefix, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @snprintf(i32 %35, i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i64, i64* @dump_fd, align 8
  %40 = load i32, i32* @dump_name, align 4
  %41 = call i64 @dl_open_file(i64 %39, i32 %40, i32 -1)
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_close_file(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @dl_get_memory_used(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @dl_open_file(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
