; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_token_u64.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_token_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@TINY_ATOM_DATA_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Error adding u64: end of buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.opal_dev*, i64)* @add_token_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_token_u64(i32* %0, %struct.opal_dev* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.opal_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.opal_dev* %1, %struct.opal_dev** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @TINY_ATOM_DATA_MASK, align 8
  %11 = xor i64 %10, -1
  %12 = and i64 %9, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @add_token_u8(i32* %15, %struct.opal_dev* %16, i64 %17)
  br label %48

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @fls64(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @DIV_ROUND_UP(i32 %22, i32 8)
  store i64 %23, i64* %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  %28 = call i32 @can_add(i32* %24, %struct.opal_dev* %25, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %48

32:                                               ; preds = %19
  %33 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @add_short_atom_header(%struct.opal_dev* %33, i32 0, i32 0, i64 %34)
  br label %36

36:                                               ; preds = %40, %32
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %7, align 8
  %39 = icmp ne i64 %37, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = mul i64 %44, 8
  %46 = lshr i64 %43, %45
  %47 = call i32 @add_token_u8(i32* %41, %struct.opal_dev* %42, i64 %46)
  br label %36

48:                                               ; preds = %14, %30, %36
  ret void
}

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i64) #1

declare dso_local i32 @fls64(i64) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @can_add(i32*, %struct.opal_dev*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @add_short_atom_header(%struct.opal_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
