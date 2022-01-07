; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_em_bsr_c.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_em_bsr_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@OP_NONE = common dso_local global i32 0, align 4
@em_bsr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @em_bsr_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_bsr_c(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca %struct.x86_emulate_ctxt*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %2, align 8
  %3 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %4 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @OP_NONE, align 4
  %10 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %11 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %15 = load i32, i32* @em_bsr, align 4
  %16 = call i32 @fastop(%struct.x86_emulate_ctxt* %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @fastop(%struct.x86_emulate_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
