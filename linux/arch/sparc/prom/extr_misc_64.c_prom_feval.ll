; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_misc_64.c_prom_feval.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_misc_64.c_prom_feval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"interpret\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_feval(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [5 x i64], align 16
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  br label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0
  store i64 ptrtoint ([10 x i8]* @.str to i64), i64* %14, align 16
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1
  store i64 1, i64* %15, align 8
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2
  store i64 1, i64* %16, align 16
  %17 = load i8*, i8** %2, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4
  store i64 -1, i64* %20, align 16
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0
  %22 = call i32 @p1275_cmd_direct(i64* %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
