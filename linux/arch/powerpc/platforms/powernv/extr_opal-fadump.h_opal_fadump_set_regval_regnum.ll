; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.h_opal_fadump_set_regval_regnum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.h_opal_fadump_set_regval_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8** }

@HDAT_FADUMP_REG_TYPE_GPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64, i8*)* @opal_fadump_set_regval_regnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_fadump_set_regval_regnum(%struct.pt_regs* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @HDAT_FADUMP_REG_TYPE_GPR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %13, 32
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 8
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  store i8* %16, i8** %21, align 8
  br label %22

22:                                               ; preds = %15, %12
  br label %57

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  switch i64 %24, label %57 [
    i64 132, label %25
    i64 129, label %29
    i64 128, label %33
    i64 131, label %37
    i64 130, label %41
    i64 133, label %45
    i64 134, label %49
    i64 135, label %53
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  br label %57

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  br label %57

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  br label %57

37:                                               ; preds = %23
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  br label %57

41:                                               ; preds = %23
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  br label %57

45:                                               ; preds = %23
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %57

49:                                               ; preds = %23
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %57

53:                                               ; preds = %23
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %22, %23, %53, %49, %45, %41, %37, %33, %29, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
