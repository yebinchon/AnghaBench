; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_fint.c_ieee754sp_fint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_fint.c_ieee754sp_fint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754sp = type { i32 }

@SP_FBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_fint(i32 %0) #0 {
  %2 = alloca %union.ieee754sp, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @ieee754_clearcx()
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @ieee754sp_zero(i32 0)
  %12 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  br label %92

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ieee754sp_one(i32 %22)
  %24 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %92

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, -10
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ieee754sp_ten(i32 %34)
  %36 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %92

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, -2147483648
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -2147483648, i32* %4, align 4
  br label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %46
  br label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* @SP_FBITS, align 4
  %55 = add nsw i32 %54, 3
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @SP_FBITS, align 4
  %58 = add nsw i32 %57, 1
  %59 = add nsw i32 %58, 3
  %60 = lshr i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %70, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SP_FBITS, align 4
  %66 = add nsw i32 %65, 1
  %67 = add nsw i32 %66, 3
  %68 = lshr i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 (...) @SPXSRSX1()
  br label %63

72:                                               ; preds = %63
  br label %86

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %80, %73
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SP_FBITS, align 4
  %77 = add nsw i32 %76, 3
  %78 = lshr i32 %75, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  br label %74

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @ieee754sp_format(i32 %87, i32 %88, i32 %89)
  %91 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %31, %19, %10
  %93 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  ret i32 %94
}

declare dso_local i32 @ieee754_clearcx(...) #1

declare dso_local i32 @ieee754sp_zero(i32) #1

declare dso_local i32 @ieee754sp_one(i32) #1

declare dso_local i32 @ieee754sp_ten(i32) #1

declare dso_local i32 @SPXSRSX1(...) #1

declare dso_local i32 @ieee754sp_format(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
