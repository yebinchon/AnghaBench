; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___peek_user_per.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___peek_user_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.per_struct_kernel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TIF_SINGLE_STEP = common dso_local global i32 0, align 4
@PER_EVENT_IFETCH = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i64)* @__peek_user_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__peek_user_per(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.per_struct_kernel*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.per_struct_kernel* null, %struct.per_struct_kernel** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %9 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %8, i32 0, i32 8
  %10 = ptrtoint i32* %9 to i64
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @TIF_SINGLE_STEP, align 4
  %14 = call i64 @test_thread_flag(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @PER_EVENT_IFETCH, align 8
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i64 [ %17, %16 ], [ %23, %18 ]
  store i64 %25, i64* %3, align 8
  br label %159

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %29 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %28, i32 0, i32 7
  %30 = ptrtoint i32* %29 to i64
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* @TIF_SINGLE_STEP, align 4
  %34 = call i64 @test_thread_flag(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %43

37:                                               ; preds = %32
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %37, %36
  %44 = phi i64 [ 0, %36 ], [ %42, %37 ]
  store i64 %44, i64* %3, align 8
  br label %159

45:                                               ; preds = %26
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %48 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %47, i32 0, i32 6
  %49 = ptrtoint i32* %48 to i64
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load i32, i32* @TIF_SINGLE_STEP, align 4
  %53 = call i64 @test_thread_flag(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %62

56:                                               ; preds = %51
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  br label %62

62:                                               ; preds = %56, %55
  %63 = phi i64 [ -1, %55 ], [ %61, %56 ]
  store i64 %63, i64* %3, align 8
  br label %159

64:                                               ; preds = %45
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %67 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %66, i32 0, i32 5
  %68 = ptrtoint i32* %67 to i64
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load i32, i32* @TIF_SINGLE_STEP, align 4
  %72 = call i64 @test_thread_flag(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* @BITS_PER_LONG, align 4
  %76 = sub nsw i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = shl i64 1, %77
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %74
  %81 = phi i64 [ %78, %74 ], [ 0, %79 ]
  store i64 %81, i64* %3, align 8
  br label %159

82:                                               ; preds = %64
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %85 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %84, i32 0, i32 4
  %86 = ptrtoint i32* %85 to i64
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %3, align 8
  br label %159

94:                                               ; preds = %82
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %97 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %96, i32 0, i32 3
  %98 = ptrtoint i32* %97 to i64
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %3, align 8
  br label %159

106:                                              ; preds = %94
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %109 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %108, i32 0, i32 2
  %110 = ptrtoint i32* %109 to i64
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %114 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @BITS_PER_LONG, align 4
  %119 = sub nsw i32 %118, 16
  %120 = zext i32 %119 to i64
  %121 = shl i64 %117, %120
  store i64 %121, i64* %3, align 8
  br label %159

122:                                              ; preds = %106
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %125 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %124, i32 0, i32 1
  %126 = ptrtoint i32* %125 to i64
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %130 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %3, align 8
  br label %159

134:                                              ; preds = %122
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %6, align 8
  %137 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %136, i32 0, i32 0
  %138 = ptrtoint i32* %137 to i64
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %142 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @BITS_PER_LONG, align 4
  %147 = sub nsw i32 %146, 8
  %148 = zext i32 %147 to i64
  %149 = shl i64 %145, %148
  store i64 %149, i64* %3, align 8
  br label %159

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157
  store i64 0, i64* %3, align 8
  br label %159

159:                                              ; preds = %158, %140, %128, %112, %100, %88, %80, %62, %43, %24
  %160 = load i64, i64* %3, align 8
  ret i64 %160
}

declare dso_local i64 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
