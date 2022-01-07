; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-mt.c_mips_mt_set_cpuoptions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-mt.c_mips_mt_set_cpuoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mt_opt_rpsctl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"34K return prediction stack override set to %d.\0A\00", align 1
@mt_opt_nblsu = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"34K ALU/LSU sync override set to %d.\0A\00", align 1
@mt_opt_forceconfig7 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"CP0.Config7 forced to 0x%08x.\0A\00", align 1
@mt_opt_config7 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Config7: 0x%08x\0A\00", align 1
@itc_base = common dso_local global i32 0, align 4
@Index_Load_Tag_D = common dso_local global i32 0, align 4
@Index_Store_Tag_D = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Mapped %ld ITC cells starting at 0x%08x\0A\00", align 1
@INDEX_0 = common dso_local global i32 0, align 4
@INDEX_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_mt_set_cpuoptions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @read_c0_config7()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i64, i64* @mt_opt_rpsctl, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load i64, i64* @mt_opt_rpsctl, align 8
  %11 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* @mt_opt_rpsctl, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %15, 4
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, -5
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i64, i64* @mt_opt_nblsu, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i64, i64* @mt_opt_nblsu, align 8
  %26 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* @mt_opt_nblsu, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, 32
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, -33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i64, i64* @mt_opt_forceconfig7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @mt_opt_config7, align 4
  %41 = zext i32 %40 to i64
  %42 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @mt_opt_config7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @write_c0_config7(i32 %49)
  %51 = call i32 (...) @ehb()
  %52 = call i32 (...) @read_c0_config7()
  %53 = zext i32 %52 to i64
  %54 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i32, i32* @itc_base, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %55
  %59 = call i64 (...) @read_c0_ecc()
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = or i64 %60, 67108864
  %62 = call i32 @write_c0_ecc(i64 %61)
  %63 = call i32 (...) @ehb()
  %64 = load i32, i32* @Index_Load_Tag_D, align 4
  %65 = call i32 @cache_op(i32 %64, i32 -2147483640)
  %66 = call i32 (...) @ehb()
  %67 = call i64 (...) @read_c0_dtaglo()
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = and i64 %68, 4294836224
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = or i64 %70, 3072
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @write_c0_dtaglo(i32 %73)
  %75 = call i32 (...) @ehb()
  %76 = load i32, i32* @Index_Store_Tag_D, align 4
  %77 = call i32 @cache_op(i32 %76, i32 -2147483640)
  %78 = load i32, i32* @itc_base, align 4
  %79 = and i32 %78, -1024
  %80 = or i32 %79, 1
  %81 = call i32 @write_c0_dtaglo(i32 %80)
  %82 = call i32 (...) @ehb()
  %83 = load i32, i32* @Index_Store_Tag_D, align 4
  %84 = call i32 @cache_op(i32 %83, i32 -2147483648)
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @write_c0_ecc(i64 %85)
  %87 = call i32 (...) @ehb()
  %88 = load i64, i64* %4, align 8
  %89 = and i64 %88, 2145386496
  %90 = lshr i64 %89, 20
  %91 = load i32, i32* @itc_base, align 4
  %92 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @read_c0_config7(...) #1

declare dso_local i32 @printk(i8*, i64, ...) #1

declare dso_local i32 @write_c0_config7(i32) #1

declare dso_local i32 @ehb(...) #1

declare dso_local i64 @read_c0_ecc(...) #1

declare dso_local i32 @write_c0_ecc(i64) #1

declare dso_local i32 @cache_op(i32, i32) #1

declare dso_local i64 @read_c0_dtaglo(...) #1

declare dso_local i32 @write_c0_dtaglo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1287}
