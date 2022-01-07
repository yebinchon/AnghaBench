; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_irq.c_register_external_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_irq.c_register_external_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_int_info = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext_int_hash_lock = common dso_local global i32 0, align 4
@ext_int_hash = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_external_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext_int_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.ext_int_info* @kmalloc(i32 12, i32 %9)
  store %struct.ext_int_info* %10, %struct.ext_int_info** %6, align 8
  %11 = load %struct.ext_int_info*, %struct.ext_int_info** %6, align 8
  %12 = icmp ne %struct.ext_int_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ext_int_info*, %struct.ext_int_info** %6, align 8
  %19 = getelementptr inbounds %struct.ext_int_info, %struct.ext_int_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ext_int_info*, %struct.ext_int_info** %6, align 8
  %22 = getelementptr inbounds %struct.ext_int_info, %struct.ext_int_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ext_hash(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @ext_int_hash_lock, i64 %25)
  %27 = load %struct.ext_int_info*, %struct.ext_int_info** %6, align 8
  %28 = getelementptr inbounds %struct.ext_int_info, %struct.ext_int_info* %27, i32 0, i32 0
  %29 = load i32*, i32** @ext_int_hash, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @hlist_add_head_rcu(i32* %28, i32* %32)
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @ext_int_hash_lock, i64 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ext_int_info* @kmalloc(i32, i32) #1

declare dso_local i32 @ext_hash(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
