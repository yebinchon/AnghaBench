; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-sysctrl.c_clk_reg_sysctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-sysctrl.c_clk_reg_sysctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_ops = type { i32 }
%struct.clk_sysctrl = type { i32*, i32*, i64, i64, %struct.TYPE_2__, %struct.device*, i64, i8** }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, %struct.clk_ops* }

@EINVAL = common dso_local global i32 0, align 4
@SYSCTRL_MAX_NUM_PARENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"clk_sysctrl: invalid arguments passed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"clk_sysctrl: clk_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8**, i32, i8**, i32*, i32*, i64, i64, i64, %struct.clk_ops*)* @clk_reg_sysctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_reg_sysctrl(%struct.device* %0, i8* %1, i8** %2, i32 %3, i8** %4, i32* %5, i32* %6, i64 %7, i64 %8, i64 %9, %struct.clk_ops* %10) #0 {
  %12 = alloca %struct.clk*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.clk_ops*, align 8
  %24 = alloca %struct.clk_sysctrl*, align 8
  %25 = alloca %struct.clk_init_data, align 8
  %26 = alloca %struct.clk*, align 8
  %27 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8** %4, i8*** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store %struct.clk_ops* %10, %struct.clk_ops** %23, align 8
  %28 = load %struct.device*, %struct.device** %13, align 8
  %29 = icmp ne %struct.device* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %11
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.clk* @ERR_PTR(i32 %32)
  store %struct.clk* %33, %struct.clk** %12, align 8
  br label %159

34:                                               ; preds = %11
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @SYSCTRL_MAX_NUM_PARENTS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %34
  %42 = load %struct.device*, %struct.device** %13, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.clk* @ERR_PTR(i32 %45)
  store %struct.clk* %46, %struct.clk** %12, align 8
  br label %159

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %13, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.clk_sysctrl* @devm_kzalloc(%struct.device* %48, i32 64, i32 %49)
  store %struct.clk_sysctrl* %50, %struct.clk_sysctrl** %24, align 8
  %51 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %52 = icmp ne %struct.clk_sysctrl* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.clk* @ERR_PTR(i32 %55)
  store %struct.clk* %56, %struct.clk** %12, align 8
  br label %159

57:                                               ; preds = %47
  %58 = load i8**, i8*** %17, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %62 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %61, i32 0, i32 7
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %60, i8** %64, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %69 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %76 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  store i32 1, i32* %27, align 4
  br label %79

79:                                               ; preds = %117, %57
  %80 = load i32, i32* %27, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = load i8**, i8*** %17, align 8
  %85 = load i32, i32* %27, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %90 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %89, i32 0, i32 7
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %27, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %88, i8** %94, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = load i32, i32* %27, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %101 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %27, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = load i32, i32* %27, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %112 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %27, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %83
  %118 = load i32, i32* %27, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %27, align 4
  br label %79

120:                                              ; preds = %79
  %121 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %122 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %121, i32 0, i32 6
  store i64 0, i64* %122, align 8
  %123 = load i64, i64* %20, align 8
  %124 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %125 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %21, align 8
  %127 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %128 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.device*, %struct.device** %13, align 8
  %130 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %131 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %130, i32 0, i32 5
  store %struct.device* %129, %struct.device** %131, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %25, i32 0, i32 0
  store i8* %132, i8** %133, align 8
  %134 = load %struct.clk_ops*, %struct.clk_ops** %23, align 8
  %135 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %25, i32 0, i32 4
  store %struct.clk_ops* %134, %struct.clk_ops** %135, align 8
  %136 = load i64, i64* %22, align 8
  %137 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %25, i32 0, i32 1
  store i64 %136, i64* %137, align 8
  %138 = load i8**, i8*** %15, align 8
  %139 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %25, i32 0, i32 2
  store i8** %138, i8*** %139, align 8
  %140 = load i32, i32* %16, align 4
  %141 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %25, i32 0, i32 3
  store i32 %140, i32* %141, align 8
  %142 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %143 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store %struct.clk_init_data* %25, %struct.clk_init_data** %144, align 8
  %145 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %146 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %145, i32 0, i32 5
  %147 = load %struct.device*, %struct.device** %146, align 8
  %148 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %24, align 8
  %149 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %148, i32 0, i32 4
  %150 = call %struct.clk* @devm_clk_register(%struct.device* %147, %struct.TYPE_2__* %149)
  store %struct.clk* %150, %struct.clk** %26, align 8
  %151 = load %struct.clk*, %struct.clk** %26, align 8
  %152 = call i64 @IS_ERR(%struct.clk* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %120
  %155 = load %struct.device*, %struct.device** %13, align 8
  %156 = call i32 @dev_err(%struct.device* %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %120
  %158 = load %struct.clk*, %struct.clk** %26, align 8
  store %struct.clk* %158, %struct.clk** %12, align 8
  br label %159

159:                                              ; preds = %157, %53, %41, %30
  %160 = load %struct.clk*, %struct.clk** %12, align 8
  ret %struct.clk* %160
}

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.clk_sysctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
