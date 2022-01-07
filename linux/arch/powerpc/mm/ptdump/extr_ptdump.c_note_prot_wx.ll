; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_note_prot_wx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_note_prot_wx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32, i64, i64, i32 }

@CONFIG_PPC_DEBUG_WX = common dso_local global i32 0, align 4
@PAGE_KERNEL_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"powerpc/mm: Found insecure W+X mapping at address %p/%pS\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i64)* @note_prot_wx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_prot_wx(%struct.pg_state* %0, i64 %1) #0 {
  %3 = alloca %struct.pg_state*, align 8
  %4 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @CONFIG_PPC_DEBUG_WX, align 4
  %6 = call i32 @IS_ENABLED(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %10 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  br label %46

14:                                               ; preds = %8
  %15 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %16 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_KERNEL_X, align 4
  %19 = call i32 @pgprot_val(i32 %18)
  %20 = and i32 %17, %19
  %21 = load i32, i32* @PAGE_KERNEL_X, align 4
  %22 = call i32 @pgprot_val(i32 %21)
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %46

25:                                               ; preds = %14
  %26 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %27 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %31 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %33)
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %37 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = udiv i64 %39, %40
  %42 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %43 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %25, %24, %13
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
