; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_free_relocation_chain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_free_relocation_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_hi16 = type { %struct.mips_hi16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_hi16*)* @free_relocation_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_relocation_chain(%struct.mips_hi16* %0) #0 {
  %2 = alloca %struct.mips_hi16*, align 8
  %3 = alloca %struct.mips_hi16*, align 8
  store %struct.mips_hi16* %0, %struct.mips_hi16** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.mips_hi16*, %struct.mips_hi16** %2, align 8
  %6 = icmp ne %struct.mips_hi16* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.mips_hi16*, %struct.mips_hi16** %2, align 8
  %9 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %8, i32 0, i32 0
  %10 = load %struct.mips_hi16*, %struct.mips_hi16** %9, align 8
  store %struct.mips_hi16* %10, %struct.mips_hi16** %3, align 8
  %11 = load %struct.mips_hi16*, %struct.mips_hi16** %2, align 8
  %12 = call i32 @kfree(%struct.mips_hi16* %11)
  %13 = load %struct.mips_hi16*, %struct.mips_hi16** %3, align 8
  store %struct.mips_hi16* %13, %struct.mips_hi16** %2, align 8
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @kfree(%struct.mips_hi16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
