; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_cpuid_to_freq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_cpuid_to_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"upa-portid\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cpuid\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @cpuid_to_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpuid_to_freq(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [128 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %3, align 8
  br label %57

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %16 = call i32 @prom_getproperty(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15, i32 128)
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @prom_getint(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @prom_getint(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @prom_getintdefault(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %36, %31, %23
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @prom_getchild(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @cpuid_to_freq(i32 %44, i32 %45)
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @prom_getsibling(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @cpuid_to_freq(i32 %52, i32 %53)
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %11
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i32 @prom_getproperty(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @prom_getint(i32, i8*) #1

declare dso_local i64 @prom_getintdefault(i32, i8*, i32) #1

declare dso_local i32 @prom_getchild(i32) #1

declare dso_local i32 @prom_getsibling(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
