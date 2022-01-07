; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_gpr_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_gpr_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTAS_FADUMP_GPR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GPR\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtas_fadump_gpr_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_fadump_gpr_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @RTAS_FADUMP_GPR_MASK, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @fadump_str_to_u64(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load i32, i32* @RTAS_FADUMP_GPR_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 24
  store i32 %16, i32* %2, align 4
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %17, align 1
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 1
  store i8 %20, i8* %21, align 1
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %28 = call i64 @kstrtoint(i8* %27, i32 10, i32* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %10
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 31
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @fadump_str_to_u64(i8*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
