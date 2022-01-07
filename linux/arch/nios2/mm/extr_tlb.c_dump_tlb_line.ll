; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_dump_tlb_line.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_dump_tlb_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"dump tlb-entries for line=%#lx (addr %08lx)\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CTL_TLBMISC = common dso_local global i32 0, align 4
@TLBMISC_PID = common dso_local global i64 0, align 8
@TLBMISC_WAY = common dso_local global i64 0, align 8
@CTL_PTEADDR = common dso_local global i32 0, align 4
@TLBMISC_RD = common dso_local global i32 0, align 4
@TLBMISC_WAY_SHIFT = common dso_local global i32 0, align 4
@CTL_TLBACC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"-- way:%02x vpn:0x%08lx phys:0x%08lx pid:0x%02lx flags:%c%c%c%c%c\0A\00", align 1
@TLBMISC_PID_SHIFT = common dso_local global i64 0, align 8
@TLBMISC_PID_MASK = common dso_local global i64 0, align 8
@_PAGE_READ = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@_PAGE_EXEC = common dso_local global i64 0, align 8
@_PAGE_GLOBAL = common dso_local global i64 0, align 8
@_PAGE_CACHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_tlb_line(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 8
  %13 = add i64 %11, %12
  %14 = shl i64 %10, %13
  %15 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %14)
  %16 = load i32, i32* @CTL_TLBMISC, align 4
  %17 = call i64 @RDCTL(i32 %16)
  %18 = load i64, i64* @TLBMISC_PID, align 8
  %19 = load i64, i64* @TLBMISC_WAY, align 8
  %20 = or i64 %18, %19
  %21 = and i64 %17, %20
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* @CTL_PTEADDR, align 4
  %23 = load i64, i64* %2, align 8
  %24 = shl i64 %23, 2
  %25 = call i32 @WRCTL(i32 %22, i64 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %95, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 8
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %98

30:                                               ; preds = %26
  %31 = load i32, i32* @CTL_TLBMISC, align 4
  %32 = load i32, i32* @TLBMISC_RD, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @TLBMISC_WAY_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = zext i32 %36 to i64
  %38 = call i32 @WRCTL(i32 %31, i64 %37)
  %39 = load i32, i32* @CTL_PTEADDR, align 4
  %40 = call i64 @RDCTL(i32 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i32, i32* @CTL_TLBMISC, align 4
  %42 = call i64 @RDCTL(i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i32, i32* @CTL_TLBACC, align 4
  %44 = call i64 @RDCTL(i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %30
  %50 = load i32, i32* %3, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @PAGE_SHIFT, align 8
  %53 = sub i64 %52, 2
  %54 = shl i64 %51, %53
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = shl i64 %55, %56
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @TLBMISC_PID_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = load i64, i64* @TLBMISC_PID_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @_PAGE_READ, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 114, i32 45
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @_PAGE_WRITE, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 119, i32 45
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @_PAGE_EXEC, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 120, i32 45
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @_PAGE_GLOBAL, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 103, i32 45
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @_PAGE_CACHED, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 99, i32 45
  %93 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %54, i64 %57, i64 %62, i32 %68, i32 %74, i32 %80, i32 %86, i32 %92)
  br label %94

94:                                               ; preds = %49, %30
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %26

98:                                               ; preds = %26
  %99 = load i32, i32* @CTL_TLBMISC, align 4
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @WRCTL(i32 %99, i64 %100)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i64, ...) #1

declare dso_local i64 @RDCTL(i32) #1

declare dso_local i32 @WRCTL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
