; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_call_rtas_display_status.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_call_rtas_display_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@rtas = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @call_rtas_display_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_rtas_display_status(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rtas, i32 0, i32 1), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %13

7:                                                ; preds = %1
  %8 = call i64 (...) @lock_rtas()
  store i64 %8, i64* %3, align 8
  %9 = load i8, i8* %2, align 1
  %10 = call i32 @rtas_call_unlocked(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rtas, i32 0, i32 0), i32 10, i32 1, i32 1, i32* null, i8 zeroext %9)
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @unlock_rtas(i64 %11)
  br label %13

13:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @lock_rtas(...) #1

declare dso_local i32 @rtas_call_unlocked(i32*, i32, i32, i32, i32*, i8 zeroext) #1

declare dso_local i32 @unlock_rtas(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
