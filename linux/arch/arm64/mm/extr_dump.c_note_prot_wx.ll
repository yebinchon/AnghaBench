; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_note_prot_wx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_note_prot_wx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32, i64, i64, i32 }

@PTE_RDONLY = common dso_local global i32 0, align 4
@PTE_PXN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"arm64/mm: Found insecure W+X mapping at address %p/%pS\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i64)* @note_prot_wx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_prot_wx(%struct.pg_state* %0, i64 %1) #0 {
  %3 = alloca %struct.pg_state*, align 8
  %4 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %6 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %49

10:                                               ; preds = %2
  %11 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %12 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PTE_RDONLY, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @PTE_RDONLY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %49

19:                                               ; preds = %10
  %20 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %21 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PTE_PXN, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @PTE_PXN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %19
  %29 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %30 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %34 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %36)
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %40 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = udiv i64 %42, %43
  %45 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %46 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %28, %27, %18, %9
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
