; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mm-nds32.c_setup_mm_for_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mm-nds32.c_setup_mm_for_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@init_mm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@USER_PTRS_PER_PGD = common dso_local global i32 0, align 4
@PGDIR_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_mm_for_reboot(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %4, align 8
  br label %26

24:                                               ; preds = %11, %1
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_mm, i32 0, i32 0), align 8
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %24, %18
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @USER_PTRS_PER_PGD, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PGDIR_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PGDIR_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32* @pmd_offset(i32* %39, i32 %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @__pmd(i64 %45)
  %47 = call i32 @set_pmd(i32* %44, i32 %46)
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %27

51:                                               ; preds = %27
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
