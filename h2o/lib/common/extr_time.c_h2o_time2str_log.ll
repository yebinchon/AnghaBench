; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_time.c_h2o_time2str_log.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_time.c_h2o_time2str_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%02d/%s/%d:%02d:%02d:%02d %c%02d%02d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Jan\00Feb\00Mar\00Apr\00May\00Jun\00Jul\00Aug\00Sep\00Oct\00Nov\00Dec\00\00", align 1
@H2O_TIMESTR_LOG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_time2str_log(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @localtime_r(i32* %4, %struct.tm* %5)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @calc_gmt_offset(i32 %10, %struct.tm* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 43, i32* %7, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  store i32 45, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %25
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1900
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 60
  %39 = load i32, i32* %6, align 4
  %40 = srem i32 %39, 60
  %41 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %26, i32 %29, i32 %31, i32 %33, i32 %35, i32 %36, i32 %38, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @H2O_TIMESTR_LOG_LEN, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  ret void
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @calc_gmt_offset(i32, %struct.tm*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
