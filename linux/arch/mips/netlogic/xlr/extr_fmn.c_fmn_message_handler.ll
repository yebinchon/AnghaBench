; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_fmn.c_fmn_message_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_fmn.c_fmn_message_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmn_message_handler = type { i32, i32 (i32, i32, i32, i32, %struct.nlm_fmn_msg*, i32)* }
%struct.nlm_fmn_msg = type { i32 }

@msg_handlers = common dso_local global %struct.fmn_message_handler* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"No msgring handler for stnid %d\0A\00", align 1
@nlm_threads_per_core = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fmn_message_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmn_message_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fmn_message_handler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlm_fmn_msg, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = call i32 (...) @nlm_cop2_enable_irqsave()
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @nlm_fmn_setup_intr(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %2, %72
  %18 = call i32 (...) @nlm_read_c2_status0()
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 255
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %73

24:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %69, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %72

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %69

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @nlm_fmn_receive(i32 %36, i32* %8, i32* %9, i32* %10, %struct.nlm_fmn_msg* %11)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %69

41:                                               ; preds = %35
  %42 = load %struct.fmn_message_handler*, %struct.fmn_message_handler** @msg_handlers, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.fmn_message_handler, %struct.fmn_message_handler* %42, i64 %44
  store %struct.fmn_message_handler* %45, %struct.fmn_message_handler** %5, align 8
  %46 = load %struct.fmn_message_handler*, %struct.fmn_message_handler** %5, align 8
  %47 = getelementptr inbounds %struct.fmn_message_handler, %struct.fmn_message_handler* %46, i32 0, i32 1
  %48 = load i32 (i32, i32, i32, i32, %struct.nlm_fmn_msg*, i32)*, i32 (i32, i32, i32, i32, %struct.nlm_fmn_msg*, i32)** %47, align 8
  %49 = icmp eq i32 (i32, i32, i32, i32, %struct.nlm_fmn_msg*, i32)* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %68

53:                                               ; preds = %41
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @nlm_cop2_disable_irqrestore(i32 %54)
  %56 = load %struct.fmn_message_handler*, %struct.fmn_message_handler** %5, align 8
  %57 = getelementptr inbounds %struct.fmn_message_handler, %struct.fmn_message_handler* %56, i32 0, i32 1
  %58 = load i32 (i32, i32, i32, i32, %struct.nlm_fmn_msg*, i32)*, i32 (i32, i32, i32, i32, %struct.nlm_fmn_msg*, i32)** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.fmn_message_handler*, %struct.fmn_message_handler** %5, align 8
  %64 = getelementptr inbounds %struct.fmn_message_handler, %struct.fmn_message_handler* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %58(i32 %59, i32 %60, i32 %61, i32 %62, %struct.nlm_fmn_msg* %11, i32 %65)
  %67 = call i32 (...) @nlm_cop2_enable_irqsave()
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %53, %50
  br label %69

69:                                               ; preds = %68, %40, %34
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %25

72:                                               ; preds = %25
  br label %17

73:                                               ; preds = %23
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @nlm_threads_per_core, align 4
  %76 = shl i32 1, %75
  %77 = sub nsw i32 %76, 1
  %78 = call i32 @nlm_fmn_setup_intr(i32 %74, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @nlm_cop2_disable_irqrestore(i32 %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %81
}

declare dso_local i32 @nlm_cop2_enable_irqsave(...) #1

declare dso_local i32 @nlm_fmn_setup_intr(i32, i32) #1

declare dso_local i32 @nlm_read_c2_status0(...) #1

declare dso_local i32 @nlm_fmn_receive(i32, i32*, i32*, i32*, %struct.nlm_fmn_msg*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @nlm_cop2_disable_irqrestore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
