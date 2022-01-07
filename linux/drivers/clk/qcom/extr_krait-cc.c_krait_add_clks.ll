; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_add_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_add_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"_l2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i32, i32)* @krait_add_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @krait_add_clks(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 4096, %16
  %18 = add nsw i32 17665, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @kasprintf(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i8* %21, i8** %10, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.clk* @ERR_PTR(i32 %26)
  store %struct.clk* %27, %struct.clk** %4, align 8
  br label %63

28:                                               ; preds = %15
  br label %30

29:                                               ; preds = %3
  store i32 1280, i32* %9, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @krait_add_div(%struct.device* %31, i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.clk* @ERR_PTR(i32 %39)
  store %struct.clk* %40, %struct.clk** %12, align 8
  br label %59

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @krait_add_sec_mux(%struct.device* %42, i32 %43, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.clk* @ERR_PTR(i32 %51)
  store %struct.clk* %52, %struct.clk** %12, align 8
  br label %59

53:                                               ; preds = %41
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.clk* @krait_add_pri_mux(%struct.device* %54, i32 %55, i8* %56, i32 %57)
  store %struct.clk* %58, %struct.clk** %12, align 8
  br label %59

59:                                               ; preds = %53, %50, %38
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @kfree(i8* %60)
  %62 = load %struct.clk*, %struct.clk** %12, align 8
  store %struct.clk* %62, %struct.clk** %4, align 8
  br label %63

63:                                               ; preds = %59, %24
  %64 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %64
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @krait_add_div(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @krait_add_sec_mux(%struct.device*, i32, i8*, i32, i32) #1

declare dso_local %struct.clk* @krait_add_pri_mux(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
