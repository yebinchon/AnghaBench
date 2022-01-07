; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_platform_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_platform_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't find memory node\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@MEM2_TOP = common dso_local global i64 0, align 8
@FIRMWARE_DEFAULT_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"top of MEM2 @ %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @platform_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_fixups() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [4 x i64], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %14 = call i32 @getprop(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %13, i32 32)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %56

19:                                               ; preds = %11
  %20 = call i32 @mipc_get_mem2_boundary(i64* %3)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* @MEM2_TOP, align 8
  %25 = load i64, i64* @FIRMWARE_DEFAULT_SIZE, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 2
  %30 = load i64, i64* %29, align 16
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 2
  %35 = load i64, i64* %34, align 16
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %35, %37
  %39 = icmp slt i64 %33, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 2
  %43 = load i64, i64* %42, align 16
  %44 = sub nsw i64 %41, %43
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 3
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 2
  %47 = load i64, i64* %46, align 16
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %47, %49
  %51 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load i8*, i8** %1, align 8
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %54 = call i32 @setprop(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %53, i32 32)
  br label %55

55:                                               ; preds = %40, %32, %27
  br label %56

56:                                               ; preds = %55, %18
  ret void
}

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @getprop(i8*, i8*, i64*, i32) #1

declare dso_local i32 @mipc_get_mem2_boundary(i64*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @setprop(i8*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
