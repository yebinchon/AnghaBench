; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_strings.c_drbd_set_st_err_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_strings.c_drbd_set_st_err_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_AFTER_LAST_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"TOO_SMALL\00", align 1
@SS_TWO_PRIMARIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"TOO_LARGE\00", align 1
@drbd_state_sw_errors = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @drbd_set_st_err_str(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SS_AFTER_LAST_ERROR, align 4
  %5 = icmp ule i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SS_TWO_PRIMARIES, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %19

12:                                               ; preds = %7
  %13 = load i8**, i8*** @drbd_state_sw_errors, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sub i32 0, %14
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  %18 = load i8*, i8** %17, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %11 ], [ %18, %12 ]
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %6 ], [ %20, %19 ]
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
