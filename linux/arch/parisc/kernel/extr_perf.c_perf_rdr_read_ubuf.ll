; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_read_ubuf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_read_ubuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdr_tbl_ent = type { i64, i64 }

@perf_processor_interface = common dso_local global i64 0, align 8
@ONYX_INTF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @perf_rdr_read_ubuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_rdr_read_ubuf(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rdr_tbl_ent*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.rdr_tbl_ent* @perf_rdr_get_entry(i64 %12)
  store %struct.rdr_tbl_ent* %13, %struct.rdr_tbl_ent** %11, align 8
  %14 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %11, align 8
  %15 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

19:                                               ; preds = %2
  %20 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %11, align 8
  %21 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %27, %19
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %10, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 0, i32* %30, align 4
  br label %23

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = and i64 %32, 63
  store i64 %33, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 64, %36
  %38 = load i32, i32* %7, align 4
  %39 = trunc i64 %37 to i32
  %40 = shl i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %31
  %44 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %11, align 8
  %45 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %98, %43
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %10, align 8
  %50 = icmp ne i64 %48, 0
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = load i64, i64* @perf_processor_interface, align 8
  %53 = load i64, i64* @ONYX_INTF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @perf_rdr_shift_in_U(i64 %56, i64 %57)
  store i32 %58, i32* %6, align 4
  br label %63

59:                                               ; preds = %51
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @perf_rdr_shift_in_W(i64 %60, i64 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 64, %68
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %67, %70
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %66
  %80 = load i32, i32* %6, align 4
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  %83 = ashr i32 %80, %82
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %83, %84
  %86 = load i32*, i32** %5, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %79, %66
  br label %98

93:                                               ; preds = %63
  %94 = load i32, i32* %6, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %92
  br label %47

99:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %18
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.rdr_tbl_ent* @perf_rdr_get_entry(i64) #1

declare dso_local i32 @perf_rdr_shift_in_U(i64, i64) #1

declare dso_local i32 @perf_rdr_shift_in_W(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
