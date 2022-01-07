; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_dump_irq_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_dump_irq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_5__*)* }

@.str = private unnamed_addr constant [27 x i8] c"Expansion card IRQ state:\0A\00", align 1
@cards = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@ecard_default_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"  %d: %sclaimed irq %spending\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"  %d: %sclaimed irqaddr %p, mask = %02X, status = %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ecard_dump_irq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecard_dump_irq_state() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cards, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %1, align 8
  br label %5

5:                                                ; preds = %70, %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %74

8:                                                ; preds = %5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %70

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  store i8* %20, i8** %2, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %14
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64 (%struct.TYPE_5__*)*, i64 (%struct.TYPE_5__*)** %29, align 8
  %31 = icmp ne i64 (%struct.TYPE_5__*)* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, @ecard_default_ops
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64 (%struct.TYPE_5__*)*, i64 (%struct.TYPE_5__*)** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %48 = call i64 %46(%struct.TYPE_5__* %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %40, i8* %41, i8* %51)
  br label %69

53:                                               ; preds = %32, %25, %14
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %2, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @readb(i32 %66)
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %56, i8* %57, i32 %60, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %53, %37
  br label %70

70:                                               ; preds = %69, %13
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %1, align 8
  br label %5

74:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
