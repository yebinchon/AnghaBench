; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kgdb_notifier = common dso_local global i32 0, align 4
@NMI_LOCAL = common dso_local global i32 0, align 4
@kgdb_nmi_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"kgdb\00", align 1
@NMI_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @register_die_notifier(i32* @kgdb_notifier)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %28

7:                                                ; preds = %0
  %8 = load i32, i32* @NMI_LOCAL, align 4
  %9 = load i32, i32* @kgdb_nmi_handler, align 4
  %10 = call i32 @register_nmi_handler(i32 %8, i32 %9, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %26

14:                                               ; preds = %7
  %15 = load i32, i32* @NMI_UNKNOWN, align 4
  %16 = load i32, i32* @kgdb_nmi_handler, align 4
  %17 = call i32 @register_nmi_handler(i32 %15, i32 %16, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @NMI_LOCAL, align 4
  %25 = call i32 @unregister_nmi_handler(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %13
  %27 = call i32 @unregister_die_notifier(i32* @kgdb_notifier)
  br label %28

28:                                               ; preds = %26, %6
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @register_die_notifier(i32*) #1

declare dso_local i32 @register_nmi_handler(i32, i32, i32, i8*) #1

declare dso_local i32 @unregister_nmi_handler(i32, i8*) #1

declare dso_local i32 @unregister_die_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
