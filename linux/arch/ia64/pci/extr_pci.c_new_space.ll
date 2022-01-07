; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_new_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_new_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@num_io_spaces = common dso_local global i32 0, align 4
@io_space = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_IO_SPACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"PCI: Too many IO port spaces (MAX_IO_SPACES=%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @new_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_space(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @ioremap(i64 %12, i32 0)
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %39, %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @num_io_spaces, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @io_space, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @io_space, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %27, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load i32, i32* @num_io_spaces, align 4
  %44 = load i32, i32* @MAX_IO_SPACES, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @MAX_IO_SPACES, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %3, align 4
  br label %65

49:                                               ; preds = %42
  %50 = load i32, i32* @num_io_spaces, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @num_io_spaces, align 4
  store i32 %50, i32* %7, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @io_space, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @io_space, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %49, %46, %36, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @ioremap(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
