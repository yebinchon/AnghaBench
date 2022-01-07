; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_gate.c_clk_register_psc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_gate.c_clk_register_psc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_psc_data = type { i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i64, i32* }
%struct.clk_psc = type { %struct.TYPE_2__, i32*, %struct.clk_psc_data* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_psc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8*, %struct.clk_psc_data*, i32*)* @clk_register_psc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_register_psc(%struct.device* %0, i8* %1, i8* %2, %struct.clk_psc_data* %3, i32* %4) #0 {
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.clk_psc_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.clk_init_data, align 8
  %13 = alloca %struct.clk_psc*, align 8
  %14 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.clk_psc_data* %3, %struct.clk_psc_data** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.clk_psc* @kzalloc(i32 24, i32 %15)
  store %struct.clk_psc* %16, %struct.clk_psc** %13, align 8
  %17 = load %struct.clk_psc*, %struct.clk_psc** %13, align 8
  %18 = icmp ne %struct.clk_psc* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.clk* @ERR_PTR(i32 %21)
  store %struct.clk* %22, %struct.clk** %6, align 8
  br label %60

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 4
  store i32* @clk_psc_ops, i32** %26, align 8
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i8** [ %9, %30 ], [ null, %31 ]
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 1
  store i8** %33, i8*** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load %struct.clk_psc_data*, %struct.clk_psc_data** %10, align 8
  %41 = load %struct.clk_psc*, %struct.clk_psc** %13, align 8
  %42 = getelementptr inbounds %struct.clk_psc, %struct.clk_psc* %41, i32 0, i32 2
  store %struct.clk_psc_data* %40, %struct.clk_psc_data** %42, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.clk_psc*, %struct.clk_psc** %13, align 8
  %45 = getelementptr inbounds %struct.clk_psc, %struct.clk_psc* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.clk_psc*, %struct.clk_psc** %13, align 8
  %47 = getelementptr inbounds %struct.clk_psc, %struct.clk_psc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.clk_init_data* %12, %struct.clk_init_data** %48, align 8
  %49 = load %struct.clk_psc*, %struct.clk_psc** %13, align 8
  %50 = getelementptr inbounds %struct.clk_psc, %struct.clk_psc* %49, i32 0, i32 0
  %51 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_2__* %50)
  store %struct.clk* %51, %struct.clk** %14, align 8
  %52 = load %struct.clk*, %struct.clk** %14, align 8
  %53 = call i64 @IS_ERR(%struct.clk* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load %struct.clk_psc*, %struct.clk_psc** %13, align 8
  %57 = call i32 @kfree(%struct.clk_psc* %56)
  br label %58

58:                                               ; preds = %55, %32
  %59 = load %struct.clk*, %struct.clk** %14, align 8
  store %struct.clk* %59, %struct.clk** %6, align 8
  br label %60

60:                                               ; preds = %58, %19
  %61 = load %struct.clk*, %struct.clk** %6, align 8
  ret %struct.clk* %61
}

declare dso_local %struct.clk_psc* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.clk_psc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
