; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_nextprop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_nextprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prom_nextprop_name = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prom_nextprop(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [7 x i64], align 16
  %9 = alloca [32 x i8], align 16
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %4, align 8
  br label %44

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcpy(i8* %21, i8* %22)
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i64, i64* @prom_nextprop_name, align 8
  %27 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 0
  store i64 %26, i64* %27, align 16
  %28 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 1
  store i64 3, i64* %28, align 8
  %29 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 2
  store i64 1, i64* %29, align 16
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 3
  store i64 %32, i64* %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 4
  store i64 %35, i64* %36, align 16
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 5
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 6
  store i64 -1, i64* %40, align 16
  %41 = getelementptr inbounds [7 x i64], [7 x i64]* %8, i64 0, i64 0
  %42 = call i32 @p1275_cmd_direct(i64* %41)
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %25, %13
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
