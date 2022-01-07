; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_list_intersect_x_prefix.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_list_intersect_x_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LA = common dso_local global i64* null, align 8
@LE = common dso_local global i64* null, align 8
@object_id_ints_adjusted = common dso_local global i32 0, align 4
@MAX_OBJECT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @list_intersect_x_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_intersect_x_prefix(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64*, i64** @LA, align 8
  %7 = load i64*, i64** @LE, align 8
  %8 = icmp ult i64* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @IF_LISTS_Z(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load i64*, i64** @LA, align 8
  %14 = call i32 @OARR_ENTRY(i64* %13, i32 0)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @object_id_compare_prefix(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br label %18

18:                                               ; preds = %12, %5
  %19 = phi i1 [ false, %5 ], [ %17, %12 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load i32, i32* @object_id_ints_adjusted, align 4
  %22 = load i64*, i64** @LA, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64* %24, i64** @LA, align 8
  br label %5

25:                                               ; preds = %18
  %26 = load i64*, i64** @LA, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_OBJECT_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @store_object_id_intersect_v(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @IF_LISTS_Z(i32) #1

declare dso_local i32 @object_id_compare_prefix(i32, i32) #1

declare dso_local i32 @OARR_ENTRY(i64*, i32) #1

declare dso_local i32 @store_object_id_intersect_v(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
