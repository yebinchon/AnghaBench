; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_default_want_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_default_want_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_del_list = type { i32* }

@targ_existed = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@split_mode = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@copy_rem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @default_want_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_want_write(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %24 [
    i32 131, label %10
    i32 134, label %21
    i32 130, label %22
    i32 136, label %22
    i32 132, label %22
    i32 133, label %22
    i32 135, label %23
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @targ_existed, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @targ_existed, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @jump_log_pos, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

22:                                               ; preds = %3, %3, %3, %3
  store i32 0, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load i32, i32* @split_mode, align 4
  switch i32 %25, label %49 [
    i32 129, label %26
    i32 128, label %33
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.lev_del_list*
  %29 = getelementptr inbounds %struct.lev_del_list, %struct.lev_del_list* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %49

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.lev_del_list*
  %36 = getelementptr inbounds %struct.lev_del_list, %struct.lev_del_list* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @abs(i32 %39) #2
  %41 = load i8*, i8** %6, align 8
  %42 = bitcast i8* %41 to %struct.lev_del_list*
  %43 = getelementptr inbounds %struct.lev_del_list, %struct.lev_del_list* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @abs(i32 %46) #2
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %24, %33, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @copy_mod, align 4
  %52 = load i32, i32* %8, align 4
  %53 = srem i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @copy_rem, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @copy_rem, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %50
  store i32 1, i32* %4, align 4
  br label %64

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %23, %22, %21, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
