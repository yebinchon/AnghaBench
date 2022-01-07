; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_byteswap_pt_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_byteswap_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @byteswap_pt_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byteswap_pt_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = bitcast %struct.pt_regs* %4 to i64*
  store i64* %5, i64** %3, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i64*, i64** %3, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i64 1
  %10 = bitcast %struct.pt_regs* %9 to i64*
  %11 = icmp ult i64* %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @swab64(i64 %14)
  %16 = load i64*, i64** %3, align 8
  store i64 %15, i64* %16, align 8
  br label %17

17:                                               ; preds = %12
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** %3, align 8
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i64 @swab64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
