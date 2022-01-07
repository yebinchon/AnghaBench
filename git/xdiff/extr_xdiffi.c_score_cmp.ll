; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_score_cmp.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_score_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.split_score = type { i64, i32 }

@INDENT_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.split_score*, %struct.split_score*)* @score_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_cmp(%struct.split_score* %0, %struct.split_score* %1) #0 {
  %3 = alloca %struct.split_score*, align 8
  %4 = alloca %struct.split_score*, align 8
  %5 = alloca i32, align 4
  store %struct.split_score* %0, %struct.split_score** %3, align 8
  store %struct.split_score* %1, %struct.split_score** %4, align 8
  %6 = load %struct.split_score*, %struct.split_score** %3, align 8
  %7 = getelementptr inbounds %struct.split_score, %struct.split_score* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.split_score*, %struct.split_score** %4, align 8
  %10 = getelementptr inbounds %struct.split_score, %struct.split_score* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = load %struct.split_score*, %struct.split_score** %3, align 8
  %15 = getelementptr inbounds %struct.split_score, %struct.split_score* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.split_score*, %struct.split_score** %4, align 8
  %18 = getelementptr inbounds %struct.split_score, %struct.split_score* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = sub nsw i32 %13, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @INDENT_WEIGHT, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.split_score*, %struct.split_score** %3, align 8
  %27 = getelementptr inbounds %struct.split_score, %struct.split_score* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.split_score*, %struct.split_score** %4, align 8
  %30 = getelementptr inbounds %struct.split_score, %struct.split_score* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = add nsw i32 %25, %32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
