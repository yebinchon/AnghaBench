; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_check_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_check_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_reg = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"reg table %p out of order (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coproc_reg*, i32)* @check_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reg_table(%struct.coproc_reg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coproc_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.coproc_reg* %0, %struct.coproc_reg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %12, i64 %15
  %17 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %17, i64 %19
  %21 = call i64 @cmp_reg(%struct.coproc_reg* %16, %struct.coproc_reg* %20)
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %25, 1
  %27 = call i32 @kvm_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.coproc_reg* %24, i32 %26)
  store i32 1, i32* %3, align 4
  br label %33

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7

32:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @cmp_reg(%struct.coproc_reg*, %struct.coproc_reg*) #1

declare dso_local i32 @kvm_err(i8*, %struct.coproc_reg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
