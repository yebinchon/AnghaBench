; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i64, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.charlcd*, i8)* }
%struct.charlcd_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*, i8)* @charlcd_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_print(%struct.charlcd* %0, i8 signext %1) #0 {
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.charlcd_priv*, align 8
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %7 = call %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd* %6)
  store %struct.charlcd_priv* %7, %struct.charlcd_priv** %5, align 8
  %8 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %9 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %13 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %18 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %23 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %4, align 1
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %31 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*, i8)** %33, align 8
  %35 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %36 = load i8, i8* %4, align 1
  %37 = call i32 %34(%struct.charlcd* %35, i8 signext %36)
  %38 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %39 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %44 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %48 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %53 = call i32 @charlcd_gotoxy(%struct.charlcd* %52)
  br label %54

54:                                               ; preds = %51, %29
  br label %55

55:                                               ; preds = %54, %2
  ret void
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd*) #1

declare dso_local i32 @charlcd_gotoxy(%struct.charlcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
