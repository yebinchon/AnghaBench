; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_arith.c_modrem_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_arith.c_modrem_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fp_ext* (%struct.fp_ext*, %struct.fp_ext*, i32)* @modrem_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fp_ext* @modrem_kernel(%struct.fp_ext* %0, %struct.fp_ext* %1, i32 %2) #0 {
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca %struct.fp_ext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fp_ext, align 4
  store %struct.fp_ext* %0, %struct.fp_ext** %5, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %10 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %11 = call i32 @fp_dyadic_check(%struct.fp_ext* %9, %struct.fp_ext* %10)
  %12 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %13 = call i64 @IS_INF(%struct.fp_ext* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %17 = call i64 @IS_ZERO(%struct.fp_ext* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %3
  %20 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %21 = call i32 @fp_set_nan(%struct.fp_ext* %20)
  %22 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  store %struct.fp_ext* %22, %struct.fp_ext** %4, align 8
  br label %56

23:                                               ; preds = %15
  %24 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %25 = call i64 @IS_ZERO(%struct.fp_ext* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %29 = call i64 @IS_INF(%struct.fp_ext* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  store %struct.fp_ext* %32, %struct.fp_ext** %4, align 8
  br label %56

33:                                               ; preds = %27
  %34 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %35 = call i32 @fp_copy_ext(%struct.fp_ext* %8, %struct.fp_ext* %34)
  %36 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %37 = call i32 @fp_fdiv(%struct.fp_ext* %8, %struct.fp_ext* %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fp_roundint(%struct.fp_ext* %8, i32 %38)
  %40 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %41 = call i32 @fp_fmul(%struct.fp_ext* %8, %struct.fp_ext* %40)
  %42 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %43 = call i32 @fp_fsub(%struct.fp_ext* %42, %struct.fp_ext* %8)
  %44 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %45 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 127
  %49 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %50 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 7
  %53 = or i32 %48, %52
  %54 = call i32 @fp_set_quotient(i32 %53)
  %55 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  store %struct.fp_ext* %55, %struct.fp_ext** %4, align 8
  br label %56

56:                                               ; preds = %33, %31, %19
  %57 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  ret %struct.fp_ext* %57
}

declare dso_local i32 @fp_dyadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i32 @fp_copy_ext(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_fdiv(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_roundint(%struct.fp_ext*, i32) #1

declare dso_local i32 @fp_fmul(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_fsub(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_set_quotient(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
