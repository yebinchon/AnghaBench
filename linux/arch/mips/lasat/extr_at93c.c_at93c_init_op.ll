; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lasat/extr_at93c.c_at93c_init_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lasat/extr_at93c.c_at93c_init_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@at93c = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @at93c_init_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at93c_init_op() #0 {
  %1 = call i32 (...) @at93c_reg_read()
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @at93c, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %1, %4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @at93c, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @at93c, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %10, %15
  %17 = call i32 @at93c_reg_write(i32 %16)
  %18 = call i32 @lasat_ndelay(i32 50)
  ret void
}

declare dso_local i32 @at93c_reg_write(i32) #1

declare dso_local i32 @at93c_reg_read(...) #1

declare dso_local i32 @lasat_ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
