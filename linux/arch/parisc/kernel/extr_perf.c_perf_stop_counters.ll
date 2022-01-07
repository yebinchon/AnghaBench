; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_stop_counters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_stop_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RDR_WORDS = common dso_local global i32 0, align 4
@perf_processor_interface = common dso_local global i64 0, align 8
@ONYX_INTF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @perf_stop_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_stop_counters(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %8 = load i32, i32* @MAX_RDR_WORDS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 (...) @perf_intrigue_disable_perf_counters()
  %13 = load i64, i64* @perf_processor_interface, align 8
  %14 = load i64, i64* @ONYX_INTF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %95

16:                                               ; preds = %1
  %17 = call i32 @perf_rdr_read_ubuf(i32 16, i32* %11)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 -13, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %128

20:                                               ; preds = %16
  %21 = getelementptr inbounds i32, i32* %11, i64 21
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 22
  %24 = and i32 %23, -4194304
  store i32 %24, i32* %6, align 4
  %25 = getelementptr inbounds i32, i32* %11, i64 22
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 42
  %28 = and i32 %27, 4194303
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = getelementptr inbounds i32, i32* %11, i64 22
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 10
  %34 = and i32 %33, -2147483648
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %38, i64* %40, align 8
  %41 = getelementptr inbounds i32, i32* %11, i64 22
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 9
  store i32 %43, i32* %6, align 4
  %44 = getelementptr inbounds i32, i32* %11, i64 22
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 23
  %47 = and i32 %46, -2147483648
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %3, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds i32, i32* %11, i64 22
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 24
  %57 = and i32 %56, -16777216
  store i32 %57, i32* %6, align 4
  %58 = getelementptr inbounds i32, i32* %11, i64 23
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 40
  %61 = and i32 %60, 16777215
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = getelementptr inbounds i32, i32* %11, i64 23
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, -2147483648
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** %3, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  store i64 %71, i64* %73, align 8
  %74 = getelementptr inbounds i32, i32* %11, i64 23
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 7
  store i32 %76, i32* %6, align 4
  %77 = getelementptr inbounds i32, i32* %11, i64 23
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 25
  %80 = and i32 %79, -2147483648
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %3, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 3
  store i64 %84, i64* %86, align 8
  %87 = getelementptr inbounds i32, i32* %11, i64 21
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, -1024
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = getelementptr inbounds i32, i32* %11, i64 22
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds i32, i32* %11, i64 23
  store i32 0, i32* %93, align 4
  %94 = call i32 @perf_rdr_write(i32 16, i32* %11)
  br label %127

95:                                               ; preds = %1
  %96 = call i32 @perf_rdr_read_ubuf(i32 15, i32* %11)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 -13, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %128

99:                                               ; preds = %95
  %100 = call i32 @perf_rdr_clear(i32 15)
  %101 = getelementptr inbounds i32, i32* %11, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = ashr i32 %102, 32
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, 4294967295
  %106 = load i64*, i64** %3, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 %105, i64* %107, align 8
  %108 = getelementptr inbounds i32, i32* %11, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = sext i32 %109 to i64
  %111 = and i64 %110, 4294967295
  %112 = load i64*, i64** %3, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  store i64 %111, i64* %113, align 8
  %114 = getelementptr inbounds i32, i32* %11, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 32
  %117 = sext i32 %116 to i64
  %118 = and i64 %117, 4294967295
  %119 = load i64*, i64** %3, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 2
  store i64 %118, i64* %120, align 8
  %121 = getelementptr inbounds i32, i32* %11, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = and i64 %123, 4294967295
  %125 = load i64*, i64** %3, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 3
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %99, %20
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %98, %19
  %129 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @perf_intrigue_disable_perf_counters(...) #2

declare dso_local i32 @perf_rdr_read_ubuf(i32, i32*) #2

declare dso_local i32 @perf_rdr_write(i32, i32*) #2

declare dso_local i32 @perf_rdr_clear(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
