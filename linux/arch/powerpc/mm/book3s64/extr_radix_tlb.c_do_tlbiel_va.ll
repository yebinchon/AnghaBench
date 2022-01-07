; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_do_tlbiel_va.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_do_tlbiel_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlbiel_va = type { i64, i32, i32, i32 }

@RIC_FLUSH_TLB = common dso_local global i64 0, align 8
@RIC_FLUSH_PWC = common dso_local global i64 0, align 8
@RIC_FLUSH_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_tlbiel_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tlbiel_va(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tlbiel_va*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tlbiel_va*
  store %struct.tlbiel_va* %5, %struct.tlbiel_va** %3, align 8
  %6 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %7 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RIC_FLUSH_TLB, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %13 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %16 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %19 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @RIC_FLUSH_TLB, align 8
  %22 = call i32 @_tlbiel_va(i32 %14, i32 %17, i32 %20, i64 %21)
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %25 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RIC_FLUSH_PWC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %31 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %34 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %37 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @RIC_FLUSH_PWC, align 8
  %40 = call i32 @_tlbiel_va(i32 %32, i32 %35, i32 %38, i64 %39)
  br label %53

41:                                               ; preds = %23
  %42 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %43 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %46 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tlbiel_va*, %struct.tlbiel_va** %3, align 8
  %49 = getelementptr inbounds %struct.tlbiel_va, %struct.tlbiel_va* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @RIC_FLUSH_ALL, align 8
  %52 = call i32 @_tlbiel_va(i32 %44, i32 %47, i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %41, %29
  br label %54

54:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @_tlbiel_va(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
