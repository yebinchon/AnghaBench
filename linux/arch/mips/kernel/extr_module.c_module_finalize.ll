; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_module_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_module_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.module = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"__dbe_table\00", align 1
@dbe_lock = common dso_local global i32 0, align 4
@dbe_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_finalize(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = bitcast %struct.TYPE_8__* %9 to i8*
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %10, i64 %18
  store i8* %19, i8** %8, align 8
  %20 = load %struct.module*, %struct.module** %6, align 8
  %21 = call i32 @jump_label_apply_nops(%struct.module* %20)
  %22 = load %struct.module*, %struct.module** %6, align 8
  %23 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %7, align 8
  br label %27

27:                                               ; preds = %72, %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %33
  %35 = icmp ult %struct.TYPE_7__* %28, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %72

46:                                               ; preds = %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.module*, %struct.module** %6, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %57, i64 %61
  %63 = load %struct.module*, %struct.module** %6, align 8
  %64 = getelementptr inbounds %struct.module, %struct.module* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = call i32 @spin_lock_irq(i32* @dbe_lock)
  %67 = load %struct.module*, %struct.module** %6, align 8
  %68 = getelementptr inbounds %struct.module, %struct.module* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @list_add(i32* %69, i32* @dbe_list)
  %71 = call i32 @spin_unlock_irq(i32* @dbe_lock)
  br label %72

72:                                               ; preds = %46, %45
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 1
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %7, align 8
  br label %27

75:                                               ; preds = %27
  ret i32 0
}

declare dso_local i32 @jump_label_apply_nops(%struct.module*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
