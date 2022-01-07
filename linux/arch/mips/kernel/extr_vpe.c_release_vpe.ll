; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_release_vpe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_release_vpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_vpe(%struct.vpe* %0) #0 {
  %2 = alloca %struct.vpe*, align 8
  store %struct.vpe* %0, %struct.vpe** %2, align 8
  %3 = load %struct.vpe*, %struct.vpe** %2, align 8
  %4 = getelementptr inbounds %struct.vpe, %struct.vpe* %3, i32 0, i32 1
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.vpe*, %struct.vpe** %2, align 8
  %7 = getelementptr inbounds %struct.vpe, %struct.vpe* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.vpe*, %struct.vpe** %2, align 8
  %12 = call i32 @release_progmem(%struct.vpe* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.vpe*, %struct.vpe** %2, align 8
  %15 = call i32 @kfree(%struct.vpe* %14)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @release_progmem(%struct.vpe*) #1

declare dso_local i32 @kfree(%struct.vpe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
