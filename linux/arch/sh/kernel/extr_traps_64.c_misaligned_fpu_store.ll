; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.pt_regs = type { i64, i32 }

@last_task_used_math = common dso_local global %struct.TYPE_10__* null, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@SR_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Unexpected width_shift %d in misaligned_fpu_store, PC=%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Misaligned FPU load inside kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32, i32)* @misaligned_fpu_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misaligned_fpu_store(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @generate_and_check_address(%struct.pt_regs* %18, i32 %19, i32 %20, i32 %21, i64* %14)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %147

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 63
  store i32 %30, i32* %13, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %32 = call i64 @user_mode(%struct.pt_regs* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %144

34:                                               ; preds = %27
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %35 = load i64, i64* %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 1, %37
  %39 = call i32 @access_ok(i64 %35, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %147

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @last_task_used_math, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %45 = icmp eq %struct.TYPE_10__* %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = call i32 (...) @enable_fpu()
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %49 = call i32 @save_fpu(%struct.TYPE_10__* %48)
  %50 = call i32 (...) @disable_fpu()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @last_task_used_math, align 8
  %51 = load i32, i32* @SR_FD, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %46, %42
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %122 [
    i32 2, label %58
    i32 3, label %70
  ]

58:                                               ; preds = %56
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %16, align 4
  br label %128

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %17, align 4
  br label %121

97:                                               ; preds = %70
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %16, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %97, %73
  br label %128

122:                                              ; preds = %56
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %125 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %123, i64 %126)
  br label %128

128:                                              ; preds = %122, %121, %58
  %129 = load i32, i32* %16, align 4
  %130 = bitcast i64* %15 to i32*
  store i32 %129, i32* %130, align 8
  %131 = load i32, i32* %17, align 4
  %132 = bitcast i64* %15 to i32*
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* %14, align 8
  %135 = trunc i64 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = load i32, i32* %10, align 4
  %139 = shl i32 1, %138
  %140 = call i64 @__copy_user(i8* %137, i64* %15, i32 %139)
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  store i32 -1, i32* %6, align 4
  br label %147

143:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %147

144:                                              ; preds = %27
  %145 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %146 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.pt_regs* %145, i32 0)
  store i32 -1, i32* %6, align 4
  br label %147

147:                                              ; preds = %144, %143, %142, %41, %25
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @generate_and_check_address(%struct.pt_regs*, i32, i32, i32, i64*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @access_ok(i64, i64) #1

declare dso_local i32 @enable_fpu(...) #1

declare dso_local i32 @save_fpu(%struct.TYPE_10__*) #1

declare dso_local i32 @disable_fpu(...) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i64 @__copy_user(i8*, i64*, i32) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
