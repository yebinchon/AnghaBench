; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_getvecname.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_getvecname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"(System Reset)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(Machine Check)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(Data Access)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"(Data Access Out of Range)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"(Data SLB Access)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"(Instruction Access)\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"(Instruction Access Out of Range)\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"(Instruction SLB Access)\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"(Hardware Interrupt)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"(Alignment)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"(Program Check)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"(FPU Unavailable)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"(Decrementer)\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"(Hypervisor Decrementer)\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"(Doorbell)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"(System Call)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"(Single Step)\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"(Emulation Assist)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"(HMI)\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"(Hypervisor Doorbell)\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"(Performance Monitor)\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"(Altivec Unavailable)\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"(Instruction Breakpoint)\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"(Denormalisation)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"(Altivec Assist)\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @getvecname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getvecname(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  switch i64 %4, label %38 [
    i64 256, label %5
    i64 512, label %6
    i64 768, label %7
    i64 896, label %8
    i64 1024, label %14
    i64 1152, label %15
    i64 1280, label %21
    i64 1536, label %22
    i64 1792, label %23
    i64 2048, label %24
    i64 2304, label %25
    i64 2432, label %26
    i64 2560, label %27
    i64 3072, label %28
    i64 3328, label %29
    i64 3648, label %30
    i64 3680, label %31
    i64 3712, label %32
    i64 3840, label %33
    i64 3872, label %34
    i64 4864, label %35
    i64 5376, label %36
    i64 5888, label %37
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %39

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %39

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %39

8:                                                ; preds = %1
  %9 = call i32 (...) @radix_enabled()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %13

13:                                               ; preds = %12, %11
  br label %39

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %39

15:                                               ; preds = %1
  %16 = call i32 (...) @radix_enabled()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %20

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %20

20:                                               ; preds = %19, %18
  br label %39

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %39

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %39

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %39

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %39

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %39

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %39

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %39

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %39

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %39

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %39

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %39

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %39

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %39

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %39

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %39

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %39

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %39

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %14, %13, %7, %6, %5
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @radix_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
