; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_sysctl_wait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_sysctl_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"module de/activation failed %d %08X %08X %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32, i32)* @sysctl_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysctl_wait(%struct.clk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1000000, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %3
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.clk*, %struct.clk** %4, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @sysctl_r32(i32 %16, i32 %17)
  %19 = load %struct.clk*, %struct.clk** %4, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %13, %9
  %26 = phi i1 [ false, %9 ], [ %24, %13 ]
  br i1 %26, label %8, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clk*, %struct.clk** %4, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.clk*, %struct.clk** %4, align 8
  %39 = getelementptr inbounds %struct.clk, %struct.clk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @sysctl_r32(i32 %40, i32 %41)
  %43 = load %struct.clk*, %struct.clk** %4, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %37, i32 %46)
  br label %48

48:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @sysctl_r32(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
