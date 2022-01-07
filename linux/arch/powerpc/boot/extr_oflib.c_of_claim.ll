; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_oflib.c_of_claim.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_oflib.c_of_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@need_map = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"claim\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"call-method\00", align 1
@memory = common dso_local global i32 0, align 4
@chosen_mmu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"map\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_claim(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @need_map, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i64 (...) @check_of_version()
  store i64 %13, i64* @need_map, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @need_map, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 (i8*, i32, i32, ...) @of_call_prom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 3, i32 1, i64 %21, i64 %22, i64 %23)
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %17
  %26 = load i32, i32* @memory, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @of_call_prom_ret(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 5, i32 2, i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i64 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %25
  store i32 -1, i32* %4, align 4
  br label %50

37:                                               ; preds = %33
  %38 = load i32, i32* @chosen_mmu, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @of_call_prom_ret(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 5, i32 2, i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %39, i64 %40, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @chosen_mmu, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 (i8*, i32, i32, ...) @of_call_prom(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 6, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 18, i64 %44, i64 %45, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i64, i64* %5, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %37, %36, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @check_of_version(...) #1

declare dso_local i32 @of_call_prom(i8*, i32, i32, ...) #1

declare dso_local i32 @of_call_prom_ret(i8*, i32, i32, i32*, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
