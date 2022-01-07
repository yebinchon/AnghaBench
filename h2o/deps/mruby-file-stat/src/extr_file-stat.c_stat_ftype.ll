; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_stat_ftype.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_stat_ftype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"characterSpecial\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @stat_ftype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_ftype(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.stat* @get_stat(i32* %7, i32 %8)
  store %struct.stat* %9, %struct.stat** %5, align 8
  %10 = load %struct.stat*, %struct.stat** %5, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISREG(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.stat*, %struct.stat** %5, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISDIR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %32

23:                                               ; preds = %16
  %24 = load %struct.stat*, %struct.stat** %5, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISCHR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %31

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = call i32 @mrb_str_new_static(i32* %34, i8* %35, i64 %37)
  ret i32 %38
}

declare dso_local %struct.stat* @get_stat(i32*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @mrb_str_new_static(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
