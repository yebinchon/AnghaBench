; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-stats.c_init_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-stats.c_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engineF = common dso_local global i32 0, align 4
@engineN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%03d\00", align 1
@stat_name = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Filename is too long.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@f = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"File '%s' not found.\0A\00", align 1
@left_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_data() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca i32, align 4
  %3 = load i32, i32* @engineF, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %39, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @engineN, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %10 = load i8*, i8** @stat_name, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @snprintf(i8* %9, i32 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  %13 = icmp sge i32 %12, 100
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32**, i32*** @f, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  store i32* %20, i32** %24, align 8
  %25 = load i32**, i32*** @f, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load i32, i32* @stderr, align 4
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %18
  %37 = load i32, i32* @left_files, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @left_files, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %4

42:                                               ; preds = %4
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
