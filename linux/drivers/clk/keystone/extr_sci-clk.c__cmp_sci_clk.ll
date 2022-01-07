; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c__cmp_sci_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c__cmp_sci_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_clk = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_cmp_sci_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cmp_sci_clk(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sci_clk*, align 8
  %7 = alloca %struct.sci_clk*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sci_clk*
  store %struct.sci_clk* %9, %struct.sci_clk** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sci_clk**
  %12 = load %struct.sci_clk*, %struct.sci_clk** %11, align 8
  store %struct.sci_clk* %12, %struct.sci_clk** %7, align 8
  %13 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %14 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sci_clk*, %struct.sci_clk** %7, align 8
  %17 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %22 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sci_clk*, %struct.sci_clk** %7, align 8
  %25 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %55

29:                                               ; preds = %20, %2
  %30 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %31 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sci_clk*, %struct.sci_clk** %7, align 8
  %34 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %29
  %38 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %39 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sci_clk*, %struct.sci_clk** %7, align 8
  %42 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %47 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sci_clk*, %struct.sci_clk** %7, align 8
  %50 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %29
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %45, %37
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %28
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
