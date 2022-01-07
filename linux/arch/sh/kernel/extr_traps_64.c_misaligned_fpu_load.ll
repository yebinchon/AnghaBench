; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8** }
%struct.pt_regs = type { i64, i32 }

@last_task_used_math = common dso_local global %struct.TYPE_10__* null, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@SR_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unexpected width_shift %d in misaligned_fpu_load, PC=%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Misaligned FPU load inside kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32, i32)* @misaligned_fpu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misaligned_fpu_load(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
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
  %43 = load i64, i64* %14, align 8
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 1, %47
  %49 = call i64 @__copy_user(i64* %15, i8* %46, i32 %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %147

52:                                               ; preds = %42
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @last_task_used_math, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %55 = icmp eq %struct.TYPE_10__* %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = call i32 (...) @enable_fpu()
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %59 = call i32 @save_fpu(%struct.TYPE_10__* %58)
  %60 = call i32 (...) @disable_fpu()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @last_task_used_math, align 8
  %61 = load i32, i32* @SR_FD, align 4
  %62 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %56, %52
  %67 = bitcast i64* %15 to i8**
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %16, align 8
  %69 = bitcast i64* %15 to i8**
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %17, align 8
  %72 = load i32, i32* %10, align 4
  switch i32 %72, label %137 [
    i32 2, label %73
    i32 3, label %85
  ]

73:                                               ; preds = %66
  %74 = load i8*, i8** %16, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %74, i8** %84, align 8
  br label %143

85:                                               ; preds = %66
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load i8*, i8** %16, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %89, i8** %99, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  store i8* %100, i8** %111, align 8
  br label %136

112:                                              ; preds = %85
  %113 = load i8*, i8** %16, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %113, i8** %123, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  store i8* %124, i8** %135, align 8
  br label %136

136:                                              ; preds = %112, %88
  br label %143

137:                                              ; preds = %66
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %140 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %138, i64 %141)
  br label %143

143:                                              ; preds = %137, %136, %73
  store i32 0, i32* %6, align 4
  br label %147

144:                                              ; preds = %27
  %145 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %146 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.pt_regs* %145, i32 0)
  store i32 -1, i32* %6, align 4
  br label %147

147:                                              ; preds = %144, %143, %51, %41, %25
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @generate_and_check_address(%struct.pt_regs*, i32, i32, i32, i64*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @access_ok(i64, i64) #1

declare dso_local i64 @__copy_user(i64*, i8*, i32) #1

declare dso_local i32 @enable_fpu(...) #1

declare dso_local i32 @save_fpu(%struct.TYPE_10__*) #1

declare dso_local i32 @disable_fpu(...) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
