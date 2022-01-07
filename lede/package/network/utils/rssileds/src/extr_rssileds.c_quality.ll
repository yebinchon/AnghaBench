; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/rssileds/src/extr_rssileds.c_quality.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/rssileds/src/extr_rssileds.c_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwinfo_ops = type { i64 (i8*, i32*)*, i64 (i8*, i32*)* }

@qual_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quality(%struct.iwinfo_ops* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwinfo_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.iwinfo_ops* %0, %struct.iwinfo_ops** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.iwinfo_ops*, %struct.iwinfo_ops** %4, align 8
  %8 = icmp ne %struct.iwinfo_ops* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

10:                                               ; preds = %2
  %11 = load i32, i32* @qual_max, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.iwinfo_ops*, %struct.iwinfo_ops** %4, align 8
  %15 = getelementptr inbounds %struct.iwinfo_ops, %struct.iwinfo_ops* %14, i32 0, i32 1
  %16 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 %16(i8* %17, i32* @qual_max)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %35

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.iwinfo_ops*, %struct.iwinfo_ops** %4, align 8
  %24 = getelementptr inbounds %struct.iwinfo_ops, %struct.iwinfo_ops* %23, i32 0, i32 0
  %25 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 %25(i8* %26, i32* %6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %35

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 100
  %33 = load i32, i32* @qual_max, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %29, %20, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
