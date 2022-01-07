; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_getproplen.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_getproplen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"getproplen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_getproplen(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [6 x i64], align 16
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  store i64 ptrtoint ([11 x i8]* @.str to i64), i64* %14, align 16
  %15 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 1
  store i64 2, i64* %15, align 8
  %16 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 2
  store i64 1, i64* %16, align 16
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 3
  store i64 %19, i64* %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 4
  store i64 %22, i64* %23, align 16
  %24 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 5
  store i64 -1, i64* %24, align 8
  %25 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %26 = call i32 @p1275_cmd_direct(i64* %25)
  %27 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 5
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %13, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
