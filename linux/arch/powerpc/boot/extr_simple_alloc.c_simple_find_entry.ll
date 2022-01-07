; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simple_alloc.c_simple_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simple_alloc.c_simple_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_info = type { i32, i64 }

@alloc_tbl = common dso_local global %struct.alloc_info* null, align 8
@tbl_entries = common dso_local global i64 0, align 8
@ENTRY_BEEN_USED = common dso_local global i32 0, align 4
@ENTRY_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alloc_info* (i8*)* @simple_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alloc_info* @simple_find_entry(i8* %0) #0 {
  %2 = alloca %struct.alloc_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alloc_info*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load %struct.alloc_info*, %struct.alloc_info** @alloc_tbl, align 8
  store %struct.alloc_info* %6, %struct.alloc_info** %5, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @tbl_entries, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %13 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ENTRY_BEEN_USED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %41

19:                                               ; preds = %11
  %20 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %21 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ENTRY_IN_USE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %28 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  store %struct.alloc_info* %34, %struct.alloc_info** %2, align 8
  br label %42

35:                                               ; preds = %26, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  %39 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %40 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %39, i32 1
  store %struct.alloc_info* %40, %struct.alloc_info** %5, align 8
  br label %7

41:                                               ; preds = %18, %7
  store %struct.alloc_info* null, %struct.alloc_info** %2, align 8
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.alloc_info*, %struct.alloc_info** %2, align 8
  ret %struct.alloc_info* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
