; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_starfire.c_starfire_hookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_starfire.c_starfire_hookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.starfire_irqinfo = type { i64, i64*, i64*, i32, %struct.starfire_irqinfo* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"starfire_hookup: No memory, this is insane.\0A\00", align 1
@sflist = common dso_local global %struct.starfire_irqinfo* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @starfire_hookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.starfire_irqinfo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.starfire_irqinfo* @kmalloc(i32 40, i32 %7)
  store %struct.starfire_irqinfo* %8, %struct.starfire_irqinfo** %3, align 8
  %9 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %10 = icmp ne %struct.starfire_irqinfo* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 @prom_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @prom_halt()
  br label %14

14:                                               ; preds = %11, %1
  store i64 1103739486208, i64* %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 60
  %17 = shl i32 %16, 1
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 64
  %20 = ashr i32 %19, 4
  %21 = or i32 %17, %20
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 3
  %24 = or i32 %21, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %28 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = shl i64 %29, 33
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 512
  store i64 %34, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %68, %14
  %36 = load i64, i64* %6, align 8
  %37 = icmp ult i64 %36, 32
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %40 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %45, 16
  %47 = add i64 %44, %46
  %48 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %49 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  %53 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %54 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @upa_readl(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %38
  %62 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %63 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 3735928495, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %38
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %35

71:                                               ; preds = %35
  %72 = load i32, i32* %2, align 4
  %73 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %74 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** @sflist, align 8
  %76 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  %77 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %76, i32 0, i32 4
  store %struct.starfire_irqinfo* %75, %struct.starfire_irqinfo** %77, align 8
  %78 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %3, align 8
  store %struct.starfire_irqinfo* %78, %struct.starfire_irqinfo** @sflist, align 8
  ret void
}

declare dso_local %struct.starfire_irqinfo* @kmalloc(i32, i32) #1

declare dso_local i32 @prom_printf(i8*) #1

declare dso_local i32 @prom_halt(...) #1

declare dso_local i64 @upa_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
