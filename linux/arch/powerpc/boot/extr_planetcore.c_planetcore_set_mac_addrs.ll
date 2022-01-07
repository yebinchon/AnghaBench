; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_planetcore.c_planetcore_set_mac_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_planetcore.c_planetcore_set_mac_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLANETCORE_KEY_MAC_ADDR = common dso_local global i32 0, align 4
@mac_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @planetcore_set_mac_addrs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x [6 x i32]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @PLANETCORE_KEY_MAC_ADDR, align 4
  %10 = call i32 @planetcore_get_hex(i8* %8, i32 %9, i32* %4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %53

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %50, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, -12582913
  %20 = load i32*, i32** @mac_table, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %19, %24
  store i32 %25, i32* %7, align 4
  store i32 5, i32* %6, align 4
  br label %26

26:                                               ; preds = %40, %17
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %3, i64 0, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %34, i64 0, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %3, i64 0, i64 %46
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %47, i64 0, i64 0
  %49 = call i32 @dt_fixup_mac_address(i32 %44, i32* %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %14

53:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @planetcore_get_hex(i8*, i32, i32*) #1

declare dso_local i32 @dt_fixup_mac_address(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
