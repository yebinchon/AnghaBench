; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_cia.c_cia_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_cia.c_cia_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ciabase = type { i32, i32 }

@CIA_ICR_ALL = common dso_local global i32 0, align 4
@amiga_custom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cia_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cia_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ciabase*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ciabase*
  store %struct.ciabase* %10, %struct.ciabase** %5, align 8
  %11 = load %struct.ciabase*, %struct.ciabase** %5, align 8
  %12 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load %struct.ciabase*, %struct.ciabase** %5, align 8
  %17 = load i32, i32* @CIA_ICR_ALL, align 4
  %18 = call zeroext i8 @cia_set_irq(%struct.ciabase* %16, i32 %17)
  store i8 %18, i8* %7, align 1
  %19 = load %struct.ciabase*, %struct.ciabase** %5, align 8
  %20 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amiga_custom, i32 0, i32 0), align 4
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @generic_handle_irq(i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @local_irq_restore(i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = ashr i32 %35, 1
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %7, align 1
  br label %38

38:                                               ; preds = %50, %29
  %39 = load i8, i8* %7, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @generic_handle_irq(i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  br label %38

57:                                               ; preds = %38
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @cia_set_irq(%struct.ciabase*, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
