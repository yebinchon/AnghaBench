; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_set_bw.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_set_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWITCH_REG_BW_CNTL0 = common dso_local global i32 0, align 4
@SWITCH_REG_BW_CNTL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"D: ctl0 0x%ux, ctl1 0x%ux\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @adm5120_set_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_set_bw(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = shl i32 %11, 8
  %13 = add nsw i32 %7, %12
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = shl i32 %17, 16
  %19 = add nsw i32 %13, %18
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = shl i32 %23, 24
  %25 = add nsw i32 %19, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  %27 = load i32, i32* @SWITCH_REG_BW_CNTL0, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @sw_write_reg(i32 %27, i64 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i64
  store i64 %33, i64* %3, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load i32, i32* @SWITCH_REG_BW_CNTL1, align 4
  %41 = load i64, i64* %3, align 8
  %42 = or i64 %41, 2147483648
  %43 = call i32 @sw_write_reg(i32 %40, i64 %42)
  br label %49

44:                                               ; preds = %1
  %45 = load i32, i32* @SWITCH_REG_BW_CNTL1, align 4
  %46 = load i64, i64* %3, align 8
  %47 = and i64 %46, -134217729
  %48 = call i32 @sw_write_reg(i32 %45, i64 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @SWITCH_REG_BW_CNTL0, align 4
  %51 = call i32 @sw_read_reg(i32 %50)
  %52 = load i32, i32* @SWITCH_REG_BW_CNTL1, align 4
  %53 = call i32 @sw_read_reg(i32 %52)
  %54 = call i32 @SW_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  ret void
}

declare dso_local i32 @sw_write_reg(i32, i64) #1

declare dso_local i32 @SW_DBG(i8*, i32, i32) #1

declare dso_local i32 @sw_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
