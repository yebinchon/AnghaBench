; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module.c_reloc_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module.c_reloc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U16_MAX = common dso_local global i8* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@S16_MIN = common dso_local global i8* null, align 8
@S16_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid 16-bit data relocation (%d)\0A\00", align 1
@U32_MAX = common dso_local global i8* null, align 8
@S32_MIN = common dso_local global i8* null, align 8
@S32_MAX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid 32-bit data relocation (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid length (%d) for data relocation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @reloc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reloc_data(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i8* @do_reloc(i32 %11, i8* %12, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %84 [
    i32 16, label %16
    i32 32, label %48
    i32 64, label %80
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %44 [
    i32 129, label %21
    i32 128, label %32
  ]

21:                                               ; preds = %16
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ult i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** @U16_MAX, align 8
  %27 = icmp ugt i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %88

31:                                               ; preds = %24
  br label %47

32:                                               ; preds = %16
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** @S16_MIN, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** @S16_MAX, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %88

43:                                               ; preds = %36
  br label %47

44:                                               ; preds = %16
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %5, align 4
  br label %88

47:                                               ; preds = %43, %31
  br label %87

48:                                               ; preds = %4
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = bitcast i8* %50 to i8**
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %76 [
    i32 129, label %53
    i32 128, label %64
  ]

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ult i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** @U32_MAX, align 8
  %59 = icmp ugt i8* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %53
  %61 = load i32, i32* @ERANGE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %88

63:                                               ; preds = %56
  br label %79

64:                                               ; preds = %48
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** @S32_MIN, align 8
  %67 = icmp ult i8* %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** @S32_MAX, align 8
  %71 = icmp ugt i8* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @ERANGE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %88

75:                                               ; preds = %68
  br label %79

76:                                               ; preds = %48
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 0, i32* %5, align 4
  br label %88

79:                                               ; preds = %75, %63
  br label %87

80:                                               ; preds = %4
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = bitcast i8* %82 to i8**
  store i8* %81, i8** %83, align 8
  br label %87

84:                                               ; preds = %4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 0, i32* %5, align 4
  br label %88

87:                                               ; preds = %80, %79, %47
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %84, %76, %72, %60, %44, %40, %28
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8* @do_reloc(i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
