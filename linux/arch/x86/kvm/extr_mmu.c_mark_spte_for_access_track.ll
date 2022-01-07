; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mark_spte_for_access_track.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mark_spte_for_access_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shadow_accessed_mask = common dso_local global i32 0, align 4
@PT_WRITABLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"kvm: Writable SPTE is not locklessly dirty-trackable\0A\00", align 1
@shadow_acc_track_saved_bits_mask = common dso_local global i32 0, align 4
@shadow_acc_track_saved_bits_shift = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"kvm: Access Tracking saved bit locations are not zero\0A\00", align 1
@shadow_acc_track_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mark_spte_for_access_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_spte_for_access_track(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @spte_ad_enabled(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @shadow_accessed_mask, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @is_access_track_spte(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PT_WRITABLE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @spte_can_locklessly_be_made_writable(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ONCE(i32 %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @shadow_acc_track_saved_bits_mask, align 4
  %34 = load i32, i32* @shadow_acc_track_saved_bits_shift, align 4
  %35 = shl i32 %33, %34
  %36 = and i32 %32, %35
  %37 = call i32 @WARN_ONCE(i32 %36, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @shadow_acc_track_saved_bits_mask, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @shadow_acc_track_saved_bits_shift, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @shadow_acc_track_mask, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %28, %16, %7
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @spte_ad_enabled(i32) #1

declare dso_local i64 @is_access_track_spte(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @spte_can_locklessly_be_made_writable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
