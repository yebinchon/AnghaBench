; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.powerdomain*)*, i32 (...)* }
%struct.powerdomain = type { i64, i32*, i32, i64, i32, i64*, i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.voltagedomain*, i32 }
%struct.voltagedomain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP4430_INVALID_PRCM_PARTITION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"powerdomain: %s: missing OMAP4 PRCM partition ID\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@arch_pwrdm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"powerdomain: %s: voltagedomain %s does not exist\0A\00", align 1
@pwrdm_list = common dso_local global i32 0, align 4
@PWRDM_MAX_PWRSTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"powerdomain: registered %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*)* @_pwrdm_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pwrdm_register(%struct.powerdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerdomain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.voltagedomain*, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %3, align 8
  %6 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %7 = icmp ne %struct.powerdomain* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %10 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %154

16:                                               ; preds = %8
  %17 = call i64 (...) @cpu_is_omap44xx()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %21 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OMAP4430_INVALID_PRCM_PARTITION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %27 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %154

32:                                               ; preds = %19, %16
  %33 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %34 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @_pwrdm_lookup(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %154

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_pwrdm, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_pwrdm, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32 (...)*, i32 (...)** %46, align 8
  %48 = icmp ne i32 (...)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_pwrdm, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (...)*, i32 (...)** %51, align 8
  %53 = call i32 (...) %52()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %84

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %44, %41
  %58 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %59 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.voltagedomain* @voltdm_lookup(i32 %61)
  store %struct.voltagedomain* %62, %struct.voltagedomain** %5, align 8
  %63 = load %struct.voltagedomain*, %struct.voltagedomain** %5, align 8
  %64 = icmp ne %struct.voltagedomain* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %57
  %66 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %67 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %70 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %154

76:                                               ; preds = %57
  %77 = load %struct.voltagedomain*, %struct.voltagedomain** %5, align 8
  %78 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %79 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store %struct.voltagedomain* %77, %struct.voltagedomain** %80, align 8
  %81 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %82 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %81, i32 0, i32 9
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  br label %84

84:                                               ; preds = %76, %55
  %85 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %86 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %85, i32 0, i32 8
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %89 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %88, i32 0, i32 7
  %90 = call i32 @list_add(i32* %89, i32* @pwrdm_list)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %102, %84
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @PWRDM_MAX_PWRSTS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %97 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %91

105:                                              ; preds = %91
  %106 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %107 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %106, i32 0, i32 6
  store i64 0, i64* %107, align 8
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %121, %105
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %111 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %116 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %115, i32 0, i32 5
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %108

124:                                              ; preds = %108
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_pwrdm, align 8
  %126 = icmp ne %struct.TYPE_4__* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_pwrdm, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32 (%struct.powerdomain*)*, i32 (%struct.powerdomain*)** %129, align 8
  %131 = icmp ne i32 (%struct.powerdomain*)* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_pwrdm, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32 (%struct.powerdomain*)*, i32 (%struct.powerdomain*)** %134, align 8
  %136 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %137 = call i32 %135(%struct.powerdomain* %136)
  br label %138

138:                                              ; preds = %132, %127, %124
  %139 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %140 = call i64 @pwrdm_read_pwrst(%struct.powerdomain* %139)
  %141 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %142 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %144 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %147 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 1, i32* %149, align 4
  %150 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %151 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %138, %65, %38, %25, %13
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @cpu_is_omap44xx(...) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @_pwrdm_lookup(i32) #1

declare dso_local %struct.voltagedomain* @voltdm_lookup(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @pwrdm_read_pwrst(%struct.powerdomain*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
