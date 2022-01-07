; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_fsl-soc.c_fsl_get_immr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_fsl-soc.c_fsl_get_immr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@prop_buf = common dso_local global i64* null, align 8
@MAX_PROP_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"fsl_get_immr: Failed to find immr base\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fsl_get_immr() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  %5 = call i8* @find_node_by_devtype(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %61

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = load i64*, i64** @prop_buf, align 8
  %11 = load i32, i32* @MAX_PROP_LEN, align 4
  %12 = call i32 @getprop(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i64*, i64** @prop_buf, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %8
  store i32 2, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %62

28:                                               ; preds = %24, %21
  %29 = load i8*, i8** %1, align 8
  %30 = load i64*, i64** @prop_buf, align 8
  %31 = load i32, i32* @MAX_PROP_LEN, align 4
  %32 = call i32 @getprop(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 12
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %62

36:                                               ; preds = %28
  %37 = load i64*, i64** @prop_buf, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %62

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i64*, i64** @prop_buf, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %62

51:                                               ; preds = %45, %42
  %52 = load i8*, i8** %1, align 8
  %53 = load i64*, i64** @prop_buf, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = call i32 @dt_xlate_addr(i8* %52, i64* %56, i32 8, i64* %2)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i64 0, i64* %2, align 8
  br label %60

60:                                               ; preds = %59, %51
  br label %61

61:                                               ; preds = %60, %0
  br label %62

62:                                               ; preds = %61, %50, %41, %35, %27
  %63 = load i64, i64* %2, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i64, i64* %2, align 8
  %69 = inttoptr i64 %68 to i32*
  ret i32* %69
}

declare dso_local i8* @find_node_by_devtype(i32*, i8*) #1

declare dso_local i32 @getprop(i8*, i8*, i64*, i32) #1

declare dso_local i32 @dt_xlate_addr(i8*, i64*, i32, i64*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
