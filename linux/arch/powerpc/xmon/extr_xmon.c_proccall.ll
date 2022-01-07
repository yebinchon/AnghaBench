; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_proccall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_proccall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adrs = common dso_local global i64 0, align 8
@termch = common dso_local global i8 0, align 1
@bus_error_jmp = common dso_local global i32 0, align 4
@catch_memory_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"return value is 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"*** %x exception occurred\0A\00", align 1
@fault_except = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @proccall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proccall() #0 {
  %1 = alloca [8 x i64], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64 (i64, i64, i64, i64, i64, i64, i64, i64)*, align 8
  %5 = call i32 @scanhex(i64* @adrs)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %77

8:                                                ; preds = %0
  %9 = load i8, i8* @termch, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8 0, i8* @termch, align 1
  br label %13

13:                                               ; preds = %12, %8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %21, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %14

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 %30
  %32 = call i32 @scanhex(i64* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8, i8* @termch, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %28
  br label %43

39:                                               ; preds = %34
  store i8 0, i8* @termch, align 1
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %25

43:                                               ; preds = %38, %25
  %44 = load i64, i64* @adrs, align 8
  %45 = inttoptr i64 %44 to i64 (i64, i64, i64, i64, i64, i64, i64, i64)*
  store i64 (i64, i64, i64, i64, i64, i64, i64, i64)* %45, i64 (i64, i64, i64, i64, i64, i64, i64, i64)** %4, align 8
  store i64 0, i64* %2, align 8
  %46 = load i32, i32* @bus_error_jmp, align 4
  %47 = call i64 @setjmp(i32 %46) #3
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  store i32 1, i32* @catch_memory_errors, align 4
  %50 = call i32 (...) @sync()
  %51 = load i64 (i64, i64, i64, i64, i64, i64, i64, i64)*, i64 (i64, i64, i64, i64, i64, i64, i64, i64)** %4, align 8
  %52 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 0
  %53 = load i64, i64* %52, align 16
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 2
  %57 = load i64, i64* %56, align 16
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 4
  %61 = load i64, i64* %60, align 16
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 5
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 6
  %65 = load i64, i64* %64, align 16
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 7
  %67 = load i64, i64* %66, align 8
  %68 = call i64 %51(i64 %53, i64 %55, i64 %57, i64 %59, i64 %61, i64 %63, i64 %65, i64 %67)
  store i64 %68, i64* %2, align 8
  %69 = call i32 (...) @sync()
  %70 = load i64, i64* %2, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %76

73:                                               ; preds = %43
  %74 = load i32, i32* @fault_except, align 4
  %75 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %49
  store i32 0, i32* @catch_memory_errors, align 4
  br label %77

77:                                               ; preds = %76, %7
  ret void
}

declare dso_local i32 @scanhex(i64*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @sync(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
