; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_soc.c_soc_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_soc.c_soc_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdline_mac = common dso_local global i64* null, align 8
@c6x_fuse_mac = common dso_local global i64* null, align 8
@c6x_num_cores = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_mac_addr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load i64*, i64** @cmdline_mac, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i64*, i64** @c6x_fuse_mac, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i64*, i64** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i64*, i64** %4, align 8
  %45 = load i64*, i64** @cmdline_mac, align 8
  %46 = call i32 @memcpy(i64* %44, i64* %45, i32 6)
  br label %62

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64*, i64** %4, align 8
  %55 = load i64*, i64** @c6x_fuse_mac, align 8
  %56 = call i32 @memcpy(i64* %54, i64* %55, i32 6)
  br label %60

57:                                               ; preds = %50
  %58 = load i64*, i64** %4, align 8
  %59 = call i32 @eth_random_addr(i64* %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @c6x_num_cores, align 4
  %65 = mul i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = load i64*, i64** %4, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 5
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  ret i32 1
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @eth_random_addr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
