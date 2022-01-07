; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_clflush_cache_range_opt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_clflush_cache_range_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @clflush_cache_range_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clflush_cache_range_opt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  store i64 %8, i64* %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i64, i64* %5, align 8
  %12 = sub i64 %11, 1
  %13 = xor i64 %12, -1
  %14 = and i64 %10, %13
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp uge i8* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %36

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %32, %24
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @clflushopt(i8* %30)
  br label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr i8, i8* %34, i64 %33
  store i8* %35, i8** %6, align 8
  br label %25

36:                                               ; preds = %23, %25
  ret void
}

declare dso_local i32 @clflushopt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
