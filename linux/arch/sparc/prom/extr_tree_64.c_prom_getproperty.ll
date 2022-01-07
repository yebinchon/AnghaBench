; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_getproperty.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_getproperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prom_getprop_name = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_getproperty(i64 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i64], align 16
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @prom_getproplen(i64 %12, i8* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %4
  store i32 -1, i32* %5, align 4
  br label %49

25:                                               ; preds = %21
  %26 = load i64, i64* @prom_getprop_name, align 8
  %27 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  store i64 %26, i64* %27, align 16
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 1
  store i64 4, i64* %28, align 8
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 2
  store i64 1, i64* %29, align 16
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 3
  store i64 %32, i64* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 4
  store i64 %35, i64* %36, align 16
  %37 = load i8*, i8** %8, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 5
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 6
  store i64 %41, i64* %42, align 16
  %43 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 7
  store i64 -1, i64* %43, align 8
  %44 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %45 = call i32 @p1275_cmd_direct(i64* %44)
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 7
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %25, %24
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @prom_getproplen(i64, i8*) #1

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
