; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev5.c_ev5_reset_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev5.c_ev5_reset_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_register_config = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_register_config*, i64)* @ev5_reset_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev5_reset_ctr(%struct.op_register_config* %0, i64 %1) #0 {
  %3 = alloca %struct.op_register_config*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.op_register_config* %0, %struct.op_register_config** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64 281470681743360, i64 1073676288
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i64 [ -281474976710656, %11 ], [ %16, %12 ]
  store i64 %18, i64* %6, align 8
  store i64 768, i64* %7, align 8
  %19 = load %struct.op_register_config*, %struct.op_register_config** %3, align 8
  %20 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.op_register_config*, %struct.op_register_config** %3, align 8
  %23 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %17
  %30 = call i64 @wrperfmon(i32 5, i64 0)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = xor i64 %35, -1
  %37 = and i64 %34, %36
  %38 = and i64 %37, -2
  %39 = or i64 %33, %38
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @wrperfmon(i32 6, i64 %40)
  br label %60

42:                                               ; preds = %17
  %43 = call i64 @wrperfmon(i32 0, i64 -1)
  %44 = call i64 @wrperfmon(i32 5, i64 0)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = and i64 %45, %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = xor i64 %49, -1
  %51 = and i64 %48, %50
  %52 = and i64 %51, -2
  %53 = or i64 %47, %52
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @wrperfmon(i32 6, i64 %54)
  %56 = load %struct.op_register_config*, %struct.op_register_config** %3, align 8
  %57 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @wrperfmon(i32 1, i64 %58)
  br label %60

60:                                               ; preds = %42, %29
  ret void
}

declare dso_local i64 @wrperfmon(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
