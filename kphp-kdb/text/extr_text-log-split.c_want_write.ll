; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_want_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_want_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_flags = type { i32 }

@targ_existed = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@copy_rem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @want_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want_write(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %22 [
    i32 129, label %8
    i32 132, label %19
    i32 128, label %20
    i32 133, label %20
    i32 130, label %20
    i32 131, label %20
    i32 134, label %21
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @targ_existed, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @targ_existed, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @jump_log_pos, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

20:                                               ; preds = %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.lev_set_flags*
  %25 = getelementptr inbounds %struct.lev_set_flags, %struct.lev_set_flags* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @copy_mod, align 4
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @copy_rem, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @copy_rem, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %27
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %21, %20, %19, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
