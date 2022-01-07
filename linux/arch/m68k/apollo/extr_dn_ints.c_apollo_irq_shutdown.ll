; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/apollo/extr_dn_ints.c_apollo_irq_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/apollo/extr_dn_ints.c_apollo_irq_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@pica = common dso_local global i64 0, align 8
@picb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apollo_irq_shutdown(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 1, %10
  %12 = load i64, i64* @pica, align 8
  %13 = add nsw i64 %12, 1
  %14 = inttoptr i64 %13 to i8*
  %15 = load volatile i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, %11
  %18 = trunc i32 %17 to i8
  store volatile i8 %18, i8* %14, align 1
  br label %30

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %20, 8
  %22 = shl i32 1, %21
  %23 = load i64, i64* @picb, align 8
  %24 = add nsw i64 %23, 1
  %25 = inttoptr i64 %24 to i8*
  %26 = load volatile i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %22
  %29 = trunc i32 %28 to i8
  store volatile i8 %29, i8* %25, align 1
  br label %30

30:                                               ; preds = %19, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
