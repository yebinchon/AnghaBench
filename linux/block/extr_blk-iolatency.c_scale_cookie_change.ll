; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_scale_cookie_change.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_scale_cookie_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_iolatency = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.child_latency_info = type { i32 }

@DEFAULT_SCALE_COOKIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_iolatency*, %struct.child_latency_info*, i32)* @scale_cookie_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_cookie_change(%struct.blk_iolatency* %0, %struct.child_latency_info* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_iolatency*, align 8
  %5 = alloca %struct.child_latency_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.blk_iolatency* %0, %struct.blk_iolatency** %4, align 8
  store %struct.child_latency_info* %1, %struct.child_latency_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.blk_iolatency*, %struct.blk_iolatency** %4, align 8
  %13 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @scale_amount(i64 %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.child_latency_info*, %struct.child_latency_info** %5, align 8
  %22 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = shl i64 %24, 1
  store i64 %25, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @DEFAULT_SCALE_COOKIE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i64, i64* @DEFAULT_SCALE_COOKIE, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* @DEFAULT_SCALE_COOKIE, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.child_latency_info*, %struct.child_latency_info** %5, align 8
  %44 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %43, i32 0, i32 0
  %45 = load i64, i64* @DEFAULT_SCALE_COOKIE, align 8
  %46 = call i32 @atomic_set(i32* %44, i64 %45)
  br label %61

47:                                               ; preds = %36
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.child_latency_info*, %struct.child_latency_info** %5, align 8
  %53 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %52, i32 0, i32 0
  %54 = call i32 @atomic_inc(i32* %53)
  br label %60

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.child_latency_info*, %struct.child_latency_info** %5, align 8
  %58 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %57, i32 0, i32 0
  %59 = call i32 @atomic_add(i64 %56, i32* %58)
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %42
  br label %81

62:                                               ; preds = %33
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.child_latency_info*, %struct.child_latency_info** %5, align 8
  %72 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %71, i32 0, i32 0
  %73 = call i32 @atomic_dec(i32* %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %80

75:                                               ; preds = %62
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.child_latency_info*, %struct.child_latency_info** %5, align 8
  %78 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %77, i32 0, i32 0
  %79 = call i32 @atomic_sub(i64 %76, i32* %78)
  br label %80

80:                                               ; preds = %75, %74
  br label %81

81:                                               ; preds = %80, %61
  ret void
}

declare dso_local i64 @scale_amount(i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
