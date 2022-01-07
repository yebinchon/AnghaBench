; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c_poke_int3_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c_poke_int3_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.text_poke_loc* }
%struct.text_poke_loc = type { i8*, i64 }
%struct.pt_regs = type { i64 }

@bp_patching = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@patch_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poke_int3_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.text_poke_loc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i8 -52, i8* %5, align 1
  %7 = call i32 (...) @smp_rmb()
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 0), align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = call i64 @user_mode(%struct.pt_regs* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %56

20:                                               ; preds = %15
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr i8, i8* %24, i64 -1
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 0), align 8
  %27 = icmp sgt i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.text_poke_loc*, %struct.text_poke_loc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 1), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 0), align 8
  %35 = load i32, i32* @patch_cmp, align 4
  %36 = call %struct.text_poke_loc* @bsearch(i8* %32, %struct.text_poke_loc* %33, i32 %34, i32 16, i32 %35)
  store %struct.text_poke_loc* %36, %struct.text_poke_loc** %4, align 8
  %37 = load %struct.text_poke_loc*, %struct.text_poke_loc** %4, align 8
  %38 = icmp ne %struct.text_poke_loc* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %56

40:                                               ; preds = %31
  br label %50

41:                                               ; preds = %20
  %42 = load %struct.text_poke_loc*, %struct.text_poke_loc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 1), align 8
  store %struct.text_poke_loc* %42, %struct.text_poke_loc** %4, align 8
  %43 = load %struct.text_poke_loc*, %struct.text_poke_loc** %4, align 8
  %44 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.text_poke_loc*, %struct.text_poke_loc** %4, align 8
  %52 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %48, %39, %19, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.text_poke_loc* @bsearch(i8*, %struct.text_poke_loc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
