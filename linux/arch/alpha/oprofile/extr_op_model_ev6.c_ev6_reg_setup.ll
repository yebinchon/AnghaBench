; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev6.c_ev6_reg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev6.c_ev6_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_register_config = type { i64, i64, i64, i64 }
%struct.op_counter_config = type { i32, i64, i64 }
%struct.op_system_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_register_config*, %struct.op_counter_config*, %struct.op_system_config*)* @ev6_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev6_reg_setup(%struct.op_register_config* %0, %struct.op_counter_config* %1, %struct.op_system_config* %2) #0 {
  %4 = alloca %struct.op_register_config*, align 8
  %5 = alloca %struct.op_counter_config*, align 8
  %6 = alloca %struct.op_system_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.op_register_config* %0, %struct.op_register_config** %4, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %5, align 8
  store %struct.op_system_config* %2, %struct.op_system_config** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %13 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %12, i64 0
  %14 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %19 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %18, i64 0
  %20 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %25 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %24, i64 0
  %26 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = shl i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %23, %17, %3
  %34 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %35 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %34, i64 1
  %36 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %41 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %40, i64 1
  %42 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 2
  %45 = and i32 %44, 15
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %39, %33
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %52 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %54 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %55

55:                                               ; preds = %101, %49
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %56, 2
  br i1 %57, label %58, label %104

58:                                               ; preds = %55
  %59 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %59, i64 %60
  %62 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %11, align 8
  %64 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %64, i64 %65
  %67 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %101

71:                                               ; preds = %58
  %72 = load i64, i64* %11, align 8
  %73 = icmp ugt i64 %72, 1048576
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i64 1048576, i64* %11, align 8
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %77, i64 %78
  %80 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %79, i32 0, i32 1
  store i64 %76, i64* %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 1048576, %81
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 6, i32 28
  %87 = zext i32 %86 to i64
  %88 = shl i64 %82, %87
  %89 = load i64, i64* %8, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 1048576
  br i1 %92, label %93, label %100

93:                                               ; preds = %75
  %94 = load i64, i64* %10, align 8
  %95 = trunc i64 %94 to i32
  %96 = shl i32 1, %95
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %9, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %9, align 8
  br label %100

100:                                              ; preds = %93, %75
  br label %101

101:                                              ; preds = %100, %70
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %55

104:                                              ; preds = %55
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %107 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %110 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
