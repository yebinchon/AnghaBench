; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_color.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i8**, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WT_STATUS_ONBRANCH = common dso_local global i32 0, align 4
@WT_STATUS_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.wt_status*)* @color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @color(i32 %0, %struct.wt_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wt_status*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.wt_status* %1, %struct.wt_status** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %7 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @want_color(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %13 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @WT_STATUS_ONBRANCH, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @color_is_nil(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %29 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @WT_STATUS_HEADER, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %27, %23, %19
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

declare dso_local i64 @want_color(i32) #1

declare dso_local i64 @color_is_nil(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
