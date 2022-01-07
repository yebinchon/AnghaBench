; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_gather_sum_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_gather_sum_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_entry = type { i32, i32* }

@PHP_MAX_RES = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@Q = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gather_entry*)* @gather_sum_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_sum_res(%struct.gather_entry* %0) #0 {
  %2 = alloca %struct.gather_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.gather_entry* %0, %struct.gather_entry** %2, align 8
  %6 = load %struct.gather_entry*, %struct.gather_entry** %2, align 8
  %7 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 2
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load %struct.gather_entry*, %struct.gather_entry** %2, align 8
  %12 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PHP_MAX_RES, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @PHP_MAX_RES, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @Q_limit, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* @Q_limit, align 4
  br label %25

25:                                               ; preds = %23, %19
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %4, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load i32*, i32** @Q, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
