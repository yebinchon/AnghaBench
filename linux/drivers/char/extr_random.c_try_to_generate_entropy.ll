; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_try_to_generate_entropy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_try_to_generate_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, %struct.timer_list }
%struct.timer_list = type { i32 }

@entropy_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@input_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @try_to_generate_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_to_generate_entropy() #0 {
  %1 = alloca %struct.anon, align 8
  %2 = call i8* (...) @random_get_entropy()
  %3 = ptrtoint i8* %2 to i64
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  store i64 %3, i64* %4, align 8
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i8* (...) @random_get_entropy()
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %44

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %13 = load i32, i32* @entropy_timer, align 4
  %14 = call i32 @timer_setup_on_stack(%struct.timer_list* %12, i32 %13, i32 0)
  br label %15

15:                                               ; preds = %28, %11
  %16 = call i32 (...) @crng_ready()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %21 = call i32 @timer_pending(%struct.timer_list* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @mod_timer(%struct.timer_list* %24, i64 %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %30 = bitcast i64* %29 to i8**
  %31 = call i32 @mix_pool_bytes(i32* @input_pool, i8** %30, i32 8)
  %32 = call i32 (...) @schedule()
  %33 = call i8* (...) @random_get_entropy()
  %34 = ptrtoint i8* %33 to i64
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %15

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %38 = call i32 @del_timer_sync(%struct.timer_list* %37)
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %40 = call i32 @destroy_timer_on_stack(%struct.timer_list* %39)
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %42 = bitcast i64* %41 to i8**
  %43 = call i32 @mix_pool_bytes(i32* @input_pool, i8** %42, i32 8)
  br label %44

44:                                               ; preds = %36, %10
  ret void
}

declare dso_local i8* @random_get_entropy(...) #1

declare dso_local i32 @timer_setup_on_stack(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @crng_ready(...) #1

declare dso_local i32 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

declare dso_local i32 @mix_pool_bytes(i32*, i8**, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

declare dso_local i32 @destroy_timer_on_stack(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
