; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_exit_icq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_exit_icq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_cq = type { i32 }
%struct.bfq_io_cq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_cq*)* @bfq_exit_icq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_exit_icq(%struct.io_cq* %0) #0 {
  %2 = alloca %struct.io_cq*, align 8
  %3 = alloca %struct.bfq_io_cq*, align 8
  store %struct.io_cq* %0, %struct.io_cq** %2, align 8
  %4 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %5 = call %struct.bfq_io_cq* @icq_to_bic(%struct.io_cq* %4)
  store %struct.bfq_io_cq* %5, %struct.bfq_io_cq** %3, align 8
  %6 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %7 = call i32 @bfq_exit_icq_bfqq(%struct.bfq_io_cq* %6, i32 1)
  %8 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %9 = call i32 @bfq_exit_icq_bfqq(%struct.bfq_io_cq* %8, i32 0)
  ret void
}

declare dso_local %struct.bfq_io_cq* @icq_to_bic(%struct.io_cq*) #1

declare dso_local i32 @bfq_exit_icq_bfqq(%struct.bfq_io_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
