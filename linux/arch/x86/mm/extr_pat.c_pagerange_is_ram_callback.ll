; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pagerange_is_ram_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pagerange_is_ram_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagerange_state = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*)* @pagerange_is_ram_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerange_is_ram_callback(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pagerange_state*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.pagerange_state*
  store %struct.pagerange_state* %9, %struct.pagerange_state** %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.pagerange_state*, %struct.pagerange_state** %7, align 8
  %12 = getelementptr inbounds %struct.pagerange_state, %struct.pagerange_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct.pagerange_state*, %struct.pagerange_state** %7, align 8
  %17 = getelementptr inbounds %struct.pagerange_state, %struct.pagerange_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ugt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load %struct.pagerange_state*, %struct.pagerange_state** %7, align 8
  %24 = getelementptr inbounds %struct.pagerange_state, %struct.pagerange_state* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.pagerange_state*, %struct.pagerange_state** %7, align 8
  %31 = getelementptr inbounds %struct.pagerange_state, %struct.pagerange_state* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pagerange_state*, %struct.pagerange_state** %7, align 8
  %33 = getelementptr inbounds %struct.pagerange_state, %struct.pagerange_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.pagerange_state*, %struct.pagerange_state** %7, align 8
  %38 = getelementptr inbounds %struct.pagerange_state, %struct.pagerange_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %3
  %42 = phi i1 [ false, %3 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
