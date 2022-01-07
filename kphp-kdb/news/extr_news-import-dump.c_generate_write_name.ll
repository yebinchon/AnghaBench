; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_generate_write_name.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_generate_write_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_split_mod = common dso_local global i32 0, align 4
@cur_write_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s%02d.bin\00", align 1
@name_pattern = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s%03d.bin\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s%04d.bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_write_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %4 = load i32, i32* @log_split_mod, align 4
  %5 = icmp sgt i32 %4, 100
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 3, i32* %3, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, i32* @log_split_mod, align 4
  %9 = icmp sgt i32 %8, 1000
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 4, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @cur_write_name, align 4
  %16 = load i8*, i8** @name_pattern, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @sprintf(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @cur_write_name, align 4
  %24 = load i8*, i8** @name_pattern, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @sprintf(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25)
  br label %36

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @cur_write_name, align 4
  %32 = load i8*, i8** @name_pattern, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @sprintf(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %14
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
