; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_reflog_iterator_select.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_reflog_iterator_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }

@ITER_SELECT_0 = common dso_local global i32 0, align 4
@REF_TYPE_NORMAL = common dso_local global i64 0, align 8
@ITER_SELECT_1 = common dso_local global i32 0, align 4
@ITER_SKIP_1 = common dso_local global i32 0, align 4
@ITER_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*, %struct.ref_iterator*, i8*)* @reflog_iterator_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reflog_iterator_select(%struct.ref_iterator* %0, %struct.ref_iterator* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_iterator*, align 8
  %6 = alloca %struct.ref_iterator*, align 8
  %7 = alloca i8*, align 8
  store %struct.ref_iterator* %0, %struct.ref_iterator** %5, align 8
  store %struct.ref_iterator* %1, %struct.ref_iterator** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %9 = icmp ne %struct.ref_iterator* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @ITER_SELECT_0, align 4
  store i32 %11, i32* %4, align 4
  br label %28

12:                                               ; preds = %3
  %13 = load %struct.ref_iterator*, %struct.ref_iterator** %6, align 8
  %14 = icmp ne %struct.ref_iterator* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.ref_iterator*, %struct.ref_iterator** %6, align 8
  %17 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ref_type(i32 %18)
  %20 = load i64, i64* @REF_TYPE_NORMAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @ITER_SELECT_1, align 4
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @ITER_SKIP_1, align 4
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %12
  %27 = load i32, i32* @ITER_DONE, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @ref_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
