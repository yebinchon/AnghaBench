; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_wait_for.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_wait_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32 }

@PD_SPIN = common dso_local global i32 0, align 4
@STAT_BUSY = common dso_local global i32 0, align 4
@PD_SPIN_DEL = common dso_local global i32 0, align 4
@ERR_TMO = common dso_local global i32 0, align 4
@STAT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pd_unit*, i32, i8*)* @pd_wait_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_wait_for(%struct.pd_unit* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pd_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pd_unit* %0, %struct.pd_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PD_SPIN, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %16 = call i32 @status_reg(%struct.pd_unit* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @STAT_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %33

30:                                               ; preds = %24, %14
  %31 = load i32, i32* @PD_SPIN_DEL, align 4
  %32 = call i32 @udelay(i32 %31)
  br label %10

33:                                               ; preds = %29, %10
  %34 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %35 = call i32 @read_reg(%struct.pd_unit* %34, i32 1)
  %36 = shl i32 %35, 8
  %37 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %38 = call i32 @read_reg(%struct.pd_unit* %37, i32 7)
  %39 = add nsw i32 %36, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PD_SPIN, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* @ERR_TMO, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %33
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @STAT_ERR, align 4
  %50 = load i32, i32* @ERR_TMO, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @pd_print_error(%struct.pd_unit* %58, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54, %47
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @status_reg(%struct.pd_unit*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_reg(%struct.pd_unit*, i32) #1

declare dso_local i32 @pd_print_error(%struct.pd_unit*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
