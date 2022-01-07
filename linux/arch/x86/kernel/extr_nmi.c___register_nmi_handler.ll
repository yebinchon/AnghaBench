; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c___register_nmi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c___register_nmi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmiaction = type { i32, i32, i32, i32 }
%struct.nmi_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nmi_max_handler = common dso_local global i32 0, align 4
@NMI_SERR = common dso_local global i32 0, align 4
@NMI_IO_CHECK = common dso_local global i32 0, align 4
@NMI_FLAG_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__register_nmi_handler(i32 %0, %struct.nmiaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nmiaction*, align 8
  %6 = alloca %struct.nmi_desc*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.nmiaction* %1, %struct.nmiaction** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.nmi_desc* @nmi_to_desc(i32 %8)
  store %struct.nmi_desc* %9, %struct.nmi_desc** %6, align 8
  %10 = load %struct.nmiaction*, %struct.nmiaction** %5, align 8
  %11 = getelementptr inbounds %struct.nmiaction, %struct.nmiaction* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.nmiaction*, %struct.nmiaction** %5, align 8
  %19 = getelementptr inbounds %struct.nmiaction, %struct.nmiaction* %18, i32 0, i32 2
  %20 = load i32, i32* @nmi_max_handler, align 4
  %21 = call i32 @init_irq_work(i32* %19, i32 %20)
  %22 = load %struct.nmi_desc*, %struct.nmi_desc** %6, align 8
  %23 = getelementptr inbounds %struct.nmi_desc, %struct.nmi_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @raw_spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NMI_SERR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.nmi_desc*, %struct.nmi_desc** %6, align 8
  %31 = getelementptr inbounds %struct.nmi_desc, %struct.nmi_desc* %30, i32 0, i32 1
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %17
  %36 = phi i1 [ false, %17 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON_ONCE(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NMI_IO_CHECK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.nmi_desc*, %struct.nmi_desc** %6, align 8
  %44 = getelementptr inbounds %struct.nmi_desc, %struct.nmi_desc* %43, i32 0, i32 1
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %35
  %49 = phi i1 [ false, %35 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  %52 = load %struct.nmiaction*, %struct.nmiaction** %5, align 8
  %53 = getelementptr inbounds %struct.nmiaction, %struct.nmiaction* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NMI_FLAG_FIRST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.nmiaction*, %struct.nmiaction** %5, align 8
  %60 = getelementptr inbounds %struct.nmiaction, %struct.nmiaction* %59, i32 0, i32 1
  %61 = load %struct.nmi_desc*, %struct.nmi_desc** %6, align 8
  %62 = getelementptr inbounds %struct.nmi_desc, %struct.nmi_desc* %61, i32 0, i32 1
  %63 = call i32 @list_add_rcu(i32* %60, i32* %62)
  br label %70

64:                                               ; preds = %48
  %65 = load %struct.nmiaction*, %struct.nmiaction** %5, align 8
  %66 = getelementptr inbounds %struct.nmiaction, %struct.nmiaction* %65, i32 0, i32 1
  %67 = load %struct.nmi_desc*, %struct.nmi_desc** %6, align 8
  %68 = getelementptr inbounds %struct.nmi_desc, %struct.nmi_desc* %67, i32 0, i32 1
  %69 = call i32 @list_add_tail_rcu(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.nmi_desc*, %struct.nmi_desc** %6, align 8
  %72 = getelementptr inbounds %struct.nmi_desc, %struct.nmi_desc* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @raw_spin_unlock_irqrestore(i32* %72, i64 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.nmi_desc* @nmi_to_desc(i32) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
