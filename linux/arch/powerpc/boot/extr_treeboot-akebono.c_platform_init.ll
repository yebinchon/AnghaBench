; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-akebono.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-akebono.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@USERDATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"local-mac-addr=\00", align 1
@mac_addr = common dso_local global i32 0, align 4
@loader_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ibm_akebono_memsize = common dso_local global i32 0, align 4
@_end = common dso_local global i64 0, align 8
@ibm_akebono_fixups = common dso_local global i32 0, align 4
@platform_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ibm44x_dbcr_reset = common dso_local global i32 0, align 4
@SPRN_PIR = common dso_local global i32 0, align 4
@_dtb_start = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid device tree blob\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Cannot find cpu node\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"timebase-frequency\00", align 1
@timebase_period_ns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @USERDATA_LEN, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %81, %1
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sub nsw i32 %22, 15
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %81

45:                                               ; preds = %35, %32
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 15
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = call i32 @strtoull(i8* %50, i8** %12, i32 16)
  store i32 %51, i32* @mac_addr, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %12, align 8
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i8*, i8** %12, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load i8*, i8** %2, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = ptrtoint i8* %65 to i32
  %67 = sub nsw i32 %61, %66
  store i32 %67, i32* %9, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  %77 = sub nsw i32 %73, %76
  %78 = add nsw i32 %77, 1
  %79 = call i32 @memmove(i8* %71, i8* %72, i32 %78)
  br label %84

80:                                               ; preds = %25
  br label %81

81:                                               ; preds = %80, %44
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %20

84:                                               ; preds = %59, %20
  %85 = load i8*, i8** %2, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @loader_info, i32 0, i32 0), align 8
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @loader_info, i32 0, i32 1), align 8
  %86 = call i32 (...) @ibm_akebono_detect_memsize()
  store i32 %86, i32* @ibm_akebono_memsize, align 4
  %87 = load i32, i32* @ibm_akebono_memsize, align 4
  %88 = ashr i32 %87, 32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i64 -1, i64* %3, align 8
  br label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @ibm_akebono_memsize, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %91, %90
  %95 = load i64, i64* %3, align 8
  %96 = load i64, i64* @_end, align 8
  %97 = sub i64 %95, %96
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* @_end, align 8
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @simple_alloc_init(i64 %98, i64 %99, i32 128, i32 64)
  %101 = load i32, i32* @ibm_akebono_fixups, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @platform_ops, i32 0, i32 1), align 4
  %102 = load i32, i32* @ibm44x_dbcr_reset, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @platform_ops, i32 0, i32 0), align 4
  %103 = load i32, i32* @SPRN_PIR, align 4
  %104 = call i32 @mfspr(i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @_dtb_start, align 4
  %106 = call i64 @fdt_check_header(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %94
  %111 = load i32, i32* @_dtb_start, align 4
  %112 = call i32 @fdt_node_offset_by_prop_value(i32 %111, i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i32, i32* @_dtb_start, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32* @fdt_getprop(i32 %118, i32 %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  store i32* %120, i32** %8, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 1000000000, %128
  store i32 %129, i32* @timebase_period_ns, align 4
  br label %130

130:                                              ; preds = %126, %123, %117
  %131 = load i32, i32* @_dtb_start, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @fdt_set_boot_cpuid_phys(i32 %131, i32 %132)
  %134 = load i32, i32* @_dtb_start, align 4
  %135 = call i32 @fdt_init(i32 %134)
  %136 = call i32 (...) @serial_console_init()
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @ibm_akebono_detect_memsize(...) #1

declare dso_local i32 @simple_alloc_init(i64, i64, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @fdt_check_header(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @fdt_node_offset_by_prop_value(i32, i32, i8*, i8*, i32) #1

declare dso_local i32* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i32 @fdt_set_boot_cpuid_phys(i32, i32) #1

declare dso_local i32 @fdt_init(i32) #1

declare dso_local i32 @serial_console_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
