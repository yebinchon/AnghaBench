; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ebony.c_ebony_flashsel_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ebony.c_ebony_flashsel_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ebony_flashsel_fixup.reg = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 524288], align 4
@EBONY_FPGA_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't locate FPGA node %s\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"virtual-reg\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s has missing or invalid virtual-reg property\0A\0D\00", align 1
@EBONY_SMALL_FLASH_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Couldn't locate small flash node %s\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s has reg property of unexpected size\0A\0D\00", align 1
@EBONY_FPGA_FLASH_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ebony_flashsel_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebony_flashsel_fixup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [3 x i32], align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([3 x i32]* @__const.ebony_flashsel_fixup.reg to i8*), i64 12, i1 false)
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @EBONY_FPGA_PATH, align 4
  %7 = call i8* @finddevice(i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @EBONY_FPGA_PATH, align 4
  %12 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 (i8*, i8*, ...) @getprop(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32** %3, i64 8)
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EBONY_FPGA_PATH, align 4
  %20 = call i32 @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @in_8(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @EBONY_SMALL_FLASH_PATH, align 4
  %25 = call i8* @finddevice(i32 %24)
  store i8* %25, i8** %1, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EBONY_SMALL_FLASH_PATH, align 4
  %30 = call i32 @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %34 = call i32 (i8*, i8*, ...) @getprop(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %33, i64 12)
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 12
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EBONY_SMALL_FLASH_PATH, align 4
  %39 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @EBONY_FPGA_FLASH_SEL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, 524288
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i8*, i8** %1, align 8
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %52 = call i32 @setprop(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %51, i32 12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @finddevice(i32) #2

declare dso_local i32 @fatal(i8*, i32) #2

declare dso_local i32 @getprop(i8*, i8*, ...) #2

declare dso_local i32 @in_8(i32*) #2

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
