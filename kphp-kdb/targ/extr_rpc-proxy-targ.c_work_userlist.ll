; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_work_userlist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_work_userlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Q_userlist = common dso_local global i32 0, align 4
@Q_ul_size = common dso_local global i32 0, align 4
@CC = common dso_local global %struct.TYPE_2__* null, align 8
@Qf = common dso_local global i32* null, align 8
@Qs = common dso_local global i64* null, align 8
@Q = common dso_local global i32* null, align 8
@QN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @work_userlist() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* @Q_userlist, align 4
  %6 = call i32 (...) @tl_fetch_int()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* @Q_ul_size, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32*, i32** @Qf, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 -1, i32* %19, align 4
  %20 = load i64*, i64** @Qs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %2, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 4, i32* %1, align 4
  br label %82

31:                                               ; preds = %27
  %32 = load i32*, i32** @Q, align 8
  %33 = load i32, i32* %2, align 4
  %34 = mul nsw i32 4, %33
  %35 = call i32 @tl_fetch_raw_data(i32* %32, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %75, %31
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %38
  %42 = load i32*, i32** @Q, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = srem i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32*, i32** @Qf, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @QN, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** @Qf, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i64*, i64** @Qs, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %4, align 4
  br label %38

78:                                               ; preds = %38
  %79 = load i32, i32* %2, align 4
  %80 = mul nsw i32 4, %79
  %81 = add nsw i32 4, %80
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %78, %30
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_raw_data(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
