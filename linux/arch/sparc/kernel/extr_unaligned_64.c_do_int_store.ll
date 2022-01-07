; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_do_int_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_do_int_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, %struct.pt_regs*, i32, i32)* @do_int_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_int_store(i32 %0, i32 %1, i64* %2, %struct.pt_regs* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64* %13, i64** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %38

18:                                               ; preds = %6
  store i32 8, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %24 = call i64 @fetch_reg(i32 %22, %struct.pt_regs* %23)
  %25 = trunc i64 %24 to i32
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ 0, %26 ]
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %34 = call i64 @fetch_reg(i32 %32, %struct.pt_regs* %33)
  %35 = trunc i64 %34 to i32
  %36 = zext i32 %35 to i64
  %37 = or i64 %30, %36
  store i64 %37, i64* %13, align 8
  br label %46

38:                                               ; preds = %6
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = call i64* @fetch_reg_addr(i32 %42, %struct.pt_regs* %43)
  store i64* %44, i64** %14, align 8
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i64*, i64** %14, align 8
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %15, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %67 [
    i32 2, label %57
    i32 4, label %60
    i32 8, label %63
    i32 16, label %66
  ]

57:                                               ; preds = %55
  %58 = load i64, i64* %15, align 8
  %59 = call i64 @swab16(i64 %58)
  store i64 %59, i64* %15, align 8
  br label %69

60:                                               ; preds = %55
  %61 = load i64, i64* %15, align 8
  %62 = call i64 @swab32(i64 %61)
  store i64 %62, i64* %15, align 8
  br label %69

63:                                               ; preds = %55
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @swab64(i64 %64)
  store i64 %65, i64* %15, align 8
  br label %69

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %55, %66
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %67, %63, %60, %57
  br label %70

70:                                               ; preds = %69, %46
  %71 = load i64*, i64** %9, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i64, i64* %15, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @__do_int_store(i64* %71, i32 %72, i64 %73, i32 %74)
  ret i32 %75
}

declare dso_local i64 @fetch_reg(i32, %struct.pt_regs*) #1

declare dso_local i64* @fetch_reg_addr(i32, %struct.pt_regs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @swab16(i64) #1

declare dso_local i64 @swab32(i64) #1

declare dso_local i64 @swab64(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__do_int_store(i64*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
