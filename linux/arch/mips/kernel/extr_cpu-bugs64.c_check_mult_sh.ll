; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-bugs64.c_check_mult_sh.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-bugs64.c_check_mult_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Checking for the multiply/shift bug... \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"no.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"yes, workaround... \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"yes.\0A\00", align 1
@bug64hit = common dso_local global i32 0, align 4
@R4000_WAR = common dso_local global i32 0, align 4
@r4kwar = common dso_local global i32 0, align 4
@nowar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_mult_sh() #0 {
  %1 = alloca [8 x i64], align 16
  %2 = alloca [8 x i64], align 16
  %3 = alloca [8 x i64], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 0
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0
  %10 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0
  %11 = call i32 @mult_sh_align_mod(i64* %8, i64* %9, i64* %10, i32 32, i32 0)
  %12 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 1
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 1
  %14 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 1
  %15 = call i32 @mult_sh_align_mod(i64* %12, i64* %13, i64* %14, i32 32, i32 1)
  %16 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 2
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 2
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 2
  %19 = call i32 @mult_sh_align_mod(i64* %16, i64* %17, i64* %18, i32 32, i32 2)
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 3
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 3
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 3
  %23 = call i32 @mult_sh_align_mod(i64* %20, i64* %21, i64* %22, i32 32, i32 3)
  %24 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 4
  %25 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 4
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 4
  %27 = call i32 @mult_sh_align_mod(i64* %24, i64* %25, i64* %26, i32 32, i32 4)
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 5
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 5
  %30 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 5
  %31 = call i32 @mult_sh_align_mod(i64* %28, i64* %29, i64* %30, i32 32, i32 5)
  %32 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 6
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 6
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 6
  %35 = call i32 @mult_sh_align_mod(i64* %32, i64* %33, i64* %34, i32 32, i32 6)
  %36 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 7
  %37 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 7
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 7
  %39 = call i32 @mult_sh_align_mod(i64* %36, i64* %37, i64* %38, i32 32, i32 7)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %55, %0
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %1, i64 0, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %100

63:                                               ; preds = %58
  %64 = call i32 @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %80, %63
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %100

88:                                               ; preds = %83
  %89 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @bug64hit, align 4
  %91 = load i32, i32* @R4000_WAR, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @r4kwar, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @nowar, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @panic(i32 %90, i32 %98)
  br label %100

100:                                              ; preds = %97, %86, %61
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mult_sh_align_mod(i64*, i64*, i64*, i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @panic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
