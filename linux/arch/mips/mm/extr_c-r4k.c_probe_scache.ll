; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_probe_scache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_probe_scache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@CONF_SC = common dso_local global i32 0, align 4
@_stext = common dso_local global i32 0, align 4
@Index_Store_Tag_I = common dso_local global i32 0, align 4
@Index_Store_Tag_D = common dso_local global i32 0, align 4
@Index_Store_Tag_SD = common dso_local global i32 0, align 4
@Index_Load_Tag_SD = common dso_local global i32 0, align 4
@scache_size = common dso_local global i64 0, align 8
@R4K_CONF_SB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @probe_scache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_scache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpuinfo_mips*, align 8
  %9 = alloca i64*, align 8
  %10 = call i32 (...) @read_c0_config()
  store i32 %10, i32* %7, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @CONF_SC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %92

16:                                               ; preds = %0
  store i64 ptrtoint (i32* @_stext to i64), i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -4194304
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 4194304
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  store i64 65536, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %35, %16
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = inttoptr i64 %29 to i64*
  store i64* %30, i64** %9, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  call void asm sideeffect "nop", "r,~{dirflag},~{fpsr},~{flags}"(i64 %32) #2, !srcloc !2
  %33 = load i64, i64* %6, align 8
  %34 = shl i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %3, align 8
  br label %24

39:                                               ; preds = %24
  %40 = call i32 @write_c0_taglo(i32 0)
  %41 = call i32 @write_c0_taghi(i32 0)
  call void asm sideeffect "nop; nop; nop; nop;", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %42 = load i32, i32* @Index_Store_Tag_I, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @cache_op(i32 %42, i64 %43)
  %45 = load i32, i32* @Index_Store_Tag_D, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @cache_op(i32 %45, i64 %46)
  %48 = load i32, i32* @Index_Store_Tag_SD, align 4
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @cache_op(i32 %48, i64 %49)
  store i64 131072, i64* %6, align 8
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 131072
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %67, %39
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i32, i32* @Index_Load_Tag_SD, align 4
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @cache_op(i32 %58, i64 %59)
  call void asm sideeffect "nop; nop; nop; nop;", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %61 = call i32 (...) @read_c0_taglo()
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %71

64:                                               ; preds = %57
  %65 = load i64, i64* %6, align 8
  %66 = shl i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %68, %69
  store i64 %70, i64* %3, align 8
  br label %53

71:                                               ; preds = %63, %53
  %72 = load i64, i64* %2, align 8
  %73 = call i32 @local_irq_restore(i64 %72)
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %3, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  store i64 %77, i64* @scache_size, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @R4K_CONF_SB, align 4
  %80 = and i32 %78, %79
  %81 = lshr i32 %80, 22
  %82 = shl i32 16, %81
  %83 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %8, align 8
  %84 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %8, align 8
  %87 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %8, align 8
  %90 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  store i32 1, i32* %1, align 4
  br label %92

92:                                               ; preds = %71, %15
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @write_c0_taglo(i32) #1

declare dso_local i32 @write_c0_taghi(i32) #1

declare dso_local i32 @cache_op(i32, i64) #1

declare dso_local i32 @read_c0_taglo(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1253}
!3 = !{i32 1355}
!4 = !{i32 1645}
