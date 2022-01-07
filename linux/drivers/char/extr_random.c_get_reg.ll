; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_pool = type { i32 }
%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_pool*, %struct.pt_regs*)* @get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_reg(%struct.fast_pool* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fast_pool*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.fast_pool* %0, %struct.fast_pool** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %9 = bitcast %struct.pt_regs* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %11 = icmp eq %struct.pt_regs* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.fast_pool*, %struct.fast_pool** %4, align 8
  %15 = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @READ_ONCE(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp uge i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %6, align 8
  %28 = load %struct.fast_pool*, %struct.fast_pool** %4, align 8
  %29 = getelementptr inbounds %struct.fast_pool, %struct.fast_pool* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @WRITE_ONCE(i32 %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
