; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev4.c_ev4_reg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev4.c_ev4_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_register_config = type { i64, i64, i64, i64, i64 }
%struct.op_counter_config = type { i32, i64, i64 }
%struct.op_system_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_register_config*, %struct.op_counter_config*, %struct.op_system_config*)* @ev4_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev4_reg_setup(%struct.op_register_config* %0, %struct.op_counter_config* %1, %struct.op_system_config* %2) #0 {
  %4 = alloca %struct.op_register_config*, align 8
  %5 = alloca %struct.op_counter_config*, align 8
  %6 = alloca %struct.op_system_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.op_register_config* %0, %struct.op_register_config** %4, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %5, align 8
  store %struct.op_system_config* %2, %struct.op_system_config** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %11 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %10, i64 0
  %12 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %17 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %16, i64 0
  %18 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %20, %15 ], [ 3584, %21 ]
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %28 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %27, i64 1
  %29 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %34 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %33, i64 1
  %35 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 16
  %38 = shl i32 %37, 32
  %39 = sext i32 %38 to i64
  br label %41

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i64 [ %39, %32 ], [ 30064771072, %40 ]
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %46 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %45, i64 0
  %47 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ule i64 %49, 4096
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i64 4096, i64* %8, align 8
  store i64 1, i64* %9, align 8
  br label %53

52:                                               ; preds = %41
  store i64 65536, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %56 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %55, i64 0
  %57 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %59 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %58, i64 0
  %60 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %63, %53
  %67 = phi i1 [ false, %53 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = shl i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %7, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %74 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %73, i64 1
  %75 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ule i64 %77, 256
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i64 256, i64* %8, align 8
  store i64 1, i64* %9, align 8
  br label %81

80:                                               ; preds = %66
  store i64 4096, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %84 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %83, i64 1
  %85 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %87 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %86, i64 1
  %88 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %91, %81
  %95 = phi i1 [ false, %81 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %7, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %102 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %104 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %106 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %108 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %110 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
