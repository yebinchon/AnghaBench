; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear1340_cpu_get_possible_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear1340_cpu_get_possible_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"sys_syn_clk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pll1_clk\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pll2_clk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pll3_clk\00", align 1
@__const.spear1340_cpu_get_possible_parent.sys_clk_src = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to get %s clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (i64)* @spear1340_cpu_get_possible_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @spear1340_cpu_get_possible_parent(i64 %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8*], align 16
  store i64 %0, i64* %3, align 8
  %7 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i8*]* @__const.spear1340_cpu_get_possible_parent.sys_clk_src to i8*), i64 32, i1 false)
  %8 = load i64, i64* %3, align 8
  %9 = icmp ule i64 %8, 300000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp ugt i64 %12, 300000000
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = icmp ule i64 %15, 500000000
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 3, i32* %5, align 4
  br label %27

18:                                               ; preds = %14, %11
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %19, 600000000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.clk* @ERR_PTR(i32 %24)
  store %struct.clk* %25, %struct.clk** %2, align 8
  br label %45

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %17
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.clk* @clk_get(i32* null, i8* %32)
  store %struct.clk* %33, %struct.clk** %4, align 8
  %34 = load %struct.clk*, %struct.clk** %4, align 8
  %35 = call i64 @IS_ERR(%struct.clk* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load %struct.clk*, %struct.clk** %4, align 8
  store %struct.clk* %44, %struct.clk** %2, align 8
  br label %45

45:                                               ; preds = %43, %22
  %46 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #2

declare dso_local %struct.clk* @clk_get(i32*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
