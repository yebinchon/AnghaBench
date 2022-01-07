; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_resize_guest_vtlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_resize_guest_vtlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_guest_has_conf1 = common dso_local global i64 0, align 8
@MIPS_CONF1_TLBS = common dso_local global i32 0, align 4
@MIPS_CONF1_TLBS_SHIFT = common dso_local global i32 0, align 4
@cpu_guest_has_conf4 = common dso_local global i64 0, align 8
@cpu_has_mips_r6 = common dso_local global i64 0, align 8
@MIPS_CONF4_MMUEXTDEF = common dso_local global i32 0, align 4
@MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT = common dso_local global i32 0, align 4
@MIPS_CONF4_VTLBSIZEEXT = common dso_local global i32 0, align 4
@MIPS_CONF1_TLBS_SIZE = common dso_local global i32 0, align 4
@MIPS_CONF4_VTLBSIZEEXT_SHIFT = common dso_local global i32 0, align 4
@MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT = common dso_local global i32 0, align 4
@MIPS_CONF4_MMUSIZEEXT = common dso_local global i32 0, align 4
@MIPS_CONF4_MMUSIZEEXT_SHIFT = common dso_local global i32 0, align 4
@MIPSR6_WIRED_LIMIT = common dso_local global i32 0, align 4
@MIPSR6_WIRED_LIMIT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kvm_vz_resize_guest_vtlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_resize_guest_vtlb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* @cpu_guest_has_conf1, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @MIPS_CONF1_TLBS, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sub i32 %10, 1
  %12 = load i32, i32* @MIPS_CONF1_TLBS_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = call i32 @change_gc0_config1(i32 %9, i32 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load i64, i64* @cpu_guest_has_conf4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = call i32 (...) @read_gc0_config4()
  store i32 %19, i32* %3, align 4
  %20 = load i64, i64* @cpu_has_mips_r6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MIPS_CONF4_MMUEXTDEF, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22, %18
  %29 = load i32, i32* @MIPS_CONF4_VTLBSIZEEXT, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sub i32 %33, 1
  %35 = load i32, i32* @MIPS_CONF1_TLBS_SIZE, align 4
  %36 = lshr i32 %34, %35
  %37 = load i32, i32* @MIPS_CONF4_VTLBSIZEEXT_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %61

41:                                               ; preds = %22
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @MIPS_CONF4_MMUEXTDEF, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i32, i32* @MIPS_CONF4_MMUSIZEEXT, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %2, align 4
  %53 = sub i32 %52, 1
  %54 = load i32, i32* @MIPS_CONF1_TLBS_SIZE, align 4
  %55 = lshr i32 %53, %54
  %56 = load i32, i32* @MIPS_CONF4_MMUSIZEEXT_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %41
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @write_gc0_config4(i32 %62)
  br label %64

64:                                               ; preds = %61, %15
  %65 = load i64, i64* @cpu_has_mips_r6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = call i32 (...) @read_c0_wired()
  %69 = load i32, i32* @MIPSR6_WIRED_LIMIT, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @MIPSR6_WIRED_LIMIT_SHIFT, align 4
  %72 = lshr i32 %70, %71
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %2, align 4
  %74 = sub i32 %73, 1
  %75 = load i32, i32* %5, align 4
  %76 = icmp ule i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @MIPSR6_WIRED_LIMIT_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = call i32 @write_gc0_wired(i32 %81)
  br label %83

83:                                               ; preds = %78, %64
  %84 = call i32 (...) @back_to_back_c0_hazard()
  %85 = load i64, i64* @cpu_guest_has_conf1, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = call i32 (...) @read_gc0_config1()
  %89 = load i32, i32* @MIPS_CONF1_TLBS, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @MIPS_CONF1_TLBS_SHIFT, align 4
  %92 = lshr i32 %90, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %133

96:                                               ; preds = %93
  %97 = load i64, i64* @cpu_has_mips_r6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @MIPS_CONF4_MMUEXTDEF, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @MIPS_CONF4_VTLBSIZEEXT, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @MIPS_CONF4_VTLBSIZEEXT_SHIFT, align 4
  %110 = lshr i32 %108, %109
  %111 = load i32, i32* @MIPS_CONF1_TLBS_SIZE, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %132

115:                                              ; preds = %99
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @MIPS_CONF4_MMUEXTDEF, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @MIPS_CONF4_MMUSIZEEXT, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @MIPS_CONF4_MMUSIZEEXT_SHIFT, align 4
  %126 = lshr i32 %124, %125
  %127 = load i32, i32* @MIPS_CONF1_TLBS_SIZE, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %121, %115
  br label %132

132:                                              ; preds = %131, %105
  br label %133

133:                                              ; preds = %132, %93
  %134 = load i32, i32* %4, align 4
  %135 = add i32 %134, 1
  ret i32 %135
}

declare dso_local i32 @change_gc0_config1(i32, i32) #1

declare dso_local i32 @read_gc0_config4(...) #1

declare dso_local i32 @write_gc0_config4(i32) #1

declare dso_local i32 @read_c0_wired(...) #1

declare dso_local i32 @write_gc0_wired(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @read_gc0_config1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
