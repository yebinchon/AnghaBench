; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_targ_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_targ_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i64, i64, i32 }

@TARG_SCHEMA_V1 = common dso_local global i64 0, align 8
@split_mod = common dso_local global i32 0, align 4
@split_min = common dso_local global i64 0, align 8
@split_max = common dso_local global i64 0, align 8
@split_quotient = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@copy_rem = common dso_local global i32 0, align 4
@split_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @targ_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targ_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %4 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %5 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TARG_SCHEMA_V1, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %70

10:                                               ; preds = %1
  %11 = load i32, i32* @split_mod, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %70

14:                                               ; preds = %10
  %15 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %16 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @split_min, align 8
  %18 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %19 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @split_max, align 8
  %21 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %22 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* @split_mod, align 4
  %24 = load i32, i32* @split_mod, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %14
  %27 = load i64, i64* @split_min, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i64, i64* @split_min, align 8
  %31 = add nsw i64 %30, 1
  %32 = load i64, i64* @split_max, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64, i64* @split_max, align 8
  %36 = load i32, i32* @split_mod, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp sle i64 %35, %37
  br label %39

39:                                               ; preds = %34, %29, %26, %14
  %40 = phi i1 [ false, %29 ], [ false, %26 ], [ false, %14 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* @split_quotient, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i32, i32* @copy_mod, align 4
  %47 = load i32, i32* @split_quotient, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32, i32* @split_mod, align 4
  %50 = srem i32 %48, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %64

54:                                               ; preds = %39
  %55 = load i32, i32* @copy_mod, align 4
  %56 = load i32, i32* @split_mod, align 4
  %57 = srem i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* @copy_mod, align 4
  %62 = load i32, i32* @split_mod, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* @split_quotient, align 4
  br label %64

64:                                               ; preds = %54, %45
  %65 = load i32, i32* @copy_rem, align 4
  %66 = load i32, i32* @copy_mod, align 4
  %67 = load i32, i32* @split_quotient, align 4
  %68 = sdiv i32 %66, %67
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* @split_shift, align 4
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %13, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
