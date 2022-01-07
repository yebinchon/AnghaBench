; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c_cyrix_identify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c_cyrix_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"CyrixInstead\00", align 1
@X86_VENDOR_CYRIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Enabling CPUID on Cyrix processor.\0A\00", align 1
@CX86_CCR3 = common dso_local global i32 0, align 4
@CX86_CCR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @cyrix_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyrix_identify(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %60

11:                                               ; preds = %1
  %12 = call i64 (...) @test_cyrix_52div()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %11
  %15 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %16 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @X86_VENDOR_CYRIX, align 4
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = call i32 @do_cyrix_devid(i8* %3, i8* %4)
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 4
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %3, align 1
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %59

34:                                               ; preds = %30, %14
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = load i32, i32* @CX86_CCR3, align 4
  %39 = call i32 @getCx86(i32 %38)
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load i32, i32* @CX86_CCR3, align 4
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 15
  %45 = or i32 %44, 16
  %46 = trunc i32 %45 to i8
  %47 = call i32 @setCx86(i32 %41, i8 zeroext %46)
  %48 = load i32, i32* @CX86_CCR4, align 4
  %49 = load i32, i32* @CX86_CCR4, align 4
  %50 = call i32 @getCx86(i32 %49)
  %51 = or i32 %50, 128
  %52 = trunc i32 %51 to i8
  %53 = call i32 @setCx86(i32 %48, i8 zeroext %52)
  %54 = load i32, i32* @CX86_CCR3, align 4
  %55 = load i8, i8* %5, align 1
  %56 = call i32 @setCx86(i32 %54, i8 zeroext %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @local_irq_restore(i64 %57)
  br label %59

59:                                               ; preds = %34, %30
  br label %60

60:                                               ; preds = %59, %11, %1
  ret void
}

declare dso_local i64 @test_cyrix_52div(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @do_cyrix_devid(i8*, i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @getCx86(i32) #1

declare dso_local i32 @setCx86(i32, i8 zeroext) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
