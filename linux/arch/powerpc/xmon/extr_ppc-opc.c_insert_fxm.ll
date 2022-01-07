; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_insert_fxm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_insert_fxm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"invalid mask field\00", align 1
@PPC_OPCODE_POWER4 = common dso_local global i32 0, align 4
@PPC_OPCODE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid mfcr mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i8**)* @insert_fxm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_fxm(i64 %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %9, 1048576
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub nsw i64 0, %17
  %19 = and i64 %16, %18
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %12
  %23 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i8**, i8*** %8, align 8
  store i8* %23, i8** %24, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %15
  br label %66

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub nsw i64 0, %31
  %33 = and i64 %30, %32
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PPC_OPCODE_ANY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = and i64 %47, 2046
  %49 = icmp eq i64 %48, 38
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %36
  %51 = load i64, i64* %5, align 8
  %52 = or i64 %51, 1048576
  store i64 %52, i64* %5, align 8
  br label %65

53:                                               ; preds = %46, %41, %29, %26
  %54 = load i64, i64* %5, align 8
  %55 = and i64 %54, 2046
  %56 = icmp eq i64 %55, 38
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8**, i8*** %8, align 8
  store i8* %61, i8** %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = and i64 %68, 255
  %70 = shl i64 %69, 12
  %71 = or i64 %67, %70
  ret i64 %71
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
