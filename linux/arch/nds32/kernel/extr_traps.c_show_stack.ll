; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@CONFIG_FRAME_POINTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = icmp ne %struct.task_struct* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* @CONFIG_FRAME_POINTER, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %17 = icmp ne %struct.task_struct* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %5, align 8
  br label %27

25:                                               ; preds = %14
  %26 = call i64* asm sideeffect "\09ori\09$0, $$sp, #0\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64* %26, i64** %5, align 8
  br label %27

27:                                               ; preds = %25, %18
  br label %42

28:                                               ; preds = %10
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %31 = icmp ne %struct.task_struct* %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64* %38, i64** %5, align 8
  br label %41

39:                                               ; preds = %28
  %40 = call i64* asm sideeffect "\09ori\09$0, $$fp, #0\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i64* %40, i64** %5, align 8
  br label %41

41:                                               ; preds = %39, %32
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = call i32 @__dump(%struct.task_struct* %43, i64* %44)
  %46 = call i32 (...) @barrier()
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @__dump(%struct.task_struct*, i64*) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 773}
!3 = !{i32 937}
