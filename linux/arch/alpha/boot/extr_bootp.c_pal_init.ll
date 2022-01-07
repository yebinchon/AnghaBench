; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/boot/extr_bootp.c_pal_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/boot/extr_bootp.c_pal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.percpu_struct = type { i64, i64* }
%struct.pcb_struct = type { i32 }

@pcb_va = common dso_local global %struct.TYPE_5__* null, align 8
@L1 = common dso_local global i32* null, align 8
@VPTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Switching to OSF PAL-code .. \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"failed, code %ld\0A\00", align 1
@INIT_HWRPB = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Ok (rev %lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pal_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.percpu_struct*, align 8
  %4 = alloca %struct.pcb_struct*, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** @L1, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 32
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @VPTB, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %29 = call %struct.pcb_struct* @find_pa(i32 %27, %struct.TYPE_5__* %28)
  store %struct.pcb_struct* %29, %struct.pcb_struct** %4, align 8
  %30 = call i32 (i8*, ...) @srm_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcb_va, align 8
  %32 = load %struct.pcb_struct*, %struct.pcb_struct** %4, align 8
  %33 = load i32, i32* @VPTB, align 4
  %34 = call i64 @switch_to_osf_pal(i32 2, %struct.TYPE_5__* %31, %struct.pcb_struct* %32, i32 %33)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %0
  %38 = load i64, i64* %1, align 8
  %39 = call i32 (i8*, ...) @srm_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = call i32 (...) @__halt()
  br label %41

41:                                               ; preds = %37, %0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @INIT_HWRPB, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @INIT_HWRPB, align 8
  %46 = ptrtoint %struct.TYPE_6__* %45 to i64
  %47 = add i64 %44, %46
  %48 = inttoptr i64 %47 to %struct.percpu_struct*
  store %struct.percpu_struct* %48, %struct.percpu_struct** %3, align 8
  %49 = load %struct.percpu_struct*, %struct.percpu_struct** %3, align 8
  %50 = getelementptr inbounds %struct.percpu_struct, %struct.percpu_struct* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.percpu_struct*, %struct.percpu_struct** %3, align 8
  %55 = getelementptr inbounds %struct.percpu_struct, %struct.percpu_struct* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i64 %53, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = call i32 (i8*, ...) @srm_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = call i32 (...) @tbia()
  ret void
}

declare dso_local %struct.pcb_struct* @find_pa(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @srm_printk(i8*, ...) #1

declare dso_local i64 @switch_to_osf_pal(i32, %struct.TYPE_5__*, %struct.pcb_struct*, i32) #1

declare dso_local i32 @__halt(...) #1

declare dso_local i32 @tbia(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
