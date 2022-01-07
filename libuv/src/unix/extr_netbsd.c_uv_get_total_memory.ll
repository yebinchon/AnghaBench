; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv_get_total_memory.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv_get_total_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_HW = common dso_local global i32 0, align 4
@HW_PHYSMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@HW_PHYSMEM64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_get_total_memory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %6 = load i32, i32* @CTL_HW, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @HW_PHYSMEM, align 4
  store i32 %8, i32* %7, align 4
  store i64 4, i64* %4, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %10 = call i64 @sysctl(i32* %9, i32 2, i32* %2, i64* %4, i32* null, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @UV__ERR(i32 %13)
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i64 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
