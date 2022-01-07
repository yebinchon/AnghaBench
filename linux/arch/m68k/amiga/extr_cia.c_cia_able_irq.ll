; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_cia.c_cia_able_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_cia.c_cia_able_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ciabase = type { i8, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CIA_ICR_SETCLR = common dso_local global i8 0, align 1
@CIA_ICR_ALL = common dso_local global i8 0, align 1
@IF_SETCLR = common dso_local global i32 0, align 4
@amiga_custom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @cia_able_irq(%struct.ciabase* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.ciabase*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.ciabase* %0, %struct.ciabase** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %7 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  store i8 %8, i8* %5, align 1
  %9 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %10 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %15 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %21 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @CIA_ICR_SETCLR, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %34 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %32
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 8
  br label %49

39:                                               ; preds = %2
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %44 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 8
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, %42
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 8
  br label %49

49:                                               ; preds = %39, %30
  %50 = load i8, i8* @CIA_ICR_ALL, align 1
  %51 = zext i8 %50 to i32
  %52 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %53 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, %51
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 8
  %58 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %59 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %62 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = and i32 %60, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %49
  %68 = load i32, i32* @IF_SETCLR, align 4
  %69 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %70 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %68, %71
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 0), align 4
  br label %73

73:                                               ; preds = %67, %49
  %74 = load i8, i8* %5, align 1
  ret i8 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
