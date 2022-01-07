; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_uniphier-system-bus.c_uniphier_system_bus_add_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_uniphier-system-bus.c_uniphier_system_bus_add_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_system_bus_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"range found: bank = %d, addr = %08x, paddr = %08llx, size = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported bank number %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"range for bank %d has already been specified\0A\00", align 1
@U32_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"base address %llx is too high\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"base %08x cannot be mapped to %08llx of parent\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"end address %08llx is too high\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"range added: bank = %d, addr = %08x, end = %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_system_bus_priv*, i32, i32, i32, i32)* @uniphier_system_bus_add_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_system_bus_add_bank(%struct.uniphier_system_bus_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uniphier_system_bus_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uniphier_system_bus_priv* %0, %struct.uniphier_system_bus_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %15 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %24 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %25)
  %27 = icmp sge i32 %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %5
  %29 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %30 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %161

36:                                               ; preds = %5
  %37 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %38 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %48 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %46, %36
  %57 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %58 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %161

64:                                               ; preds = %46
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @U32_MAX, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %70 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %161

76:                                               ; preds = %64
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %85 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %161

92:                                               ; preds = %76
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @round_down(i32 %96, i32 131072)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @round_up(i32 %98, i32 131072)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @U32_MAX, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %105 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %161

111:                                              ; preds = %92
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, 1
  %115 = xor i32 %112, %114
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @roundup_pow_of_two(i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @round_down(i32 %118, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @round_up(i32 %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %126 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %134 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32 %132, i32* %139, align 4
  %140 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %141 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %145 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %7, align 8
  %153 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %142, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %151, i32 %159)
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %111, %103, %83, %68, %56, %28
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
