; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_ihandle2path.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_ihandle2path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"instance-to-path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_ihandle2path(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i64], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 0
  store i64 ptrtoint ([17 x i8]* @.str to i64), i64* %8, align 16
  %9 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 1
  store i64 3, i64* %9, align 8
  %10 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 2
  store i64 1, i64* %10, align 16
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 3
  store i64 %12, i64* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 4
  store i64 %15, i64* %16, align 16
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 5
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 6
  store i64 -1, i64* %20, align 16
  %21 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 0
  %22 = call i32 @p1275_cmd_direct(i64* %21)
  %23 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 6
  %24 = load i64, i64* %23, align 16
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
