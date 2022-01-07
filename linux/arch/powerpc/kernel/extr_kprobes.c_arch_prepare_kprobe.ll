; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_arch_prepare_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_arch_prepare_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"Attempt to register kprobe at an unaligned address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Cannot register a kprobe on rfi/rfid or mtmsr[d]\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_INSN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_prepare_kprobe(%struct.kprobe* %0) #0 {
  %2 = alloca %struct.kprobe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %6 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %10 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = ptrtoint i32* %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @IS_MTMSRD(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @IS_RFID(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @IS_RFI(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23, %19
  %32 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = call i64 (...) @get_insn_slot()
  %41 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %42 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %45 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %39
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %53
  %57 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %58 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %62 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @MAX_INSN_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i64 %60, i32* %63, i32 %67)
  %69 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %70 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %74 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %76 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %80 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 4
  %84 = call i32 @flush_icache_range(i64 %78, i64 %83)
  br label %85

85:                                               ; preds = %56, %53
  %86 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %87 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @IS_MTMSRD(i32) #1

declare dso_local i64 @IS_RFID(i32) #1

declare dso_local i64 @IS_RFI(i32) #1

declare dso_local i64 @get_insn_slot(...) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
