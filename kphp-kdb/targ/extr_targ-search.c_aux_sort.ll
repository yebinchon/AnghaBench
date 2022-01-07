; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_aux_sort.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_aux_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aux_userlist = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aux_sort(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %77

13:                                               ; preds = %2
  %14 = load i32*, i32** @aux_userlist, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %15, %16
  %18 = ashr i64 %17, 1
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* %3, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %68, %13
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i32*, i32** @aux_userlist, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %24

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %42, %34
  %36 = load i32*, i32** @aux_userlist, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %8, align 8
  br label %35

45:                                               ; preds = %35
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32*, i32** @aux_userlist, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** @aux_userlist, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @aux_userlist, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %7, align 8
  %61 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** @aux_userlist, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %8, align 8
  %66 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %49, %45
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %23, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* %8, align 8
  call void @aux_sort(i64 %73, i64 %74)
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %4, align 8
  call void @aux_sort(i64 %75, i64 %76)
  br label %77

77:                                               ; preds = %72, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
