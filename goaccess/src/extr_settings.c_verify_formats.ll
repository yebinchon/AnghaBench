; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_verify_formats.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_verify_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ERR_FORMAT_NO_TIME_FMT = common dso_local global i8* null, align 8
@ERR_FORMAT_NO_DATE_FMT = common dso_local global i8* null, align 8
@ERR_FORMAT_NO_LOG_FMT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @verify_formats() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4, %0
  %10 = load i8*, i8** @ERR_FORMAT_NO_TIME_FMT, align 8
  store i8* %10, i8** %1, align 8
  br label %32

11:                                               ; preds = %4
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %11
  %20 = load i8*, i8** @ERR_FORMAT_NO_DATE_FMT, align 8
  store i8* %20, i8** %1, align 8
  br label %32

21:                                               ; preds = %14
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %21
  %30 = load i8*, i8** @ERR_FORMAT_NO_LOG_FMT, align 8
  store i8* %30, i8** %1, align 8
  br label %32

31:                                               ; preds = %24
  store i8* null, i8** %1, align 8
  br label %32

32:                                               ; preds = %31, %29, %19, %9
  %33 = load i8*, i8** %1, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
