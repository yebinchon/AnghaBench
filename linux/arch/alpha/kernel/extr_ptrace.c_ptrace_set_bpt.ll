; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_ptrace.c_ptrace_set_bpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_ptrace.c_ptrace_set_bpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i64*, i32*, i32 }

@REG_PC = common dso_local global i32 0, align 4
@DBG_BPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"execing branch\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"execing jump\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"execing normal insn\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"    -> next_pc=%lx\0A\00", align 1
@BREAKINST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_set_bpt(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load i32, i32* @REG_PC, align 4
  %14 = call i8* @get_reg(%struct.task_struct* %12, i32 %13)
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %11, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @read_int(%struct.task_struct* %16, i64 %17, i32* %9)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %160

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  %25 = lshr i32 %24, 26
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp uge i32 %26, 48
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 11
  %31 = ashr i32 %30, 9
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 4
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  store i64 %33, i64* %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %28
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %45, 4
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %49, i64* %57, align 8
  br label %58

58:                                               ; preds = %44, %28
  %59 = load i32, i32* @DBG_BPT, align 4
  %60 = call i32 @DBG(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %96

61:                                               ; preds = %23
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 26
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 31
  store i32 %67, i32* %7, align 4
  %68 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i8* @get_reg(%struct.task_struct* %68, i32 %69)
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %73 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %71, i64* %79, align 8
  %80 = load i32, i32* @DBG_BPT, align 4
  %81 = call i32 @DBG(i32 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %95

82:                                               ; preds = %61
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 4
  %85 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %86 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 %84, i64* %92, align 8
  %93 = load i32, i32* @DBG_BPT, align 4
  %94 = call i32 @DBG(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %82, %64
  br label %96

96:                                               ; preds = %95, %58
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %152, %96
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %155

101:                                              ; preds = %97
  %102 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %103 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %104 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @read_int(%struct.task_struct* %102, i64 %110, i32* %9)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %160

116:                                              ; preds = %101
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %119 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %117, i32* %124, align 4
  %125 = load i32, i32* @DBG_BPT, align 4
  %126 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %127 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @DBG(i32 %125, i8* %134)
  %136 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %137 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %138 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @BREAKINST, align 4
  %146 = call i32 @write_int(%struct.task_struct* %136, i64 %144, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %116
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %160

151:                                              ; preds = %116
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %97

155:                                              ; preds = %97
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %158 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %155, %149, %114, %21
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i8* @get_reg(%struct.task_struct*, i32) #1

declare dso_local i32 @read_int(%struct.task_struct*, i64, i32*) #1

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @write_int(%struct.task_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
