; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_find_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_find_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_params = type { i32 }
%struct.coproc_reg = type { i32 }

@match_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coproc_reg* (%struct.coproc_params*, %struct.coproc_reg*, i32)* @find_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coproc_reg* @find_reg(%struct.coproc_params* %0, %struct.coproc_reg* %1, i32 %2) #0 {
  %4 = alloca %struct.coproc_params*, align 8
  %5 = alloca %struct.coproc_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.coproc_params* %0, %struct.coproc_params** %4, align 8
  store %struct.coproc_reg* %1, %struct.coproc_reg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %9 = call i64 @reg_to_match_value(%struct.coproc_params* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @match_reg, align 4
  %15 = call %struct.coproc_reg* @bsearch(i8* %11, %struct.coproc_reg* %12, i32 %13, i32 4, i32 %14)
  ret %struct.coproc_reg* %15
}

declare dso_local i64 @reg_to_match_value(%struct.coproc_params*) #1

declare dso_local %struct.coproc_reg* @bsearch(i8*, %struct.coproc_reg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
