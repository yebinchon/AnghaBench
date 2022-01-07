; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_pm.c_db1x_pm_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_pm.c_db1x_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCSR_WHOAMI = common dso_local global i32 0, align 4
@BCSR_WHOAMI_DB1200 = common dso_local global i64 0, align 8
@BCSR_MASKSET = common dso_local global i32 0, align 4
@BCSR_SYSTEM = common dso_local global i32 0, align 4
@BCSR_STATUS = common dso_local global i32 0, align 4
@BCSR_HEXCLEAR = common dso_local global i32 0, align 4
@AU1000_SYS_WAKEMSK = common dso_local global i32 0, align 4
@AU1000_SYS_WAKESRC = common dso_local global i32 0, align 4
@db1x_pm_wakemsk = common dso_local global i64 0, align 8
@AU1000_SYS_CNTRCTRL = common dso_local global i32 0, align 4
@SYS_CNTRL_M20 = common dso_local global i32 0, align 4
@AU1000_SYS_TOYREAD = common dso_local global i32 0, align 4
@db1x_pm_sleep_secs = common dso_local global i64 0, align 8
@AU1000_SYS_TOYMATCH2 = common dso_local global i32 0, align 4
@BCSR_INTCLR = common dso_local global i32 0, align 4
@BCSR_MASKCLR = common dso_local global i32 0, align 4
@BCSR_INTSTAT = common dso_local global i32 0, align 4
@BCSR_INTSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @db1x_pm_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1x_pm_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i16], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @BCSR_WHOAMI, align 4
  %8 = call i8* @bcsr_read(i32 %7)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @BCSR_WHOAMI_BOARD(i32 %10)
  %12 = load i64, i64* @BCSR_WHOAMI_DB1200, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @BCSR_MASKSET, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @BCSR_SYSTEM, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @BCSR_STATUS, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %35, %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call i8* @bcsr_read(i32 %29)
  %31 = ptrtoint i8* %30 to i16
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i16], [16 x i16]* %3, i64 0, i64 %33
  store i16 %31, i16* %34, align 2
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load i32, i32* @BCSR_HEXCLEAR, align 4
  %40 = call i32 @bcsr_write(i32 %39, i16 zeroext 3)
  %41 = call i32 (...) @alchemy_gpio1_input_enable()
  %42 = load i32, i32* @AU1000_SYS_WAKEMSK, align 4
  %43 = call i32 @alchemy_wrsys(i64 0, i32 %42)
  %44 = load i32, i32* @AU1000_SYS_WAKESRC, align 4
  %45 = call i32 @alchemy_wrsys(i64 0, i32 %44)
  %46 = load i64, i64* @db1x_pm_wakemsk, align 8
  %47 = load i32, i32* @AU1000_SYS_WAKEMSK, align 4
  %48 = call i32 @alchemy_wrsys(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %55, %38
  %50 = load i32, i32* @AU1000_SYS_CNTRCTRL, align 4
  %51 = call i32 @alchemy_rdsys(i32 %50)
  %52 = load i32, i32* @SYS_CNTRL_M20, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %49

56:                                               ; preds = %49
  %57 = load i32, i32* @AU1000_SYS_TOYREAD, align 4
  %58 = call i32 @alchemy_rdsys(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @db1x_pm_sleep_secs, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* @AU1000_SYS_TOYMATCH2, align 4
  %63 = call i32 @alchemy_wrsys(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %70, %56
  %65 = load i32, i32* @AU1000_SYS_CNTRCTRL, align 4
  %66 = call i32 @alchemy_rdsys(i32 %65)
  %67 = load i32, i32* @SYS_CNTRL_M20, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %64

71:                                               ; preds = %64
  %72 = call i32 (...) @au_sleep()
  %73 = load i32, i32* @BCSR_STATUS, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %85, %71
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @BCSR_SYSTEM, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [16 x i16], [16 x i16]* %3, i64 0, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = call i32 @bcsr_write(i32 %79, i16 zeroext %83)
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %74

88:                                               ; preds = %74
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load i32, i32* @BCSR_INTCLR, align 4
  %93 = call i32 @bcsr_write(i32 %92, i16 zeroext -1)
  %94 = load i32, i32* @BCSR_MASKCLR, align 4
  %95 = call i32 @bcsr_write(i32 %94, i16 zeroext -1)
  %96 = load i32, i32* @BCSR_INTSTAT, align 4
  %97 = call i32 @bcsr_write(i32 %96, i16 zeroext -1)
  %98 = load i64, i64* @BCSR_INTSET, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* @BCSR_INTSET, align 8
  %101 = getelementptr inbounds [16 x i16], [16 x i16]* %3, i64 0, i64 %100
  %102 = load i16, i16* %101, align 2
  %103 = call i32 @bcsr_write(i32 %99, i16 zeroext %102)
  %104 = load i32, i32* @BCSR_MASKSET, align 4
  %105 = load i32, i32* @BCSR_MASKSET, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [16 x i16], [16 x i16]* %3, i64 0, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = call i32 @bcsr_write(i32 %104, i16 zeroext %108)
  br label %110

110:                                              ; preds = %91, %88
  %111 = load i32, i32* @BCSR_HEXCLEAR, align 4
  %112 = call i32 @bcsr_write(i32 %111, i16 zeroext 0)
  ret i32 0
}

declare dso_local i8* @bcsr_read(i32) #1

declare dso_local i64 @BCSR_WHOAMI_BOARD(i32) #1

declare dso_local i32 @bcsr_write(i32, i16 zeroext) #1

declare dso_local i32 @alchemy_gpio1_input_enable(...) #1

declare dso_local i32 @alchemy_wrsys(i64, i32) #1

declare dso_local i32 @alchemy_rdsys(i32) #1

declare dso_local i32 @au_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1425}
!3 = !{i32 1614}
