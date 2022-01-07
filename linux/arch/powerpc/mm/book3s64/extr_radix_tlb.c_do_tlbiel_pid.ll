; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_do_tlbiel_pid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_do_tlbiel_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlbiel_pid = type { i64, i32 }

@RIC_FLUSH_TLB = common dso_local global i64 0, align 8
@RIC_FLUSH_PWC = common dso_local global i64 0, align 8
@RIC_FLUSH_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_tlbiel_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tlbiel_pid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tlbiel_pid*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tlbiel_pid*
  store %struct.tlbiel_pid* %5, %struct.tlbiel_pid** %3, align 8
  %6 = load %struct.tlbiel_pid*, %struct.tlbiel_pid** %3, align 8
  %7 = getelementptr inbounds %struct.tlbiel_pid, %struct.tlbiel_pid* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RIC_FLUSH_TLB, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tlbiel_pid*, %struct.tlbiel_pid** %3, align 8
  %13 = getelementptr inbounds %struct.tlbiel_pid, %struct.tlbiel_pid* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* @RIC_FLUSH_TLB, align 8
  %16 = call i32 @_tlbiel_pid(i32 %14, i64 %15)
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.tlbiel_pid*, %struct.tlbiel_pid** %3, align 8
  %19 = getelementptr inbounds %struct.tlbiel_pid, %struct.tlbiel_pid* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RIC_FLUSH_PWC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.tlbiel_pid*, %struct.tlbiel_pid** %3, align 8
  %25 = getelementptr inbounds %struct.tlbiel_pid, %struct.tlbiel_pid* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* @RIC_FLUSH_PWC, align 8
  %28 = call i32 @_tlbiel_pid(i32 %26, i64 %27)
  br label %35

29:                                               ; preds = %17
  %30 = load %struct.tlbiel_pid*, %struct.tlbiel_pid** %3, align 8
  %31 = getelementptr inbounds %struct.tlbiel_pid, %struct.tlbiel_pid* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @RIC_FLUSH_ALL, align 8
  %34 = call i32 @_tlbiel_pid(i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @_tlbiel_pid(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
