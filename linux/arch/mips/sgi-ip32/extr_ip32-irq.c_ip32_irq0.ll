; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-irq.c_ip32_irq0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-irq.c_ip32_irq0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CRIME_VICE_IRQ = common dso_local global i32 0, align 4
@MACE_VID_IN1_IRQ = common dso_local global i32 0, align 4
@MACEISA_SERIAL2_RDMAOR_IRQ = common dso_local global i32 0, align 4
@MACEISA_AUDIO_SW_IRQ = common dso_local global i32 0, align 4
@crime = common dso_local global %struct.TYPE_8__* null, align 8
@crime_mask = common dso_local global i32 0, align 4
@CRIME_MACEISA_INT_MASK = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_7__* null, align 8
@maceisa_mask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"*irq %u*\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip32_irq0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip32_irq0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @CRIME_VICE_IRQ, align 4
  %5 = load i32, i32* @MACE_VID_IN1_IRQ, align 4
  %6 = sub nsw i32 %4, %5
  %7 = icmp ne i32 %6, 31
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load i32, i32* @MACEISA_SERIAL2_RDMAOR_IRQ, align 4
  %11 = load i32, i32* @MACEISA_AUDIO_SW_IRQ, align 4
  %12 = sub nsw i32 %10, %11
  %13 = icmp ne i32 %12, 31
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @crime, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @crime_mask, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %0
  br label %54

27:                                               ; preds = %0
  %28 = load i32, i32* @MACE_VID_IN1_IRQ, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = call i32 @__ffs(i64 %30)
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @CRIME_MACEISA_INT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mace, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @maceisa_mask, align 8
  %45 = and i64 %43, %44
  %46 = call i32 @__ffs(i64 %45)
  %47 = load i32, i32* @MACEISA_AUDIO_SW_IRQ, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %37, %27
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @do_IRQ(i32 %52)
  br label %54

54:                                               ; preds = %49, %26
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
